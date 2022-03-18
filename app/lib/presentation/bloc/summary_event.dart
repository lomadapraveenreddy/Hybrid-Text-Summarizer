part of 'summary_bloc.dart';

@freezed
abstract class SummaryEvent with _$SummaryEvent {
  const factory SummaryEvent.getSummary({required String text,required  SummarizerAlgo algo,required double size}) =
      _GetSummaryEvent;
}
