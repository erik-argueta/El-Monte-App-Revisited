import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../widgets/homescreen_grid_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: GridView.count(
        crossAxisCount: 2,         // 2 columns
        mainAxisSpacing: 12,        // vertical gap between rows
        crossAxisSpacing: 12,       // horizontal gap between columns
        padding: const EdgeInsets.all(16),
        shrinkWrap: true,           // important: lets GridView size itself to its content
        children: [
          HomeGridButton(icon: Icons.menu_book, label: 'Resources', onTap: () => context.push('/resources')),
          HomeGridButton(icon: Icons.help_outline, label: 'How Do I...', onTap: () => context.push('/how-do-i')),
          HomeGridButton(icon: Icons.house, label: 'For Residents', onTap: () => context.push('/for-residents')),
          HomeGridButton(icon: Icons.business_center, label: 'Business Related', onTap: () => context.push('/business-related')),
          HomeGridButton(icon: Icons.account_balance, label: 'Government Related', onTap: () => context.push('/govt-related')),
          HomeGridButton(icon: Icons.construction, label: 'Services', onTap: () => context.push('/services')),
        ],
      ),
    );
  }
}



