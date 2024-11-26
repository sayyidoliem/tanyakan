class GeminiState {
  final String? response;
  final bool isLoading;

  GeminiState({this.response, this.isLoading = false});

  GeminiState copyWith({
    String? response,
    bool? isLoading,
  }) {
    return GeminiState(
      response: response ?? this.response,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
