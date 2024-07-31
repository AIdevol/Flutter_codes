// search_bar_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'search_bar_event.dart';
import 'search_bar_state.dart';

class SearchBarBloc extends Bloc<SearchBarEvent, SearchBarState> {
  SearchBarBloc() : super(SearchBarState.initial()) {
    on<ToggleSearch>(_onToggleSearch);
    on<UpdateSearchQuery>(_onUpdateSearchQuery);
  }

  void _onToggleSearch(ToggleSearch event, Emitter<SearchBarState> emit) {
    emit(state.copyWith(isExpanded: !state.isExpanded));
  }

  void _onUpdateSearchQuery(UpdateSearchQuery event, Emitter<SearchBarState> emit) {
    emit(state.copyWith(searchQuery: event.query));
  }
}