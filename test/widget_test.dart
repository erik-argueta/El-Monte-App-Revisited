import 'dart:io';

import 'package:el_monte/app.dart';
import 'package:el_monte/data/site_map.dart';
import 'package:el_monte/widgets/homescreen_grid_button.dart';
import 'package:el_monte/widgets/site_map_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('home grid button accepts logo, title, and description', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: HomeGridButton(
            logo: const Icon(Icons.place_rounded),
            title: 'Button title',
            description: 'Button description',
            onTap: () {},
          ),
        ),
      ),
    );

    expect(find.byIcon(Icons.place_rounded), findsOneWidget);
    expect(find.text('Button title'), findsOneWidget);
    expect(find.text('Button description'), findsOneWidget);
  });

  testWidgets('site map button accepts logo, title, and description', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SiteMapButton(
            logo: const Icon(Icons.account_balance_rounded),
            title: 'Button title',
            description: 'Button description',
            trailingIcon: Icons.chevron_right_rounded,
            onTap: () {},
          ),
        ),
      ),
    );

    expect(find.byIcon(Icons.account_balance_rounded), findsOneWidget);
    expect(find.text('Button title'), findsOneWidget);
    expect(find.text('Button description'), findsOneWidget);
  });

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

  testWidgets('government opens its editable dedicated page', (tester) async {
    await tester.binding.setSurfaceSize(const Size(430, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const MainApp());

    await tester.tap(find.text('Government Related'));
    await tester.pumpAndSettle();

    expect(find.text('GOVERNMENT'), findsOneWidget);
    expect(find.text('Agendas & Minutes'), findsOneWidget);
    expect(find.text('Boards & Commissions'), findsOneWidget);
    expect(find.text('City Council'), findsOneWidget);
    expect(find.text('Departments'), findsOneWidget);
    expect(find.text('Organization Chart'), findsOneWidget);
    expect(find.byType(SiteMapButton), findsNWidgets(5));

    await tester.tap(find.text('Boards & Commissions'));
    await tester.pumpAndSettle();

    expect(find.text('BOARDS & COMMISSIONS'), findsOneWidget);
    expect(
      find.text('Arts In Public Places Advisory Committee'),
      findsOneWidget,
    );
    expect(find.text('Community Services Commission'), findsOneWidget);
    expect(find.text('Zoning Review Committee'), findsOneWidget);
    expect(find.text('Planning Commission'), findsOneWidget);
    expect(find.text('Permit Committee'), findsOneWidget);
    expect(find.byType(SiteMapButton), findsNWidgets(5));

    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('City Council'));
    await tester.pumpAndSettle();

    expect(find.text('CITY COUNCIL'), findsOneWidget);
    expect(find.text('Jessica Ancona'), findsOneWidget);
    expect(find.text('Viviana Longoria'), findsOneWidget);
    expect(find.text('Marisol Cortez'), findsOneWidget);

    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Departments'));
    await tester.pumpAndSettle();

    expect(find.text('DEPARTMENTS'), findsOneWidget);
    expect(find.text("City Clerk's Office"), findsOneWidget);
    expect(find.text("City Manager's Office"), findsOneWidget);
    await tester.scrollUntilVisible(
      find.text('Water Department'),
      300,
      scrollable: find.byType(Scrollable).last,
    );
    expect(find.text('Water Department'), findsOneWidget);

    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();
  });

  testWidgets('how do I opens its editable subsection screens', (tester) async {
    await tester.binding.setSurfaceSize(const Size(430, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const MainApp());

    await tester.tap(find.text('How Do I...'));
    await tester.pumpAndSettle();

    expect(find.text('HOW DO I...'), findsOneWidget);
    expect(find.text('Apply For'), findsOneWidget);
    expect(find.text('Find'), findsOneWidget);
    expect(find.text('Pay'), findsOneWidget);
    expect(find.text('Submit'), findsOneWidget);
    expect(find.text('View'), findsOneWidget);

    await tester.tap(find.text('Apply For'));
    await tester.pumpAndSettle();
    expect(find.text('APPLY FOR'), findsOneWidget);
    expect(find.text('Alarm Permit Application (PDF)'), findsOneWidget);
    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Find'));
    await tester.pumpAndSettle();
    expect(find.text('FIND'), findsOneWidget);
    expect(find.text('Car Dealerships'), findsOneWidget);
    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Pay'));
    await tester.pumpAndSettle();
    expect(find.text('PAY'), findsOneWidget);
    expect(find.text('Administrative Citations'), findsOneWidget);
    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Submit'));
    await tester.pumpAndSettle();
    expect(find.text('SUBMIT'), findsOneWidget);
    expect(find.text('Building Inspection'), findsOneWidget);
    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('View'));
    await tester.pumpAndSettle();
    expect(find.text('VIEW'), findsOneWidget);
    expect(find.text('Agendas'), findsOneWidget);
    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();

    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();
  });

  testWidgets('for residents opens its editable dedicated page', (
    tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(430, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const MainApp());

    await tester.tap(find.text('For Residents'));
    await tester.pumpAndSettle();

    expect(find.text('RESIDENTS'), findsOneWidget);
    expect(find.text('About El Monte'), findsOneWidget);
    expect(find.text('Animal Control'), findsOneWidget);
    await tester.scrollUntilVisible(
      find.text('Social Services'),
      300,
      scrollable: find.byType(Scrollable).last,
    );
    expect(find.text('Social Services'), findsOneWidget);

    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();
  });

  testWidgets('business opens its editable dedicated page', (tester) async {
    await tester.binding.setSurfaceSize(const Size(430, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const MainApp());

    await tester.tap(find.text('Business Related'));
    await tester.pumpAndSettle();

    expect(find.text('BUSINESS'), findsOneWidget);
    expect(find.text('Alarm Program'), findsOneWidget);
    expect(find.text('Bid Opportunities'), findsOneWidget);
    await tester.scrollUntilVisible(
      find.text('Purchasing'),
      300,
      scrollable: find.byType(Scrollable).last,
    );
    expect(find.text('Purchasing'), findsOneWidget);

    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();
  });

  testWidgets('services opens its editable transportation screen', (
    tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(430, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const MainApp());

    await tester.tap(find.text('Services'));
    await tester.pumpAndSettle();
    expect(find.text('SERVICES'), findsOneWidget);
    expect(find.text('Alerts'), findsOneWidget);

    await tester.scrollUntilVisible(
      find.text('Transportation'),
      300,
      scrollable: find.byType(Scrollable).last,
    );
    await tester.tap(find.text('Transportation'));
    await tester.pumpAndSettle();

    expect(find.text('TRANSPORTATION'), findsOneWidget);
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
