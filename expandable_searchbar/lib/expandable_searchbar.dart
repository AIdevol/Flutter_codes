// expandable_search_bar.dart
import 'package:expandable_searchbar/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'search_bar_event.dart';
import 'search_bar_state.dart';

class ExpandableSearchBar extends StatelessWidget {
  final void Function(String) onSearch;
  final String hintText;
  final Color backgroundColor;
  final Color iconColor;
  final TextStyle textStyle;

  const ExpandableSearchBar({
    Key? key,
    required this.onSearch,
    this.hintText = 'Search...',
    this.backgroundColor = Colors.white,
    this.iconColor = Colors.black,
    this.textStyle = const TextStyle(color: Colors.black),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBarBloc(),
      child: _ExpandableSearchBarContent(
        onSearch: onSearch,
        hintText: hintText,
        backgroundColor: backgroundColor,
        iconColor: iconColor,
        textStyle: textStyle,
      ),
    );
  }
}

class _ExpandableSearchBarContent extends StatelessWidget {
  final void Function(String) onSearch;
  final String hintText;
  final Color backgroundColor;
  final Color iconColor;
  final TextStyle textStyle;

  const _ExpandableSearchBarContent({
    Key? key,
    required this.onSearch,
    required this.hintText,
    required this.backgroundColor,
    required this.iconColor,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBarBloc, SearchBarState>(
      builder: (context, state) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: state.isExpanded ? 300 : 50,
          height: 50,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: state.isExpanded
                    ? Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: TextField(
                          style: textStyle,
                          decoration: InputDecoration(
                            hintText: hintText,
                            hintStyle: textStyle.copyWith(color: textStyle.color!.withOpacity(0.5)),
                            border: InputBorder.none,
                          ),
                          onChanged: (value) {
                            context.read<SearchBarBloc>().add(UpdateSearchQuery(value));
                            onSearch(value);
                          },
                        ),
                      )
                    : const SizedBox(),
              ),
              IconButton(
                icon: Icon(
                  state.isExpanded ? Icons.close : Icons.search,
                  color: iconColor,
                ),
                onPressed: () {
                  context.read<SearchBarBloc>().add(ToggleSearch());
                },
              ),
            ],
          ),
        );
      },
    );
  }
}