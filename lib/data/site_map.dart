import 'package:flutter/services.dart';

class SiteMapNode {
  SiteMapNode({
    required this.id,
    required this.title,
    required this.url,
    List<SiteMapNode>? children,
  }) : children = children ?? [];

  final String id;
  final String title;
  final String? url;
  final List<SiteMapNode> children;

  bool get hasChildren => children.isNotEmpty;
  bool get opensInBrowser => !hasChildren && url != null;

  String get description {
    if (hasChildren) {
      final topicLabel = children.length == 1 ? 'topic' : 'topics';
      return 'Browse ${children.length} related $topicLabel for $title.';
    }
    return 'Open the official City of El Monte $title page in your browser.';
  }
}

class SiteMapParser {
  const SiteMapParser();

  static final _linkPattern = RegExp(
    r'^(\s*)-\s+\[([^\]]+)\](?:\(([^)]+)\))?\s*$',
  );

  List<SiteMapNode> parse(String markdown) {
    final roots = <SiteMapNode>[];
    final parents = <({int indent, SiteMapNode node})>[];
    final usedIds = <String>{};
    var generatedId = 0;

    for (final line in markdown.split('\n')) {
      final match = _linkPattern.firstMatch(line);
      if (match == null) continue;

      final indent = match.group(1)!.length;
      final title = match.group(2)!.trim();
      final url = match.group(3)?.trim();
      final sequence = generatedId++;
      final baseId = _idFor(url, title, sequence);
      var id = baseId;
      if (!usedIds.add(id)) {
        id = '$baseId-$sequence';
        usedIds.add(id);
      }
      final node = SiteMapNode(id: id, title: title, url: url);

      while (parents.isNotEmpty && parents.last.indent >= indent) {
        parents.removeLast();
      }

      if (parents.isEmpty) {
        roots.add(node);
      } else {
        parents.last.node.children.add(node);
      }
      parents.add((indent: indent, node: node));
    }

    return roots;
  }

  String _idFor(String? url, String title, int fallback) {
    final segments = url == null
        ? const <String>[]
        : Uri.parse(url).pathSegments;
    if (segments.isNotEmpty && segments.first.isNotEmpty) {
      return segments.first;
    }

    final slug = title
        .toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9]+'), '-')
        .replaceAll(RegExp(r'^-|-$'), '');
    return '$slug-$fallback';
  }
}

class SiteMapRepository {
  SiteMapRepository._();

  static final instance = SiteMapRepository._();
  static const assetPath = 'docs/site-maps/official-site-map.md';

  Future<List<SiteMapNode>>? _cachedRoots;

  Future<List<SiteMapNode>> loadRoots() {
    return _cachedRoots ??= rootBundle
        .loadString(assetPath)
        .then(const SiteMapParser().parse);
  }

  Future<List<SiteMapNode>> loadAll() async {
    final roots = await loadRoots();
    return _flatten(roots).toList(growable: false);
  }

  Future<SiteMapNode?> findById(String id) async {
    final nodes = await loadAll();
    for (final node in nodes) {
      if (node.id == id) return node;
    }
    return null;
  }

  Iterable<SiteMapNode> _flatten(Iterable<SiteMapNode> nodes) sync* {
    for (final node in nodes) {
      yield node;
      yield* _flatten(node.children);
    }
  }
}
