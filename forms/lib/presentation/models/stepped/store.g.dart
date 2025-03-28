// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SteppedReactiveFormsModelStore<T>
    on _SteppedReactiveFormsModelStore<T>, Store {
  Computed<bool>? _$isFirstStepComputed;

  @override
  bool get isFirstStep =>
      (_$isFirstStepComputed ??= Computed<bool>(() => super.isFirstStep,
              name: '_SteppedReactiveFormsModelStore.isFirstStep'))
          .value;
  Computed<bool>? _$isLastStepComputed;

  @override
  bool get isLastStep =>
      (_$isLastStepComputed ??= Computed<bool>(() => super.isLastStep,
              name: '_SteppedReactiveFormsModelStore.isLastStep'))
          .value;
  Computed<bool>? _$canProceedComputed;

  @override
  bool get canProceed =>
      (_$canProceedComputed ??= Computed<bool>(() => super.canProceed,
              name: '_SteppedReactiveFormsModelStore.canProceed'))
          .value;

  late final _$isForwardNavigationAtom = Atom(
      name: '_SteppedReactiveFormsModelStore.isForwardNavigation',
      context: context);

  @override
  bool get isForwardNavigation {
    _$isForwardNavigationAtom.reportRead();
    return super.isForwardNavigation;
  }

  @override
  set isForwardNavigation(bool value) {
    _$isForwardNavigationAtom.reportWrite(value, super.isForwardNavigation, () {
      super.isForwardNavigation = value;
    });
  }

  late final _$currentStepIndexAtom = Atom(
      name: '_SteppedReactiveFormsModelStore.currentStepIndex',
      context: context);

  @override
  int get currentStepIndex {
    _$currentStepIndexAtom.reportRead();
    return super.currentStepIndex;
  }

  @override
  set currentStepIndex(int value) {
    _$currentStepIndexAtom.reportWrite(value, super.currentStepIndex, () {
      super.currentStepIndex = value;
    });
  }

  late final _$isSubmittingAtom = Atom(
      name: '_SteppedReactiveFormsModelStore.isSubmitting', context: context);

  @override
  bool get isSubmitting {
    _$isSubmittingAtom.reportRead();
    return super.isSubmitting;
  }

  @override
  set isSubmitting(bool value) {
    _$isSubmittingAtom.reportWrite(value, super.isSubmitting, () {
      super.isSubmitting = value;
    });
  }

  late final _$initializeAsyncAction = AsyncAction(
      '_SteppedReactiveFormsModelStore.initialize',
      context: context);

  @override
  Future<void> initialize() {
    return _$initializeAsyncAction.run(() => super.initialize());
  }

  late final _$nextStepAsyncAction =
      AsyncAction('_SteppedReactiveFormsModelStore.nextStep', context: context);

  @override
  Future<bool> nextStep() {
    return _$nextStepAsyncAction.run(() => super.nextStep());
  }

  late final _$submitPressedAsyncAction = AsyncAction(
      '_SteppedReactiveFormsModelStore.submitPressed',
      context: context);

  @override
  Future<RequestResponse> submitPressed(
      void Function(SnackbarConfiguration) showSnackbar,
      void Function(RequestResponse) onBack) {
    return _$submitPressedAsyncAction
        .run(() => super.submitPressed(showSnackbar, onBack));
  }

  late final _$prepareValueFromFormAsyncAction = AsyncAction(
      '_SteppedReactiveFormsModelStore.prepareValueFromForm',
      context: context);

  @override
  Future<T?> prepareValueFromForm() {
    return _$prepareValueFromFormAsyncAction
        .run(() => super.prepareValueFromForm());
  }

  late final _$_SteppedReactiveFormsModelStoreActionController =
      ActionController(
          name: '_SteppedReactiveFormsModelStore', context: context);

  @override
  void previousStep() {
    final _$actionInfo = _$_SteppedReactiveFormsModelStoreActionController
        .startAction(name: '_SteppedReactiveFormsModelStore.previousStep');
    try {
      return super.previousStep();
    } finally {
      _$_SteppedReactiveFormsModelStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isForwardNavigation: ${isForwardNavigation},
currentStepIndex: ${currentStepIndex},
isSubmitting: ${isSubmitting},
isFirstStep: ${isFirstStep},
isLastStep: ${isLastStep},
canProceed: ${canProceed}
    ''';
  }
}
