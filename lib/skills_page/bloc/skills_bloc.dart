import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'skills_event.dart';
part 'skills_state.dart';

class SkillsBloc extends Bloc<SkillsEvent, SkillsState> {
  SkillsBloc() : super(SkillsState()) {
    on<SkillsPageDots>(
            (event, emit) => emit(state.exchangeWith(index: event.index)));
  }
}
