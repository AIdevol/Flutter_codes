// search_bar_event.dart
import 'package:equatable/equatable.dart';

abstract class SearchBarEvent extends Equatable {
  const SearchBarEvent();

  @override
  List<Object> get props => [];
}

class ToggleSearch extends SearchBarEvent {}

class UpdateSearchQuery extends SearchBarEvent {
  final String query;

  const UpdateSearchQuery(this.query);

  @override
  List<Object> get props => [query];
}