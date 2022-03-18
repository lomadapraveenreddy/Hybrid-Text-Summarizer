class AppError {
  String errorMessage;
  AppError({
    required this.errorMessage,
  });
  @override
  String toString() {
    return errorMessage;
  }
}
