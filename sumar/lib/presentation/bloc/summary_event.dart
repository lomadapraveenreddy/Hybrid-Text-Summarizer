part of 'summary_bloc.dart';

@freezed
abstract class SummaryEvent with _$SummaryEvent {
  const factory SummaryEvent.getMyCoursesCurrentSemesterEvent() = _GetSummaryEvent;
}
