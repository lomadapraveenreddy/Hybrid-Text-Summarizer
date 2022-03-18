import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sumar/presentation/usecases/get_summary_usecase.dart';
import '../../core/consts/algo.dart';

part 'summary_event.dart';
part 'summary_state.dart';
part 'summary_bloc.freezed.dart';

class SummaryBloc extends Bloc<SummaryEvent, SummaryState> {
  final GetSummaryUsecase getSummaryUsecase;
  SummaryBloc({required this.getSummaryUsecase})
      : super(const SummaryState.initial()) {
    // ignore: void_checks
    on<SummaryEvent>((event, emit) async* {
      yield* event.map(getSummary: (e) async* {
        yield const SummaryState.loading();
        final failureOrSummary = await getSummaryUsecase(
            GetSummaryParams(text: e.text, algo: e.algo, size: e.size));
        yield* failureOrSummary.fold((l) async* {
          yield SummaryState.error(l.errorMessage);
        }, (r) async* {
          yield SummaryState.summaryFetched(r);
        });
      });
    });
  }
}
