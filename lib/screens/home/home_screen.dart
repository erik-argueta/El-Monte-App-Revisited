import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/city_links.dart';
import '../../data/site_map.dart';
import '../../utils/external_link.dart';
import '../../widgets/homescreen_grid_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _HomeHeader(
            onSearch: () => _showCitySearch(context),
            onAlerts: () => openCityLink(context, CityLinks.alerts.url),
          ),
          Expanded(
            child: DecoratedBox(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFF3FAF9), Color(0xFFE5F3F2)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 540),
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1.06,
                    padding: const EdgeInsets.fromLTRB(14, 12, 14, 14),
                    children: [
                      HomeGridButton(
                        icon: Icons.menu_book_rounded,
                        label: 'Resources',
                        onTap: () => context.push('/directory'),
                      ),
                      HomeGridButton(
                        icon: CityLinks.howDoI.icon,
                        label: CityLinks.howDoI.label,
                        onTap: () => context.push('/directory/9'),
                      ),
                      HomeGridButton(
                        icon: CityLinks.residents.icon,
                        label: CityLinks.residents.label,
                        iconColor: const Color(0xFF2D6871),
                        onTap: () => context.push('/directory/31'),
                      ),
                      HomeGridButton(
                        icon: CityLinks.business.icon,
                        label: CityLinks.business.label,
                        onTap: () => context.push('/directory/35'),
                      ),
                      HomeGridButton(
                        icon: CityLinks.government.icon,
                        label: CityLinks.government.label,
                        onTap: () => context.push('/directory/27'),
                      ),
                      HomeGridButton(
                        icon: CityLinks.services.icon,
                        label: CityLinks.services.label,
                        iconColor: const Color(0xFF2B6871),
                        onTap: () => context.push('/directory/101'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showCitySearch(BuildContext context) async {
    final selected = await showSearch<SiteMapNode?>(
      context: context,
      delegate: _CitySearchDelegate(),
    );
    if (selected == null || !context.mounted) return;

    if (selected.hasChildren) {
      context.push('/directory/${selected.id}');
      return;
    }

    final url = selected.url;
    if (url != null) {
      openCityLink(context, url);
    }
  }
}

class _HomeHeader extends StatelessWidget {
  const _HomeHeader({required this.onSearch, required this.onAlerts});

  final VoidCallback onSearch;
  final VoidCallback onAlerts;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF24727D), Color(0xFF0F4853)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 540),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 14, 12, 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Material(
                          color: const Color(0xFFF4F5F5),
                          borderRadius: BorderRadius.circular(9),
                          child: InkWell(
                            onTap: onSearch,
                            borderRadius: BorderRadius.circular(9),
                            child: const SizedBox(
                              height: 42,
                              child: Row(
                                children: [
                                  SizedBox(width: 12),
                                  Icon(
                                    Icons.search_rounded,
                                    size: 21,
                                    color: Color(0xFF7D8587),
                                  ),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      'Search city resources',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Color(0xFF92999B),
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Stack(
                        children: [
                          IconButton(
                            tooltip: 'Alerts',
                            onPressed: onAlerts,
                            icon: const Icon(
                              Icons.notifications_rounded,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                          const Positioned(
                            right: 8,
                            top: 7,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Color(0xFFD65E51),
                                shape: BoxShape.circle,
                              ),
                              child: SizedBox(width: 8, height: 8),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Row(
                    children: [
                      _CityMark(),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'CITY CONNECT',
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w800,
                            letterSpacing: -0.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _CityMark extends StatelessWidget {
  const _CityMark();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 62,
      height: 62,
      decoration: BoxDecoration(
        color: const Color(0xFFF4F1DE),
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFFC8A958), width: 3),
        boxShadow: [
          BoxShadow(color: Colors.black.withValues(alpha: 0.18), blurRadius: 4),
        ],
      ),
      child: const Icon(
        Icons.location_city_rounded,
        color: Color(0xFF1B6570),
        size: 34,
      ),
    );
  }
}

class _CitySearchDelegate extends SearchDelegate<SiteMapNode?> {
  _CitySearchDelegate() : _nodes = SiteMapRepository.instance.loadAll();

  final Future<List<SiteMapNode>> _nodes;

  @override
  String get searchFieldLabel => 'Search city resources';

  @override
  ThemeData appBarTheme(BuildContext context) {
    final theme = Theme.of(context);
    return theme.copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF155C66),
        foregroundColor: Colors.white,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(color: Color(0xFFD9E5E6)),
        border: InputBorder.none,
      ),
      textTheme: theme.textTheme.copyWith(
        titleLarge: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          tooltip: 'Clear',
          onPressed: () => query = '',
          icon: const Icon(Icons.close_rounded),
        ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      onPressed: () => close(context, null),
      icon: const Icon(Icons.arrow_back_ios_new_rounded),
    );
  }

  @override
  Widget buildResults(BuildContext context) => _buildMatches(context);

  @override
  Widget buildSuggestions(BuildContext context) => _buildMatches(context);

  Widget _buildMatches(BuildContext context) {
    return FutureBuilder<List<SiteMapNode>>(
      future: _nodes,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        final normalizedQuery = query.trim().toLowerCase();
        final matches = snapshot.data!
            .where(
              (node) =>
                  normalizedQuery.isEmpty ||
                  node.title.toLowerCase().contains(normalizedQuery),
            )
            .toList();

        if (matches.isEmpty) {
          return const Center(child: Text('No matching city resources found.'));
        }

        return ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 8),
          itemCount: matches.length,
          separatorBuilder: (_, _) => const Divider(height: 1),
          itemBuilder: (context, index) {
            final node = matches[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color(0xFFE3F0EF),
                foregroundColor: const Color(0xFF246872),
                child: Icon(
                  node.hasChildren
                      ? Icons.folder_rounded
                      : Icons.description_rounded,
                ),
              ),
              title: Text(
                node.title,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                node.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Icon(
                node.hasChildren
                    ? Icons.chevron_right_rounded
                    : Icons.open_in_new_rounded,
                size: 22,
              ),
              onTap: () => close(context, node),
            );
          },
        );
      },
    );
  }
}
