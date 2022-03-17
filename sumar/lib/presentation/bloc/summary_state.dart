part of 'summary_bloc.dart';

@freezed
abstract class SummaryState with _$SummaryState{
  const factory SummaryState.initial() = _Initial;
  const factory SummaryState.getMyCoursesCurrentSemesterEvent() =
      _FetchedSummaryState;
}
