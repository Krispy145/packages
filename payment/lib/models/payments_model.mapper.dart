// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'payments_model.dart';

class PaymentsModelMapper extends ClassMapperBase<PaymentsModel> {
  PaymentsModelMapper._();

  static PaymentsModelMapper? _instance;
  static PaymentsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaymentsModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PaymentsModel';

  static int _$amount(PaymentsModel v) => v.amount;
  static const Field<PaymentsModel, int> _f$amount = Field('amount', _$amount);
  static int _$amountCapturable(PaymentsModel v) => v.amountCapturable;
  static const Field<PaymentsModel, int> _f$amountCapturable =
      Field('amountCapturable', _$amountCapturable, key: r'amount_capturable');
  static Map<String, String>? _$amountDetails(PaymentsModel v) =>
      v.amountDetails;
  static const Field<PaymentsModel, Map<String, String>> _f$amountDetails =
      Field('amountDetails', _$amountDetails,
          key: r'amount_details', opt: true);
  static int _$amountReceived(PaymentsModel v) => v.amountReceived;
  static const Field<PaymentsModel, int> _f$amountReceived =
      Field('amountReceived', _$amountReceived, key: r'amount_received');
  static String? _$application(PaymentsModel v) => v.application;
  static const Field<PaymentsModel, String> _f$application =
      Field('application', _$application, opt: true);
  static int _$applicationFeeAmount(PaymentsModel v) => v.applicationFeeAmount;
  static const Field<PaymentsModel, int> _f$applicationFeeAmount = Field(
      'applicationFeeAmount', _$applicationFeeAmount,
      key: r'application_fee_amount');
  static String? _$automaticPaymentMethods(PaymentsModel v) =>
      v.automaticPaymentMethods;
  static const Field<PaymentsModel, String> _f$automaticPaymentMethods = Field(
      'automaticPaymentMethods', _$automaticPaymentMethods,
      key: r'automatic_payment_methods', opt: true);
  static int? _$canceledAt(PaymentsModel v) => v.canceledAt;
  static const Field<PaymentsModel, int> _f$canceledAt =
      Field('canceledAt', _$canceledAt, key: r'canceled_at', opt: true);
  static String? _$cancellationReason(PaymentsModel v) => v.cancellationReason;
  static const Field<PaymentsModel, String> _f$cancellationReason = Field(
      'cancellationReason', _$cancellationReason,
      key: r'cancellation_reason', opt: true);
  static String _$captureMethod(PaymentsModel v) => v.captureMethod;
  static const Field<PaymentsModel, String> _f$captureMethod =
      Field('captureMethod', _$captureMethod, key: r'capture_method');
  static Map<String, String>? _$charges(PaymentsModel v) => v.charges;
  static const Field<PaymentsModel, Map<String, String>> _f$charges =
      Field('charges', _$charges, opt: true);
  static String _$clientSecret(PaymentsModel v) => v.clientSecret;
  static const Field<PaymentsModel, String> _f$clientSecret =
      Field('clientSecret', _$clientSecret, key: r'client_secret');
  static String _$confirmationMethod(PaymentsModel v) => v.confirmationMethod;
  static const Field<PaymentsModel, String> _f$confirmationMethod = Field(
      'confirmationMethod', _$confirmationMethod,
      key: r'confirmation_method');
  static int _$created(PaymentsModel v) => v.created;
  static const Field<PaymentsModel, int> _f$created =
      Field('created', _$created);
  static String _$currency(PaymentsModel v) => v.currency;
  static const Field<PaymentsModel, String> _f$currency =
      Field('currency', _$currency);
  static String _$customer(PaymentsModel v) => v.customer;
  static const Field<PaymentsModel, String> _f$customer =
      Field('customer', _$customer);
  static String? _$description(PaymentsModel v) => v.description;
  static const Field<PaymentsModel, String> _f$description =
      Field('description', _$description, opt: true);
  static String _$id(PaymentsModel v) => v.id;
  static const Field<PaymentsModel, String> _f$id = Field('id', _$id);
  static String? _$invoice(PaymentsModel v) => v.invoice;
  static const Field<PaymentsModel, String> _f$invoice =
      Field('invoice', _$invoice, opt: true);
  static String? _$lastPaymentError(PaymentsModel v) => v.lastPaymentError;
  static const Field<PaymentsModel, String> _f$lastPaymentError = Field(
      'lastPaymentError', _$lastPaymentError,
      key: r'last_payment_error', opt: true);
  static String _$latestCharge(PaymentsModel v) => v.latestCharge;
  static const Field<PaymentsModel, String> _f$latestCharge =
      Field('latestCharge', _$latestCharge, key: r'latest_charge');
  static bool _$liveMode(PaymentsModel v) => v.liveMode;
  static const Field<PaymentsModel, bool> _f$liveMode =
      Field('liveMode', _$liveMode, key: r'live_mode');
  static Map<String, String>? _$metadata(PaymentsModel v) => v.metadata;
  static const Field<PaymentsModel, Map<String, String>> _f$metadata =
      Field('metadata', _$metadata, opt: true);
  static String? _$nextAction(PaymentsModel v) => v.nextAction;
  static const Field<PaymentsModel, String> _f$nextAction =
      Field('nextAction', _$nextAction, key: r'next_action', opt: true);
  static String _$object(PaymentsModel v) => v.object;
  static const Field<PaymentsModel, String> _f$object =
      Field('object', _$object);
  static String? _$onBehalfOf(PaymentsModel v) => v.onBehalfOf;
  static const Field<PaymentsModel, String> _f$onBehalfOf =
      Field('onBehalfOf', _$onBehalfOf, key: r'on_behalf_of', opt: true);
  static String? _$paymentMethod(PaymentsModel v) => v.paymentMethod;
  static const Field<PaymentsModel, String> _f$paymentMethod = Field(
      'paymentMethod', _$paymentMethod,
      key: r'payment_method', opt: true);
  static String? _$paymentMethodConfigurationDetails(PaymentsModel v) =>
      v.paymentMethodConfigurationDetails;
  static const Field<PaymentsModel, String>
      _f$paymentMethodConfigurationDetails = Field(
          'paymentMethodConfigurationDetails',
          _$paymentMethodConfigurationDetails,
          key: r'payment_method_configuration_details',
          opt: true);
  static Map<String, String> _$paymentMethodOptions(PaymentsModel v) =>
      v.paymentMethodOptions;
  static const Field<PaymentsModel, Map<String, String>>
      _f$paymentMethodOptions = Field(
          'paymentMethodOptions', _$paymentMethodOptions,
          key: r'payment_method_options');
  static List<String> _$paymentMethodTypes(PaymentsModel v) =>
      v.paymentMethodTypes;
  static const Field<PaymentsModel, List<String>> _f$paymentMethodTypes = Field(
      'paymentMethodTypes', _$paymentMethodTypes,
      key: r'payment_method_types');
  static String? _$processing(PaymentsModel v) => v.processing;
  static const Field<PaymentsModel, String> _f$processing =
      Field('processing', _$processing, opt: true);
  static String? _$receiptEmail(PaymentsModel v) => v.receiptEmail;
  static const Field<PaymentsModel, String> _f$receiptEmail =
      Field('receiptEmail', _$receiptEmail, key: r'receipt_email', opt: true);
  static String? _$review(PaymentsModel v) => v.review;
  static const Field<PaymentsModel, String> _f$review =
      Field('review', _$review, opt: true);
  static String? _$setupFutureUsage(PaymentsModel v) => v.setupFutureUsage;
  static const Field<PaymentsModel, String> _f$setupFutureUsage = Field(
      'setupFutureUsage', _$setupFutureUsage,
      key: r'setup_future_usage', opt: true);
  static String? _$shipping(PaymentsModel v) => v.shipping;
  static const Field<PaymentsModel, String> _f$shipping =
      Field('shipping', _$shipping, opt: true);
  static String? _$source(PaymentsModel v) => v.source;
  static const Field<PaymentsModel, String> _f$source =
      Field('source', _$source, opt: true);
  static String? _$statementDescriptor(PaymentsModel v) =>
      v.statementDescriptor;
  static const Field<PaymentsModel, String> _f$statementDescriptor = Field(
      'statementDescriptor', _$statementDescriptor,
      key: r'statement_descriptor', opt: true);
  static String? _$statementDescriptorSuffix(PaymentsModel v) =>
      v.statementDescriptorSuffix;
  static const Field<PaymentsModel, String> _f$statementDescriptorSuffix =
      Field('statementDescriptorSuffix', _$statementDescriptorSuffix,
          key: r'statement_descriptor_suffix', opt: true);
  static String _$status(PaymentsModel v) => v.status;
  static const Field<PaymentsModel, String> _f$status =
      Field('status', _$status);
  static String? _$transferData(PaymentsModel v) => v.transferData;
  static const Field<PaymentsModel, String> _f$transferData =
      Field('transferData', _$transferData, key: r'transfer_data', opt: true);
  static String? _$transferGroup(PaymentsModel v) => v.transferGroup;
  static const Field<PaymentsModel, String> _f$transferGroup = Field(
      'transferGroup', _$transferGroup,
      key: r'transfer_group', opt: true);

  @override
  final MappableFields<PaymentsModel> fields = const {
    #amount: _f$amount,
    #amountCapturable: _f$amountCapturable,
    #amountDetails: _f$amountDetails,
    #amountReceived: _f$amountReceived,
    #application: _f$application,
    #applicationFeeAmount: _f$applicationFeeAmount,
    #automaticPaymentMethods: _f$automaticPaymentMethods,
    #canceledAt: _f$canceledAt,
    #cancellationReason: _f$cancellationReason,
    #captureMethod: _f$captureMethod,
    #charges: _f$charges,
    #clientSecret: _f$clientSecret,
    #confirmationMethod: _f$confirmationMethod,
    #created: _f$created,
    #currency: _f$currency,
    #customer: _f$customer,
    #description: _f$description,
    #id: _f$id,
    #invoice: _f$invoice,
    #lastPaymentError: _f$lastPaymentError,
    #latestCharge: _f$latestCharge,
    #liveMode: _f$liveMode,
    #metadata: _f$metadata,
    #nextAction: _f$nextAction,
    #object: _f$object,
    #onBehalfOf: _f$onBehalfOf,
    #paymentMethod: _f$paymentMethod,
    #paymentMethodConfigurationDetails: _f$paymentMethodConfigurationDetails,
    #paymentMethodOptions: _f$paymentMethodOptions,
    #paymentMethodTypes: _f$paymentMethodTypes,
    #processing: _f$processing,
    #receiptEmail: _f$receiptEmail,
    #review: _f$review,
    #setupFutureUsage: _f$setupFutureUsage,
    #shipping: _f$shipping,
    #source: _f$source,
    #statementDescriptor: _f$statementDescriptor,
    #statementDescriptorSuffix: _f$statementDescriptorSuffix,
    #status: _f$status,
    #transferData: _f$transferData,
    #transferGroup: _f$transferGroup,
  };

  static PaymentsModel _instantiate(DecodingData data) {
    return PaymentsModel(
        amount: data.dec(_f$amount),
        amountCapturable: data.dec(_f$amountCapturable),
        amountDetails: data.dec(_f$amountDetails),
        amountReceived: data.dec(_f$amountReceived),
        application: data.dec(_f$application),
        applicationFeeAmount: data.dec(_f$applicationFeeAmount),
        automaticPaymentMethods: data.dec(_f$automaticPaymentMethods),
        canceledAt: data.dec(_f$canceledAt),
        cancellationReason: data.dec(_f$cancellationReason),
        captureMethod: data.dec(_f$captureMethod),
        charges: data.dec(_f$charges),
        clientSecret: data.dec(_f$clientSecret),
        confirmationMethod: data.dec(_f$confirmationMethod),
        created: data.dec(_f$created),
        currency: data.dec(_f$currency),
        customer: data.dec(_f$customer),
        description: data.dec(_f$description),
        id: data.dec(_f$id),
        invoice: data.dec(_f$invoice),
        lastPaymentError: data.dec(_f$lastPaymentError),
        latestCharge: data.dec(_f$latestCharge),
        liveMode: data.dec(_f$liveMode),
        metadata: data.dec(_f$metadata),
        nextAction: data.dec(_f$nextAction),
        object: data.dec(_f$object),
        onBehalfOf: data.dec(_f$onBehalfOf),
        paymentMethod: data.dec(_f$paymentMethod),
        paymentMethodConfigurationDetails:
            data.dec(_f$paymentMethodConfigurationDetails),
        paymentMethodOptions: data.dec(_f$paymentMethodOptions),
        paymentMethodTypes: data.dec(_f$paymentMethodTypes),
        processing: data.dec(_f$processing),
        receiptEmail: data.dec(_f$receiptEmail),
        review: data.dec(_f$review),
        setupFutureUsage: data.dec(_f$setupFutureUsage),
        shipping: data.dec(_f$shipping),
        source: data.dec(_f$source),
        statementDescriptor: data.dec(_f$statementDescriptor),
        statementDescriptorSuffix: data.dec(_f$statementDescriptorSuffix),
        status: data.dec(_f$status),
        transferData: data.dec(_f$transferData),
        transferGroup: data.dec(_f$transferGroup));
  }

  @override
  final Function instantiate = _instantiate;

  static PaymentsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PaymentsModel>(map);
  }

  static PaymentsModel fromJson(String json) {
    return ensureInitialized().decodeJson<PaymentsModel>(json);
  }
}

mixin PaymentsModelMappable {
  String toJson() {
    return PaymentsModelMapper.ensureInitialized()
        .encodeJson<PaymentsModel>(this as PaymentsModel);
  }

  Map<String, dynamic> toMap() {
    return PaymentsModelMapper.ensureInitialized()
        .encodeMap<PaymentsModel>(this as PaymentsModel);
  }

  PaymentsModelCopyWith<PaymentsModel, PaymentsModel, PaymentsModel>
      get copyWith => _PaymentsModelCopyWithImpl(
          this as PaymentsModel, $identity, $identity);
  @override
  String toString() {
    return PaymentsModelMapper.ensureInitialized()
        .stringifyValue(this as PaymentsModel);
  }

  @override
  bool operator ==(Object other) {
    return PaymentsModelMapper.ensureInitialized()
        .equalsValue(this as PaymentsModel, other);
  }

  @override
  int get hashCode {
    return PaymentsModelMapper.ensureInitialized()
        .hashValue(this as PaymentsModel);
  }
}

extension PaymentsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PaymentsModel, $Out> {
  PaymentsModelCopyWith<$R, PaymentsModel, $Out> get $asPaymentsModel =>
      $base.as((v, t, t2) => _PaymentsModelCopyWithImpl(v, t, t2));
}

abstract class PaymentsModelCopyWith<$R, $In extends PaymentsModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get amountDetails;
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get charges;
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get metadata;
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
      get paymentMethodOptions;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get paymentMethodTypes;
  $R call(
      {int? amount,
      int? amountCapturable,
      Map<String, String>? amountDetails,
      int? amountReceived,
      String? application,
      int? applicationFeeAmount,
      String? automaticPaymentMethods,
      int? canceledAt,
      String? cancellationReason,
      String? captureMethod,
      Map<String, String>? charges,
      String? clientSecret,
      String? confirmationMethod,
      int? created,
      String? currency,
      String? customer,
      String? description,
      String? id,
      String? invoice,
      String? lastPaymentError,
      String? latestCharge,
      bool? liveMode,
      Map<String, String>? metadata,
      String? nextAction,
      String? object,
      String? onBehalfOf,
      String? paymentMethod,
      String? paymentMethodConfigurationDetails,
      Map<String, String>? paymentMethodOptions,
      List<String>? paymentMethodTypes,
      String? processing,
      String? receiptEmail,
      String? review,
      String? setupFutureUsage,
      String? shipping,
      String? source,
      String? statementDescriptor,
      String? statementDescriptorSuffix,
      String? status,
      String? transferData,
      String? transferGroup});
  PaymentsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PaymentsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PaymentsModel, $Out>
    implements PaymentsModelCopyWith<$R, PaymentsModel, $Out> {
  _PaymentsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PaymentsModel> $mapper =
      PaymentsModelMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get amountDetails => $value.amountDetails != null
          ? MapCopyWith(
              $value.amountDetails!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(amountDetails: v))
          : null;
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get charges => $value.charges != null
          ? MapCopyWith(
              $value.charges!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(charges: v))
          : null;
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get metadata => $value.metadata != null
          ? MapCopyWith(
              $value.metadata!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(metadata: v))
          : null;
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
      get paymentMethodOptions => MapCopyWith(
          $value.paymentMethodOptions,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(paymentMethodOptions: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get paymentMethodTypes => ListCopyWith(
          $value.paymentMethodTypes,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(paymentMethodTypes: v));
  @override
  $R call(
          {int? amount,
          int? amountCapturable,
          Object? amountDetails = $none,
          int? amountReceived,
          Object? application = $none,
          int? applicationFeeAmount,
          Object? automaticPaymentMethods = $none,
          Object? canceledAt = $none,
          Object? cancellationReason = $none,
          String? captureMethod,
          Object? charges = $none,
          String? clientSecret,
          String? confirmationMethod,
          int? created,
          String? currency,
          String? customer,
          Object? description = $none,
          String? id,
          Object? invoice = $none,
          Object? lastPaymentError = $none,
          String? latestCharge,
          bool? liveMode,
          Object? metadata = $none,
          Object? nextAction = $none,
          String? object,
          Object? onBehalfOf = $none,
          Object? paymentMethod = $none,
          Object? paymentMethodConfigurationDetails = $none,
          Map<String, String>? paymentMethodOptions,
          List<String>? paymentMethodTypes,
          Object? processing = $none,
          Object? receiptEmail = $none,
          Object? review = $none,
          Object? setupFutureUsage = $none,
          Object? shipping = $none,
          Object? source = $none,
          Object? statementDescriptor = $none,
          Object? statementDescriptorSuffix = $none,
          String? status,
          Object? transferData = $none,
          Object? transferGroup = $none}) =>
      $apply(FieldCopyWithData({
        if (amount != null) #amount: amount,
        if (amountCapturable != null) #amountCapturable: amountCapturable,
        if (amountDetails != $none) #amountDetails: amountDetails,
        if (amountReceived != null) #amountReceived: amountReceived,
        if (application != $none) #application: application,
        if (applicationFeeAmount != null)
          #applicationFeeAmount: applicationFeeAmount,
        if (automaticPaymentMethods != $none)
          #automaticPaymentMethods: automaticPaymentMethods,
        if (canceledAt != $none) #canceledAt: canceledAt,
        if (cancellationReason != $none)
          #cancellationReason: cancellationReason,
        if (captureMethod != null) #captureMethod: captureMethod,
        if (charges != $none) #charges: charges,
        if (clientSecret != null) #clientSecret: clientSecret,
        if (confirmationMethod != null) #confirmationMethod: confirmationMethod,
        if (created != null) #created: created,
        if (currency != null) #currency: currency,
        if (customer != null) #customer: customer,
        if (description != $none) #description: description,
        if (id != null) #id: id,
        if (invoice != $none) #invoice: invoice,
        if (lastPaymentError != $none) #lastPaymentError: lastPaymentError,
        if (latestCharge != null) #latestCharge: latestCharge,
        if (liveMode != null) #liveMode: liveMode,
        if (metadata != $none) #metadata: metadata,
        if (nextAction != $none) #nextAction: nextAction,
        if (object != null) #object: object,
        if (onBehalfOf != $none) #onBehalfOf: onBehalfOf,
        if (paymentMethod != $none) #paymentMethod: paymentMethod,
        if (paymentMethodConfigurationDetails != $none)
          #paymentMethodConfigurationDetails: paymentMethodConfigurationDetails,
        if (paymentMethodOptions != null)
          #paymentMethodOptions: paymentMethodOptions,
        if (paymentMethodTypes != null) #paymentMethodTypes: paymentMethodTypes,
        if (processing != $none) #processing: processing,
        if (receiptEmail != $none) #receiptEmail: receiptEmail,
        if (review != $none) #review: review,
        if (setupFutureUsage != $none) #setupFutureUsage: setupFutureUsage,
        if (shipping != $none) #shipping: shipping,
        if (source != $none) #source: source,
        if (statementDescriptor != $none)
          #statementDescriptor: statementDescriptor,
        if (statementDescriptorSuffix != $none)
          #statementDescriptorSuffix: statementDescriptorSuffix,
        if (status != null) #status: status,
        if (transferData != $none) #transferData: transferData,
        if (transferGroup != $none) #transferGroup: transferGroup
      }));
  @override
  PaymentsModel $make(CopyWithData data) => PaymentsModel(
      amount: data.get(#amount, or: $value.amount),
      amountCapturable:
          data.get(#amountCapturable, or: $value.amountCapturable),
      amountDetails: data.get(#amountDetails, or: $value.amountDetails),
      amountReceived: data.get(#amountReceived, or: $value.amountReceived),
      application: data.get(#application, or: $value.application),
      applicationFeeAmount:
          data.get(#applicationFeeAmount, or: $value.applicationFeeAmount),
      automaticPaymentMethods: data.get(#automaticPaymentMethods,
          or: $value.automaticPaymentMethods),
      canceledAt: data.get(#canceledAt, or: $value.canceledAt),
      cancellationReason:
          data.get(#cancellationReason, or: $value.cancellationReason),
      captureMethod: data.get(#captureMethod, or: $value.captureMethod),
      charges: data.get(#charges, or: $value.charges),
      clientSecret: data.get(#clientSecret, or: $value.clientSecret),
      confirmationMethod:
          data.get(#confirmationMethod, or: $value.confirmationMethod),
      created: data.get(#created, or: $value.created),
      currency: data.get(#currency, or: $value.currency),
      customer: data.get(#customer, or: $value.customer),
      description: data.get(#description, or: $value.description),
      id: data.get(#id, or: $value.id),
      invoice: data.get(#invoice, or: $value.invoice),
      lastPaymentError:
          data.get(#lastPaymentError, or: $value.lastPaymentError),
      latestCharge: data.get(#latestCharge, or: $value.latestCharge),
      liveMode: data.get(#liveMode, or: $value.liveMode),
      metadata: data.get(#metadata, or: $value.metadata),
      nextAction: data.get(#nextAction, or: $value.nextAction),
      object: data.get(#object, or: $value.object),
      onBehalfOf: data.get(#onBehalfOf, or: $value.onBehalfOf),
      paymentMethod: data.get(#paymentMethod, or: $value.paymentMethod),
      paymentMethodConfigurationDetails: data.get(
          #paymentMethodConfigurationDetails,
          or: $value.paymentMethodConfigurationDetails),
      paymentMethodOptions:
          data.get(#paymentMethodOptions, or: $value.paymentMethodOptions),
      paymentMethodTypes:
          data.get(#paymentMethodTypes, or: $value.paymentMethodTypes),
      processing: data.get(#processing, or: $value.processing),
      receiptEmail: data.get(#receiptEmail, or: $value.receiptEmail),
      review: data.get(#review, or: $value.review),
      setupFutureUsage:
          data.get(#setupFutureUsage, or: $value.setupFutureUsage),
      shipping: data.get(#shipping, or: $value.shipping),
      source: data.get(#source, or: $value.source),
      statementDescriptor:
          data.get(#statementDescriptor, or: $value.statementDescriptor),
      statementDescriptorSuffix: data.get(#statementDescriptorSuffix,
          or: $value.statementDescriptorSuffix),
      status: data.get(#status, or: $value.status),
      transferData: data.get(#transferData, or: $value.transferData),
      transferGroup: data.get(#transferGroup, or: $value.transferGroup));

  @override
  PaymentsModelCopyWith<$R2, PaymentsModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PaymentsModelCopyWithImpl($value, $cast, t);
}
