part of 'skills_bloc.dart';

class SkillsState extends Equatable {
  final int index;

  const SkillsState({this.index = 0});

  SkillsState exchangeWith({required int index}) {
    return SkillsState(
      index: index ?? this.index,
    );
  }

  @override
  List<Object?> get props => [index];
}
