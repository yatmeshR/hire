part of 'skills_bloc.dart';

abstract class SkillsEvent extends Equatable {
  const SkillsEvent();
}

class SkillsPageDots extends SkillsEvent{
  final int index;

  SkillsPageDots(this.index);

  @override
  List<Object?> get props => [index];
}

