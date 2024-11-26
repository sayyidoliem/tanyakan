import 'package:equatable/equatable.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class GenerateContentResponse extends Equatable {
  const GenerateContentResponse(
    this.candidates,
    this.promptFeedback,
    this.usageMetadata,
  );

  final List<Candidate> candidates;
  final PromptFeedback? promptFeedback;
  final UsageMetadata? usageMetadata;

  @override
  List<Object?> get props => [candidates, promptFeedback, usageMetadata];
}
