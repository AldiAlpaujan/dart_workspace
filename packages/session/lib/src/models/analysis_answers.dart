import 'package:hive/hive.dart';
import 'package:equatable/equatable.dart';

part 'analysis_answers.g.dart';

@HiveType(typeId: 2)
class AnalysisAnswer extends Equatable {
  @HiveField(0)
  final int? questionId;
  @HiveField(1)
  final String? answer;

  AnalysisAnswer({this.questionId, this.answer});

  Map<String, dynamic> toJson() => {
    'question_id': questionId,
    'answer': answer,
  };

  @override
  List<Object?> get props => [questionId, answer];
}
