// search_bar_state.dart
import 'package:equatable/equatable.dart';

class SearchBarState extends Equatable {
  final bool isExpanded;
  final String searchQuery;

  const SearchBarState({
    required this.isExpanded,
    required this.searchQuery,
  });

  factory SearchBarState.initial() {
    return const SearchBarState(isExpanded: false, searchQuery: '');
  }

  SearchBarState copyWith({
    bool? isExpanded,
    String? searchQuery,
  }) {
    return SearchBarState(
      isExpanded: isExpanded ?? this.isExpanded,
      searchQuery: searchQuery ?? this.searchQuery,
    );
  }

  @override
  List<Object> get props => [isExpanded, searchQuery];
}