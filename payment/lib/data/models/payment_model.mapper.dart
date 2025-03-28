// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'payment_model.dart';

class PaymentStatusMapper extends EnumMapper<PaymentStatus> {
  PaymentStatusMapper._();

  static PaymentStatusMapper? _instance;
  static PaymentStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaymentStatusMapper._());
    }
    return _instance!;
  }

  static PaymentStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  PaymentStatus decode(dynamic value) {
    switch (value) {
      case r'requires_payment_method':
        return PaymentStatus.requiresPaymentMethod;
      case r'requires_confirmation':
        return PaymentStatus.requiresConfirmation;
      case r'requires_action':
        return PaymentStatus.requiresAction;
      case r'processing':
        return PaymentStatus.processing;
      case r'succeeded':
        return PaymentStatus.succeeded;
      case r'canceled':
        return PaymentStatus.canceled;
      case r'failed':
        return PaymentStatus.failed;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(PaymentStatus self) {
    switch (self) {
      case PaymentStatus.requiresPaymentMethod:
        return r'requires_payment_method';
      case PaymentStatus.requiresConfirmation:
        return r'requires_confirmation';
      case PaymentStatus.requiresAction:
        return r'requires_action';
      case PaymentStatus.processing:
        return r'processing';
      case PaymentStatus.succeeded:
        return r'succeeded';
      case PaymentStatus.canceled:
        return r'canceled';
      case PaymentStatus.failed:
        return r'failed';
    }
  }
}

extension PaymentStatusMapperExtension on PaymentStatus {
  String toValue() {
    PaymentStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<PaymentStatus>(this) as String;
  }
}

class PaymentModelMapper extends ClassMapperBase<PaymentModel> {
  PaymentModelMapper._();

  static PaymentModelMapper? _instance;
  static PaymentModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaymentModelMapper._());
      PaymentStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PaymentModel';

  static String _$id(PaymentModel v) => v.id;
  static const Field<PaymentModel, String> _f$id = Field('id', _$id);
  static int _$amount(PaymentModel v) => v.amount;
  static const Field<PaymentModel, int> _f$amount = Field('amount', _$amount);
  static String _$currency(PaymentModel v) => v.currency;
  static const Field<PaymentModel, String> _f$currency =
      Field('currency', _$currency);
  static String _$paymentMethod(PaymentModel v) => v.paymentMethod;
  static const Field<PaymentModel, String> _f$paymentMethod =
      Field('paymentMethod', _$paymentMethod, key: r'payment_method');
  static String _$billingType(PaymentModel v) => v.billingType;
  static const Field<PaymentModel, String> _f$billingType =
      Field('billingType', _$billingType, key: r'billing_type');
  static PaymentStatus? _$status(PaymentModel v) => v.status;
  static const Field<PaymentModel, PaymentStatus> _f$status =
      Field('status', _$status, opt: true);
  static String? _$customerId(PaymentModel v) => v.customerId;
  static const Field<PaymentModel, String> _f$customerId =
      Field('customerId', _$customerId, key: r'customer_id', opt: true);
  static DateTime? _$created(PaymentModel v) => v.created;
  static const Field<PaymentModel, DateTime> _f$created =
      Field('created', _$created, opt: true);
  static String? _$errorMessage(PaymentModel v) => v.errorMessage;
  static const Field<PaymentModel, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, key: r'error_message', opt: true);
  static String? _$clientSecret(PaymentModel v) => v.clientSecret;
  static const Field<PaymentModel, String> _f$clientSecret =
      Field('clientSecret', _$clientSecret, key: r'client_secret', opt: true);
  static bool _$livemode(PaymentModel v) => v.livemode;
  static const Field<PaymentModel, bool> _f$livemode =
      Field('livemode', _$livemode, opt: true, def: false);
  static String? _$captureMethod(PaymentModel v) => v.captureMethod;
  static const Field<PaymentModel, String> _f$captureMethod = Field(
      'captureMethod', _$captureMethod,
      key: r'capture_method', opt: true);
  static String? _$confirmationMethod(PaymentModel v) => v.confirmationMethod;
  static const Field<PaymentModel, String> _f$confirmationMethod = Field(
      'confirmationMethod', _$confirmationMethod,
      key: r'confirmation_method', opt: true);
  static List<String>? _$paymentMethodTypes(PaymentModel v) =>
      v.paymentMethodTypes;
  static const Field<PaymentModel, List<String>> _f$paymentMethodTypes = Field(
      'paymentMethodTypes', _$paymentMethodTypes,
      key: r'payment_method_types', opt: true);
  static Map<String, dynamic>? _$paymentMethodOptions(PaymentModel v) =>
      v.paymentMethodOptions;
  static const Field<PaymentModel, Map<String, dynamic>>
      _f$paymentMethodOptions = Field(
          'paymentMethodOptions', _$paymentMethodOptions,
          key: r'payment_method_options', opt: true);
  static Map<String, dynamic>? _$processing(PaymentModel v) => v.processing;
  static const Field<PaymentModel, Map<String, dynamic>> _f$processing =
      Field('processing', _$processing, opt: true);
  static Map<String, dynamic>? _$metadata(PaymentModel v) => v.metadata;
  static const Field<PaymentModel, Map<String, dynamic>> _f$metadata =
      Field('metadata', _$metadata, opt: true);
  static String? _$description(PaymentModel v) => v.description;
  static const Field<PaymentModel, String> _f$description =
      Field('description', _$description, opt: true);
  static int? _$amountReceived(PaymentModel v) => v.amountReceived;
  static const Field<PaymentModel, int> _f$amountReceived = Field(
      'amountReceived', _$amountReceived,
      key: r'amount_received', opt: true);
  static int? _$amountCapturable(PaymentModel v) => v.amountCapturable;
  static const Field<PaymentModel, int> _f$amountCapturable = Field(
      'amountCapturable', _$amountCapturable,
      key: r'amount_capturable', opt: true);
  static String? _$statementDescriptor(PaymentModel v) => v.statementDescriptor;
  static const Field<PaymentModel, String> _f$statementDescriptor = Field(
      'statementDescriptor', _$statementDescriptor,
      key: r'statement_descriptor', opt: true);
  static String? _$statementDescriptorSuffix(PaymentModel v) =>
      v.statementDescriptorSuffix;
  static const Field<PaymentModel, String> _f$statementDescriptorSuffix = Field(
      'statementDescriptorSuffix', _$statementDescriptorSuffix,
      key: r'statement_descriptor_suffix', opt: true);
  static String? _$receiptEmail(PaymentModel v) => v.receiptEmail;
  static const Field<PaymentModel, String> _f$receiptEmail =
      Field('receiptEmail', _$receiptEmail, key: r'receipt_email', opt: true);
  static String? _$cancellationReason(PaymentModel v) => v.cancellationReason;
  static const Field<PaymentModel, String> _f$cancellationReason = Field(
      'cancellationReason', _$cancellationReason,
      key: r'cancellation_reason', opt: true);
  static DateTime? _$canceledAt(PaymentModel v) => v.canceledAt;
  static const Field<PaymentModel, DateTime> _f$canceledAt =
      Field('canceledAt', _$canceledAt, key: r'canceled_at', opt: true);
  static Map<String, dynamic>? _$amountDetails(PaymentModel v) =>
      v.amountDetails;
  static const Field<PaymentModel, Map<String, dynamic>> _f$amountDetails =
      Field('amountDetails', _$amountDetails,
          key: r'amount_details', opt: true);
  static Map<String, dynamic>? _$shipping(PaymentModel v) => v.shipping;
  static const Field<PaymentModel, Map<String, dynamic>> _f$shipping =
      Field('shipping', _$shipping, opt: true);
  static Map<String, dynamic>? _$transferData(PaymentModel v) => v.transferData;
  static const Field<PaymentModel, Map<String, dynamic>> _f$transferData =
      Field('transferData', _$transferData, key: r'transfer_data', opt: true);
  static Map<String, dynamic>? _$onBehalfOf(PaymentModel v) => v.onBehalfOf;
  static const Field<PaymentModel, Map<String, dynamic>> _f$onBehalfOf =
      Field('onBehalfOf', _$onBehalfOf, key: r'on_behalf_of', opt: true);
  static Map<String, dynamic>? _$setupFutureUsage(PaymentModel v) =>
      v.setupFutureUsage;
  static const Field<PaymentModel, Map<String, dynamic>> _f$setupFutureUsage =
      Field('setupFutureUsage', _$setupFutureUsage,
          key: r'setup_future_usage', opt: true);
  static Map<String, dynamic>? _$transferGroup(PaymentModel v) =>
      v.transferGroup;
  static const Field<PaymentModel, Map<String, dynamic>> _f$transferGroup =
      Field('transferGroup', _$transferGroup,
          key: r'transfer_group', opt: true);
  static Map<String, dynamic>? _$review(PaymentModel v) => v.review;
  static const Field<PaymentModel, Map<String, dynamic>> _f$review =
      Field('review', _$review, opt: true);
  static Map<String, dynamic>? _$nextAction(PaymentModel v) => v.nextAction;
  static const Field<PaymentModel, Map<String, dynamic>> _f$nextAction =
      Field('nextAction', _$nextAction, key: r'next_action', opt: true);
  static Map<String, dynamic>? _$lastPaymentError(PaymentModel v) =>
      v.lastPaymentError;
  static const Field<PaymentModel, Map<String, dynamic>> _f$lastPaymentError =
      Field('lastPaymentError', _$lastPaymentError,
          key: r'last_payment_error', opt: true);
  static Map<String, dynamic>? _$charges(PaymentModel v) => v.charges;
  static const Field<PaymentModel, Map<String, dynamic>> _f$charges =
      Field('charges', _$charges, opt: true);

  @override
  final MappableFields<PaymentModel> fields = const {
    #id: _f$id,
    #amount: _f$amount,
    #currency: _f$currency,
    #paymentMethod: _f$paymentMethod,
    #billingType: _f$billingType,
    #status: _f$status,
    #customerId: _f$customerId,
    #created: _f$created,
    #errorMessage: _f$errorMessage,
    #clientSecret: _f$clientSecret,
    #livemode: _f$livemode,
    #captureMethod: _f$captureMethod,
    #confirmationMethod: _f$confirmationMethod,
    #paymentMethodTypes: _f$paymentMethodTypes,
    #paymentMethodOptions: _f$paymentMethodOptions,
    #processing: _f$processing,
    #metadata: _f$metadata,
    #description: _f$description,
    #amountReceived: _f$amountReceived,
    #amountCapturable: _f$amountCapturable,
    #statementDescriptor: _f$statementDescriptor,
    #statementDescriptorSuffix: _f$statementDescriptorSuffix,
    #receiptEmail: _f$receiptEmail,
    #cancellationReason: _f$cancellationReason,
    #canceledAt: _f$canceledAt,
    #amountDetails: _f$amountDetails,
    #shipping: _f$shipping,
    #transferData: _f$transferData,
    #onBehalfOf: _f$onBehalfOf,
    #setupFutureUsage: _f$setupFutureUsage,
    #transferGroup: _f$transferGroup,
    #review: _f$review,
    #nextAction: _f$nextAction,
    #lastPaymentError: _f$lastPaymentError,
    #charges: _f$charges,
  };

  static PaymentModel _instantiate(DecodingData data) {
    return PaymentModel(
        id: data.dec(_f$id),
        amount: data.dec(_f$amount),
        currency: data.dec(_f$currency),
        paymentMethod: data.dec(_f$paymentMethod),
        billingType: data.dec(_f$billingType),
        status: data.dec(_f$status),
        customerId: data.dec(_f$customerId),
        created: data.dec(_f$created),
        errorMessage: data.dec(_f$errorMessage),
        clientSecret: data.dec(_f$clientSecret),
        livemode: data.dec(_f$livemode),
        captureMethod: data.dec(_f$captureMethod),
        confirmationMethod: data.dec(_f$confirmationMethod),
        paymentMethodTypes: data.dec(_f$paymentMethodTypes),
        paymentMethodOptions: data.dec(_f$paymentMethodOptions),
        processing: data.dec(_f$processing),
        metadata: data.dec(_f$metadata),
        description: data.dec(_f$description),
        amountReceived: data.dec(_f$amountReceived),
        amountCapturable: data.dec(_f$amountCapturable),
        statementDescriptor: data.dec(_f$statementDescriptor),
        statementDescriptorSuffix: data.dec(_f$statementDescriptorSuffix),
        receiptEmail: data.dec(_f$receiptEmail),
        cancellationReason: data.dec(_f$cancellationReason),
        canceledAt: data.dec(_f$canceledAt),
        amountDetails: data.dec(_f$amountDetails),
        shipping: data.dec(_f$shipping),
        transferData: data.dec(_f$transferData),
        onBehalfOf: data.dec(_f$onBehalfOf),
        setupFutureUsage: data.dec(_f$setupFutureUsage),
        transferGroup: data.dec(_f$transferGroup),
        review: data.dec(_f$review),
        nextAction: data.dec(_f$nextAction),
        lastPaymentError: data.dec(_f$lastPaymentError),
        charges: data.dec(_f$charges));
  }

  @override
  final Function instantiate = _instantiate;

  static PaymentModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PaymentModel>(map);
  }

  static PaymentModel fromJson(String json) {
    return ensureInitialized().decodeJson<PaymentModel>(json);
  }
}

mixin PaymentModelMappable {
  String toJson() {
    return PaymentModelMapper.ensureInitialized()
        .encodeJson<PaymentModel>(this as PaymentModel);
  }

  Map<String, dynamic> toMap() {
    return PaymentModelMapper.ensureInitialized()
        .encodeMap<PaymentModel>(this as PaymentModel);
  }

  PaymentModelCopyWith<PaymentModel, PaymentModel, PaymentModel> get copyWith =>
      _PaymentModelCopyWithImpl<PaymentModel, PaymentModel>(
          this as PaymentModel, $identity, $identity);
  @override
  String toString() {
    return PaymentModelMapper.ensureInitialized()
        .stringifyValue(this as PaymentModel);
  }

  @override
  bool operator ==(Object other) {
    return PaymentModelMapper.ensureInitialized()
        .equalsValue(this as PaymentModel, other);
  }

  @override
  int get hashCode {
    return PaymentModelMapper.ensureInitialized()
        .hashValue(this as PaymentModel);
  }
}

extension PaymentModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PaymentModel, $Out> {
  PaymentModelCopyWith<$R, PaymentModel, $Out> get $asPaymentModel =>
      $base.as((v, t, t2) => _PaymentModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PaymentModelCopyWith<$R, $In extends PaymentModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get paymentMethodTypes;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get paymentMethodOptions;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get processing;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get metadata;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get amountDetails;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get shipping;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get transferData;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get onBehalfOf;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get setupFutureUsage;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get transferGroup;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get review;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get nextAction;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get lastPaymentError;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get charges;
  $R call(
      {String? id,
      int? amount,
      String? currency,
      String? paymentMethod,
      String? billingType,
      PaymentStatus? status,
      String? customerId,
      DateTime? created,
      String? errorMessage,
      String? clientSecret,
      bool? livemode,
      String? captureMethod,
      String? confirmationMethod,
      List<String>? paymentMethodTypes,
      Map<String, dynamic>? paymentMethodOptions,
      Map<String, dynamic>? processing,
      Map<String, dynamic>? metadata,
      String? description,
      int? amountReceived,
      int? amountCapturable,
      String? statementDescriptor,
      String? statementDescriptorSuffix,
      String? receiptEmail,
      String? cancellationReason,
      DateTime? canceledAt,
      Map<String, dynamic>? amountDetails,
      Map<String, dynamic>? shipping,
      Map<String, dynamic>? transferData,
      Map<String, dynamic>? onBehalfOf,
      Map<String, dynamic>? setupFutureUsage,
      Map<String, dynamic>? transferGroup,
      Map<String, dynamic>? review,
      Map<String, dynamic>? nextAction,
      Map<String, dynamic>? lastPaymentError,
      Map<String, dynamic>? charges});
  PaymentModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PaymentModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PaymentModel, $Out>
    implements PaymentModelCopyWith<$R, PaymentModel, $Out> {
  _PaymentModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PaymentModel> $mapper =
      PaymentModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get paymentMethodTypes => $value.paymentMethodTypes != null
          ? ListCopyWith(
              $value.paymentMethodTypes!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(paymentMethodTypes: v))
          : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get paymentMethodOptions => $value.paymentMethodOptions != null
          ? MapCopyWith(
              $value.paymentMethodOptions!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(paymentMethodOptions: v))
          : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get processing => $value.processing != null
          ? MapCopyWith(
              $value.processing!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(processing: v))
          : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get metadata => $value.metadata != null
          ? MapCopyWith(
              $value.metadata!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(metadata: v))
          : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get amountDetails => $value.amountDetails != null
          ? MapCopyWith(
              $value.amountDetails!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(amountDetails: v))
          : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get shipping => $value.shipping != null
          ? MapCopyWith(
              $value.shipping!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(shipping: v))
          : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get transferData => $value.transferData != null
          ? MapCopyWith(
              $value.transferData!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(transferData: v))
          : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get onBehalfOf => $value.onBehalfOf != null
          ? MapCopyWith(
              $value.onBehalfOf!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(onBehalfOf: v))
          : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get setupFutureUsage => $value.setupFutureUsage != null
          ? MapCopyWith(
              $value.setupFutureUsage!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(setupFutureUsage: v))
          : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get transferGroup => $value.transferGroup != null
          ? MapCopyWith(
              $value.transferGroup!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(transferGroup: v))
          : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get review => $value.review != null
          ? MapCopyWith($value.review!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(review: v))
          : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get nextAction => $value.nextAction != null
          ? MapCopyWith(
              $value.nextAction!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(nextAction: v))
          : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get lastPaymentError => $value.lastPaymentError != null
          ? MapCopyWith(
              $value.lastPaymentError!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(lastPaymentError: v))
          : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get charges => $value.charges != null
          ? MapCopyWith(
              $value.charges!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(charges: v))
          : null;
  @override
  $R call(
          {String? id,
          int? amount,
          String? currency,
          String? paymentMethod,
          String? billingType,
          Object? status = $none,
          Object? customerId = $none,
          Object? created = $none,
          Object? errorMessage = $none,
          Object? clientSecret = $none,
          bool? livemode,
          Object? captureMethod = $none,
          Object? confirmationMethod = $none,
          Object? paymentMethodTypes = $none,
          Object? paymentMethodOptions = $none,
          Object? processing = $none,
          Object? metadata = $none,
          Object? description = $none,
          Object? amountReceived = $none,
          Object? amountCapturable = $none,
          Object? statementDescriptor = $none,
          Object? statementDescriptorSuffix = $none,
          Object? receiptEmail = $none,
          Object? cancellationReason = $none,
          Object? canceledAt = $none,
          Object? amountDetails = $none,
          Object? shipping = $none,
          Object? transferData = $none,
          Object? onBehalfOf = $none,
          Object? setupFutureUsage = $none,
          Object? transferGroup = $none,
          Object? review = $none,
          Object? nextAction = $none,
          Object? lastPaymentError = $none,
          Object? charges = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (amount != null) #amount: amount,
        if (currency != null) #currency: currency,
        if (paymentMethod != null) #paymentMethod: paymentMethod,
        if (billingType != null) #billingType: billingType,
        if (status != $none) #status: status,
        if (customerId != $none) #customerId: customerId,
        if (created != $none) #created: created,
        if (errorMessage != $none) #errorMessage: errorMessage,
        if (clientSecret != $none) #clientSecret: clientSecret,
        if (livemode != null) #livemode: livemode,
        if (captureMethod != $none) #captureMethod: captureMethod,
        if (confirmationMethod != $none)
          #confirmationMethod: confirmationMethod,
        if (paymentMethodTypes != $none)
          #paymentMethodTypes: paymentMethodTypes,
        if (paymentMethodOptions != $none)
          #paymentMethodOptions: paymentMethodOptions,
        if (processing != $none) #processing: processing,
        if (metadata != $none) #metadata: metadata,
        if (description != $none) #description: description,
        if (amountReceived != $none) #amountReceived: amountReceived,
        if (amountCapturable != $none) #amountCapturable: amountCapturable,
        if (statementDescriptor != $none)
          #statementDescriptor: statementDescriptor,
        if (statementDescriptorSuffix != $none)
          #statementDescriptorSuffix: statementDescriptorSuffix,
        if (receiptEmail != $none) #receiptEmail: receiptEmail,
        if (cancellationReason != $none)
          #cancellationReason: cancellationReason,
        if (canceledAt != $none) #canceledAt: canceledAt,
        if (amountDetails != $none) #amountDetails: amountDetails,
        if (shipping != $none) #shipping: shipping,
        if (transferData != $none) #transferData: transferData,
        if (onBehalfOf != $none) #onBehalfOf: onBehalfOf,
        if (setupFutureUsage != $none) #setupFutureUsage: setupFutureUsage,
        if (transferGroup != $none) #transferGroup: transferGroup,
        if (review != $none) #review: review,
        if (nextAction != $none) #nextAction: nextAction,
        if (lastPaymentError != $none) #lastPaymentError: lastPaymentError,
        if (charges != $none) #charges: charges
      }));
  @override
  PaymentModel $make(CopyWithData data) => PaymentModel(
      id: data.get(#id, or: $value.id),
      amount: data.get(#amount, or: $value.amount),
      currency: data.get(#currency, or: $value.currency),
      paymentMethod: data.get(#paymentMethod, or: $value.paymentMethod),
      billingType: data.get(#billingType, or: $value.billingType),
      status: data.get(#status, or: $value.status),
      customerId: data.get(#customerId, or: $value.customerId),
      created: data.get(#created, or: $value.created),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      clientSecret: data.get(#clientSecret, or: $value.clientSecret),
      livemode: data.get(#livemode, or: $value.livemode),
      captureMethod: data.get(#captureMethod, or: $value.captureMethod),
      confirmationMethod:
          data.get(#confirmationMethod, or: $value.confirmationMethod),
      paymentMethodTypes:
          data.get(#paymentMethodTypes, or: $value.paymentMethodTypes),
      paymentMethodOptions:
          data.get(#paymentMethodOptions, or: $value.paymentMethodOptions),
      processing: data.get(#processing, or: $value.processing),
      metadata: data.get(#metadata, or: $value.metadata),
      description: data.get(#description, or: $value.description),
      amountReceived: data.get(#amountReceived, or: $value.amountReceived),
      amountCapturable:
          data.get(#amountCapturable, or: $value.amountCapturable),
      statementDescriptor:
          data.get(#statementDescriptor, or: $value.statementDescriptor),
      statementDescriptorSuffix: data.get(#statementDescriptorSuffix,
          or: $value.statementDescriptorSuffix),
      receiptEmail: data.get(#receiptEmail, or: $value.receiptEmail),
      cancellationReason:
          data.get(#cancellationReason, or: $value.cancellationReason),
      canceledAt: data.get(#canceledAt, or: $value.canceledAt),
      amountDetails: data.get(#amountDetails, or: $value.amountDetails),
      shipping: data.get(#shipping, or: $value.shipping),
      transferData: data.get(#transferData, or: $value.transferData),
      onBehalfOf: data.get(#onBehalfOf, or: $value.onBehalfOf),
      setupFutureUsage:
          data.get(#setupFutureUsage, or: $value.setupFutureUsage),
      transferGroup: data.get(#transferGroup, or: $value.transferGroup),
      review: data.get(#review, or: $value.review),
      nextAction: data.get(#nextAction, or: $value.nextAction),
      lastPaymentError:
          data.get(#lastPaymentError, or: $value.lastPaymentError),
      charges: data.get(#charges, or: $value.charges));

  @override
  PaymentModelCopyWith<$R2, PaymentModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PaymentModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
