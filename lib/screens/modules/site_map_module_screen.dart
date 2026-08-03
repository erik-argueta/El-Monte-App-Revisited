import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/site_map.dart';
import '../../utils/external_link.dart';
import '../../widgets/city_page_header.dart';
import '../../widgets/site_map_button.dart';

class SiteMapModulePage extends StatefulWidget {
  const SiteMapModulePage({required this.nodeId, super.key});

  final String nodeId;

  @override
  State<SiteMapModulePage> createState() => _SiteMapModulePageState();
}

class _SiteMapModulePageState extends State<SiteMapModulePage> {
  late Future<_ModuleContent> _content;

  @override
  void initState() {
    super.initState();
    _content = _loadContent();
  }

  @override
  void didUpdateWidget(covariant SiteMapModulePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.nodeId != widget.nodeId) {
      _content = _loadContent();
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<_ModuleContent>(
      future: _content,
      builder: (context, snapshot) {
        final content = snapshot.data;
        final title = content?.title ?? 'City Resources';

        return Scaffold(
          body: Column(
            children: [
              CityPageHeader(title: title),
              Expanded(
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFF3FAF9), Color(0xFFE3F2F1)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: _buildBody(context, snapshot),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<_ModuleContent> _loadContent() async {
    final node = await SiteMapRepository.instance.findById(widget.nodeId);
    if (node == null) {
      throw StateError('Site-map module "${widget.nodeId}" was not found.');
    }

    return _ModuleContent(
      title: node.title,
      introduction: node.hasChildren
          ? 'Choose a ${node.title} topic to continue.'
          : node.description,
      nodes: node.hasChildren ? node.children : [node],
    );
  }

  Widget _buildBody(
    BuildContext context,
    AsyncSnapshot<_ModuleContent> snapshot,
  ) {
    if (snapshot.connectionState != ConnectionState.done) {
      return const Center(
        child: CircularProgressIndicator(color: Color(0xFF155C66)),
      );
    }

    if (snapshot.hasError || snapshot.data == null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.error_outline_rounded,
                color: Color(0xFF155C66),
                size: 42,
              ),
              const SizedBox(height: 12),
              const Text(
                'This city module could not be loaded.',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: () => context.go('/'),
                child: const Text('Return Home'),
              ),
            ],
          ),
        ),
      );
    }

    final content = snapshot.data!;
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 680),
        child: ListView.separated(
          padding: const EdgeInsets.fromLTRB(14, 16, 14, 24),
          itemCount: content.nodes.length + 1,
          separatorBuilder: (_, index) =>
              SizedBox(height: index == 0 ? 14 : 10),
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: Text(
                  content.introduction,
                  style: const TextStyle(
                    color: Color(0xFF415054),
                    fontSize: 14,
                    height: 1.35,
                  ),
                ),
              );
            }

            final node = content.nodes[index - 1];
            return SiteMapButton(
              key: ValueKey('site-map-${node.id}'),
              logo: Icon(_iconFor(node.title)),
              title: node.title,
              description: node.description,
              trailingIcon: node.hasChildren
                  ? Icons.chevron_right_rounded
                  : Icons.open_in_new_rounded,
              onTap: () => _openNode(context, node),
            );
          },
        ),
      ),
    );
  }

  void _openNode(BuildContext context, SiteMapNode node) {
    if (node.hasChildren) {
      context.push('/directory/${node.id}');
      return;
    }

    final url = node.url;
    if (url != null) {
      openCityLink(context, url);
    }
  }

  IconData _iconFor(String title) {
    final normalized = title.toLowerCase();
    if (normalized.contains('housing') ||
        normalized.contains('shelter') ||
        normalized.contains('home')) {
      return Icons.home_work_rounded;
    }
    if (normalized.contains('transport') ||
        normalized.contains('shuttle') ||
        normalized.contains('trolley')) {
      return Icons.directions_bus_rounded;
    }
    if (normalized.contains('business') || normalized.contains('economic')) {
      return Icons.business_center_rounded;
    }
    if (normalized.contains('council') ||
        normalized.contains('government') ||
        normalized.contains('commission')) {
      return Icons.account_balance_rounded;
    }
    if (normalized.contains('park') ||
        normalized.contains('recreation') ||
        normalized.contains('aquatic')) {
      return Icons.park_rounded;
    }
    if (normalized.contains('police') ||
        normalized.contains('emergency') ||
        normalized.contains('fire')) {
      return Icons.health_and_safety_rounded;
    }
    if (normalized.contains('pay') ||
        normalized.contains('finance') ||
        normalized.contains('grant')) {
      return Icons.payments_rounded;
    }
    if (normalized.contains('calendar') ||
        normalized.contains('event') ||
        normalized.contains('agenda')) {
      return Icons.calendar_month_rounded;
    }
    if (normalized.contains('water')) return Icons.water_drop_rounded;
    if (normalized.contains('animal')) return Icons.pets_rounded;
    if (normalized.contains('service')) return Icons.handyman_rounded;
    return Icons.description_rounded;
  }
}

class _ModuleContent {
  const _ModuleContent({
    required this.title,
    required this.introduction,
    required this.nodes,
  });

  final String title;
  final String introduction;
  final List<SiteMapNode> nodes;
}
