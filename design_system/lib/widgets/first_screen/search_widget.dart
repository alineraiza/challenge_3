import 'package:design_system/theme/theme_extension/custom_theme_colors.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<CustomThemeColors>()!;
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        showSearch(
          context: context,
          delegate: CustumSearchDelegate(),
        );
      },
      child: Container(
        height: size.width * 0.776,
        width: size.width * 0.130,
        color: themeColors.outline,
        child: Row(
          children: const [
            Icon(Icons.search),
            Text('Search'),
          ],
        ),
      ),
    );
  }
}

// TODO: Testar e terminar de construir a busca;
class CustumSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'John Tornton',
    'Amanda Buyns',
    'Russel Hue',
    "John O'Brian",
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {}

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
}
