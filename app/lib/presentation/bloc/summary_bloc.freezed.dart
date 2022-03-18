// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'summary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SummaryEventTearOff {
  const _$SummaryEventTearOff();

  _GetSummaryEvent getSummary(
      {required String text,
      required SummarizerAlgo algo,
      required double size}) {
    return _GetSummaryEvent(
      text: text,
      algo: algo,
      size: size,
    );
  }
}

/// @nodoc
const $SummaryEvent = _$SummaryEventTearOff();

/// @nodoc
mixin _$SummaryEvent {
  String get text => throw _privateConstructorUsedError;
  SummarizerAlgo get algo => throw _privateConstructorUsedError;
  double get size => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, SummarizerAlgo algo, double size)
        getSummary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, SummarizerAlgo algo, double size)? getSummary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, SummarizerAlgo algo, double size)? getSummary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSummaryEvent value) getSummary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetSummaryEvent value)? getSummary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSummaryEvent value)? getSummary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SummaryEventCopyWith<SummaryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryEventCopyWith<$Res> {
  factory $SummaryEventCopyWith(
          SummaryEvent value, $Res Function(SummaryEvent) then) =
      _$SummaryEventCopyWithImpl<$Res>;
  $Res call({String text, SummarizerAlgo algo, double size});
}

/// @nodoc
class _$SummaryEventCopyWithImpl<$Res> implements $SummaryEventCopyWith<$Res> {
  _$SummaryEventCopyWithImpl(this._value, this._then);

  final SummaryEvent _value;
  // ignore: unused_field
  final $Res Function(SummaryEvent) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? algo = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      algo: algo == freezed
          ? _value.algo
          : algo // ignore: cast_nullable_to_non_nullable
              as SummarizerAlgo,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$GetSummaryEventCopyWith<$Res>
    implements $SummaryEventCopyWith<$Res> {
  factory _$GetSummaryEventCopyWith(
          _GetSummaryEvent value, $Res Function(_GetSummaryEvent) then) =
      __$GetSummaryEventCopyWithImpl<$Res>;
  @override
  $Res call({String text, SummarizerAlgo algo, double size});
}

/// @nodoc
class __$GetSummaryEventCopyWithImpl<$Res>
    extends _$SummaryEventCopyWithImpl<$Res>
    implements _$GetSummaryEventCopyWith<$Res> {
  __$GetSummaryEventCopyWithImpl(
      _GetSummaryEvent _value, $Res Function(_GetSummaryEvent) _then)
      : super(_value, (v) => _then(v as _GetSummaryEvent));

  @override
  _GetSummaryEvent get _value => super._value as _GetSummaryEvent;

  @override
  $Res call({
    Object? text = freezed,
    Object? algo = freezed,
    Object? size = freezed,
  }) {
    return _then(_GetSummaryEvent(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      algo: algo == freezed
          ? _value.algo
          : algo // ignore: cast_nullable_to_non_nullable
              as SummarizerAlgo,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_GetSummaryEvent implements _GetSummaryEvent {
  const _$_GetSummaryEvent(
      {required this.text, required this.algo, required this.size});

  @override
  final String text;
  @override
  final SummarizerAlgo algo;
  @override
  final double size;

  @override
  String toString() {
    return 'SummaryEvent.getSummary(text: $text, algo: $algo, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetSummaryEvent &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.algo, algo) &&
            const DeepCollectionEquality().equals(other.size, size));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(algo),
      const DeepCollectionEquality().hash(size));

  @JsonKey(ignore: true)
  @override
  _$GetSummaryEventCopyWith<_GetSummaryEvent> get copyWith =>
      __$GetSummaryEventCopyWithImpl<_GetSummaryEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, SummarizerAlgo algo, double size)
        getSummary,
  }) {
    return getSummary(text, algo, size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, SummarizerAlgo algo, double size)? getSummary,
  }) {
    return getSummary?.call(text, algo, size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, SummarizerAlgo algo, double size)? getSummary,
    required TResult orElse(),
  }) {
    if (getSummary != null) {
      return getSummary(text, algo, size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSummaryEvent value) getSummary,
  }) {
    return getSummary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetSummaryEvent value)? getSummary,
  }) {
    return getSummary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSummaryEvent value)? getSummary,
    required TResult orElse(),
  }) {
    if (getSummary != null) {
      return getSummary(this);
    }
    return orElse();
  }
}

abstract class _GetSummaryEvent implements SummaryEvent {
  const factory _GetSummaryEvent(
      {required String text,
      required SummarizerAlgo algo,
      required double size}) = _$_GetSummaryEvent;

  @override
  String get text;
  @override
  SummarizerAlgo get algo;
  @override
  double get size;
  @override
  @JsonKey(ignore: true)
  _$GetSummaryEventCopyWith<_GetSummaryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SummaryStateTearOff {
  const _$SummaryStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _FetchedSummaryState summaryFetched(String summary) {
    return _FetchedSummaryState(
      summary,
    );
  }

  _Error error(dynamic errorMessage) {
    return _Error(
      errorMessage,
    );
  }
}

/// @nodoc
const $SummaryState = _$SummaryStateTearOff();

/// @nodoc
mixin _$SummaryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String summary) summaryFetched,
    required TResult Function(dynamic errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String summary)? summaryFetched,
    TResult Function(dynamic errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String summary)? summaryFetched,
    TResult Function(dynamic errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchedSummaryState value) summaryFetched,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchedSummaryState value)? summaryFetched,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchedSummaryState value)? summaryFetched,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryStateCopyWith<$Res> {
  factory $SummaryStateCopyWith(
          SummaryState value, $Res Function(SummaryState) then) =
      _$SummaryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SummaryStateCopyWithImpl<$Res> implements $SummaryStateCopyWith<$Res> {
  _$SummaryStateCopyWithImpl(this._value, this._then);

  final SummaryState _value;
  // ignore: unused_field
  final $Res Function(SummaryState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SummaryStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SummaryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String summary) summaryFetched,
    required TResult Function(dynamic errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String summary)? summaryFetched,
    TResult Function(dynamic errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String summary)? summaryFetched,
    TResult Function(dynamic errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchedSummaryState value) summaryFetched,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchedSummaryState value)? summaryFetched,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchedSummaryState value)? summaryFetched,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SummaryState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$SummaryStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'SummaryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String summary) summaryFetched,
    required TResult Function(dynamic errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String summary)? summaryFetched,
    TResult Function(dynamic errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String summary)? summaryFetched,
    TResult Function(dynamic errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchedSummaryState value) summaryFetched,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchedSummaryState value)? summaryFetched,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchedSummaryState value)? summaryFetched,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SummaryState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$FetchedSummaryStateCopyWith<$Res> {
  factory _$FetchedSummaryStateCopyWith(_FetchedSummaryState value,
          $Res Function(_FetchedSummaryState) then) =
      __$FetchedSummaryStateCopyWithImpl<$Res>;
  $Res call({String summary});
}

/// @nodoc
class __$FetchedSummaryStateCopyWithImpl<$Res>
    extends _$SummaryStateCopyWithImpl<$Res>
    implements _$FetchedSummaryStateCopyWith<$Res> {
  __$FetchedSummaryStateCopyWithImpl(
      _FetchedSummaryState _value, $Res Function(_FetchedSummaryState) _then)
      : super(_value, (v) => _then(v as _FetchedSummaryState));

  @override
  _FetchedSummaryState get _value => super._value as _FetchedSummaryState;

  @override
  $Res call({
    Object? summary = freezed,
  }) {
    return _then(_FetchedSummaryState(
      summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchedSummaryState implements _FetchedSummaryState {
  const _$_FetchedSummaryState(this.summary);

  @override
  final String summary;

  @override
  String toString() {
    return 'SummaryState.summaryFetched(summary: $summary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchedSummaryState &&
            const DeepCollectionEquality().equals(other.summary, summary));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(summary));

  @JsonKey(ignore: true)
  @override
  _$FetchedSummaryStateCopyWith<_FetchedSummaryState> get copyWith =>
      __$FetchedSummaryStateCopyWithImpl<_FetchedSummaryState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String summary) summaryFetched,
    required TResult Function(dynamic errorMessage) error,
  }) {
    return summaryFetched(summary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String summary)? summaryFetched,
    TResult Function(dynamic errorMessage)? error,
  }) {
    return summaryFetched?.call(summary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String summary)? summaryFetched,
    TResult Function(dynamic errorMessage)? error,
    required TResult orElse(),
  }) {
    if (summaryFetched != null) {
      return summaryFetched(summary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchedSummaryState value) summaryFetched,
    required TResult Function(_Error value) error,
  }) {
    return summaryFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchedSummaryState value)? summaryFetched,
    TResult Function(_Error value)? error,
  }) {
    return summaryFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchedSummaryState value)? summaryFetched,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (summaryFetched != null) {
      return summaryFetched(this);
    }
    return orElse();
  }
}

abstract class _FetchedSummaryState implements SummaryState {
  const factory _FetchedSummaryState(String summary) = _$_FetchedSummaryState;

  String get summary;
  @JsonKey(ignore: true)
  _$FetchedSummaryStateCopyWith<_FetchedSummaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({dynamic errorMessage});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$SummaryStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_Error(
      errorMessage == freezed ? _value.errorMessage : errorMessage,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.errorMessage);

  @override
  final dynamic errorMessage;

  @override
  String toString() {
    return 'SummaryState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String summary) summaryFetched,
    required TResult Function(dynamic errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String summary)? summaryFetched,
    TResult Function(dynamic errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String summary)? summaryFetched,
    TResult Function(dynamic errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchedSummaryState value) summaryFetched,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchedSummaryState value)? summaryFetched,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchedSummaryState value)? summaryFetched,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SummaryState {
  const factory _Error(dynamic errorMessage) = _$_Error;

  dynamic get errorMessage;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
