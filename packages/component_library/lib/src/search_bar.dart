import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    this.controller,
    this.onChanged,
    Key? key,
  }) : super(key: key);

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = ComponentLibraryLocalizations.of(context);
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: const Icon(
          Icons.search,
        ),
        hintText: l10n.searchBarHintText,
        labelText: l10n.searchBarLabelText,
      ),
      onChanged: onChanged,
    );
  }
}
