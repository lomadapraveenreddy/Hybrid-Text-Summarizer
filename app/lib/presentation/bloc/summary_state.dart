part of 'summary_bloc.dart';

@freezed
abstract class SummaryState with _$SummaryState {
  const factory SummaryState.initial() = _Initial;
  const factory SummaryState.loading() = _Loading;
  const factory SummaryState.summaryFetched(String summary) =
      _FetchedSummaryState;
  const factory SummaryState.error(errorMessage) = _Error;
}
