// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_answers.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AnalysisAnswerAdapter extends TypeAdapter<AnalysisAnswer> {
  @override
  final int typeId = 2;

  @override
  AnalysisAnswer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AnalysisAnswer(
      questionId: fields[0] as int?,
      answer: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AnalysisAnswer obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.questionId)
      ..writeByte(1)
      ..write(obj.answer);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnalysisAnswerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
