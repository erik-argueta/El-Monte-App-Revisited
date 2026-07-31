import 'dart:io';

import 'package:el_monte/app.dart';
import 'package:el_monte/data/site_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('home displays the City Connect navigation', (tester) async {
    await tester.binding.setSurfaceSize(const Size(430, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const MainApp());

    expect(find.byKey(const ValueKey('el-monte-seal')), findsOneWidget);
    expect(find.text('CITY CONNECT'), findsOneWidget);
    expect(find.text('Community Events'), findsOneWidget);
    expect(find.text('How Do I...'), findsOneWidget);
    expect(find.text('For Residents'), findsOneWidget);
    expect(find.text('Business Related'), findsOneWidget);
    expect(find.text('Government Related'), findsOneWidget);
    expect(find.text('Services'), findsOneWidget);
    expect(find.text('Report'), findsOneWidget);
  });

  testWidgets('community events opens its dedicated page', (tester) async {
    await tester.binding.setSurfaceSize(const Size(430, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const MainApp());

    await tester.tap(find.text('Community Events'));
    await tester.pumpAndSettle();

    expect(find.text('COMMUNITY EVENTS'), findsOneWidget);
    expect(find.text('Follow Us for Updates'), findsOneWidget);
    expect(find.text('Instagram'), findsOneWidget);
    expect(find.text('Facebook'), findsOneWidget);
    expect(
      find.byKey(const ValueKey('community-events-instagram')),
      findsOneWidget,
    );
    expect(
      find.byKey(const ValueKey('community-events-facebook')),
      findsOneWidget,
    );

    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();
  });

  testWidgets('site-map modules navigate to a browser leaf', (tester) async {
    await tester.binding.setSurfaceSize(const Size(430, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const MainApp());

    await tester.tap(find.text('Services'));
    await tester.pumpAndSettle();
    expect(find.text('Alerts'), findsOneWidget);

    await tester.scrollUntilVisible(
      find.text('Transportation'),
      300,
      scrollable: find.byType(Scrollable).last,
    );
    await tester.tap(find.text('Transportation'));
    await tester.pumpAndSettle();

    expect(find.text('Shuttles'), findsOneWidget);
    expect(find.byKey(const ValueKey('site-map-399')), findsOneWidget);
    expect(
      find.text(
        'Open the official City of El Monte Shuttles page in your browser.',
      ),
      findsOneWidget,
    );
  });

  test('official site map parses all modules and hierarchy', () async {
    final markdown = await File(
      'docs/site-maps/official-site-map.md',
    ).readAsString();
    final roots = const SiteMapParser().parse(markdown);
    final nodes = <SiteMapNode>[];

    void collect(Iterable<SiteMapNode> items) {
      for (final item in items) {
        nodes.add(item);
        collect(item.children);
      }
    }

    collect(roots);
    expect(nodes, hasLength(402));
    expect(nodes.map((node) => node.id).toSet(), hasLength(402));

    final services = nodes.singleWhere((node) => node.id == '101');
    final transportation = nodes.singleWhere((node) => node.id == '398');
    final shuttles = nodes.singleWhere((node) => node.id == '399');

    expect(services.children, contains(transportation));
    expect(transportation.children, contains(shuttles));
    expect(shuttles.hasChildren, isFalse);
    expect(shuttles.url, 'https://www.ci.el-monte.ca.us/399/Shuttles');
  });
}
