// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_text_gemini_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchChatTextGeminiControllerHash() =>
    r'd0cdabd863ccb3ebcce00e53373a7d91aea547b3';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [fetchChatTextGeminiController].
@ProviderFor(fetchChatTextGeminiController)
const fetchChatTextGeminiControllerProvider =
    FetchChatTextGeminiControllerFamily();

/// See also [fetchChatTextGeminiController].
class FetchChatTextGeminiControllerFamily
    extends Family<AsyncValue<GenerateContentResponse>> {
  /// See also [fetchChatTextGeminiController].
  const FetchChatTextGeminiControllerFamily();

  /// See also [fetchChatTextGeminiController].
  FetchChatTextGeminiControllerProvider call(
    String prompt,
  ) {
    return FetchChatTextGeminiControllerProvider(
      prompt,
    );
  }

  @override
  FetchChatTextGeminiControllerProvider getProviderOverride(
    covariant FetchChatTextGeminiControllerProvider provider,
  ) {
    return call(
      provider.prompt,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchChatTextGeminiControllerProvider';
}

/// See also [fetchChatTextGeminiController].
class FetchChatTextGeminiControllerProvider
    extends AutoDisposeFutureProvider<GenerateContentResponse> {
  /// See also [fetchChatTextGeminiController].
  FetchChatTextGeminiControllerProvider(
    String prompt,
  ) : this._internal(
          (ref) => fetchChatTextGeminiController(
            ref as FetchChatTextGeminiControllerRef,
            prompt,
          ),
          from: fetchChatTextGeminiControllerProvider,
          name: r'fetchChatTextGeminiControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchChatTextGeminiControllerHash,
          dependencies: FetchChatTextGeminiControllerFamily._dependencies,
          allTransitiveDependencies:
              FetchChatTextGeminiControllerFamily._allTransitiveDependencies,
          prompt: prompt,
        );

  FetchChatTextGeminiControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.prompt,
  }) : super.internal();

  final String prompt;

  @override
  Override overrideWith(
    FutureOr<GenerateContentResponse> Function(
            FetchChatTextGeminiControllerRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchChatTextGeminiControllerProvider._internal(
        (ref) => create(ref as FetchChatTextGeminiControllerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        prompt: prompt,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GenerateContentResponse> createElement() {
    return _FetchChatTextGeminiControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchChatTextGeminiControllerProvider &&
        other.prompt == prompt;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, prompt.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchChatTextGeminiControllerRef
    on AutoDisposeFutureProviderRef<GenerateContentResponse> {
  /// The parameter `prompt` of this provider.
  String get prompt;
}

class _FetchChatTextGeminiControllerProviderElement
    extends AutoDisposeFutureProviderElement<GenerateContentResponse>
    with FetchChatTextGeminiControllerRef {
  _FetchChatTextGeminiControllerProviderElement(super.provider);

  @override
  String get prompt => (origin as FetchChatTextGeminiControllerProvider).prompt;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
