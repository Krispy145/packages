// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'tooltip_model.dart';

class TooltipModelMapper extends ClassMapperBase<TooltipModel> {
  TooltipModelMapper._();

  static TooltipModelMapper? _instance;
  static TooltipModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TooltipModelMapper._());
      EdgeInsetsModelMapper.ensureInitialized();
      BoxDecorationModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TooltipModel';

  static double? _$height_double(TooltipModel v) => v.height_double;
  static const Field<TooltipModel, double> _f$height_double =
      Field('height_double', _$height_double, opt: true);
  static EdgeInsetsModel? _$padding_edgeInsets(TooltipModel v) =>
      v.padding_edgeInsets;
  static const Field<TooltipModel, EdgeInsetsModel> _f$padding_edgeInsets =
      Field('padding_edgeInsets', _$padding_edgeInsets,
          key: 'padding_edge_insets', opt: true);
  static EdgeInsetsModel? _$margin_edgeInsets(TooltipModel v) =>
      v.margin_edgeInsets;
  static const Field<TooltipModel, EdgeInsetsModel> _f$margin_edgeInsets =
      Field('margin_edgeInsets', _$margin_edgeInsets,
          key: 'margin_edge_insets', opt: true);
  static double? _$verticalOffset_double(TooltipModel v) =>
      v.verticalOffset_double;
  static const Field<TooltipModel, double> _f$verticalOffset_double = Field(
      'verticalOffset_double', _$verticalOffset_double,
      key: 'vertical_offset_double', opt: true);
  static bool? _$preferBelow_bool(TooltipModel v) => v.preferBelow_bool;
  static const Field<TooltipModel, bool> _f$preferBelow_bool = Field(
      'preferBelow_bool', _$preferBelow_bool,
      key: 'prefer_below_bool', opt: true);
  static bool? _$excludeFromSemantics_bool(TooltipModel v) =>
      v.excludeFromSemantics_bool;
  static const Field<TooltipModel, bool> _f$excludeFromSemantics_bool = Field(
      'excludeFromSemantics_bool', _$excludeFromSemantics_bool,
      key: 'exclude_from_semantics_bool', opt: true);
  static BoxDecorationModel? _$decoration_boxDecoration(TooltipModel v) =>
      v.decoration_boxDecoration;
  static const Field<TooltipModel, BoxDecorationModel>
      _f$decoration_boxDecoration = Field(
          'decoration_boxDecoration', _$decoration_boxDecoration,
          key: 'decoration_box_decoration', opt: true);
  static String? _$textStyle_textStyleString(TooltipModel v) =>
      v.textStyle_textStyleString;
  static const Field<TooltipModel, String> _f$textStyle_textStyleString = Field(
      'textStyle_textStyleString', _$textStyle_textStyleString,
      key: 'text_style_text_style_string', opt: true);
  static TextAlign? _$textAlign_enum_textAlign(TooltipModel v) =>
      v.textAlign_enum_textAlign;
  static const Field<TooltipModel, TextAlign> _f$textAlign_enum_textAlign =
      Field('textAlign_enum_textAlign', _$textAlign_enum_textAlign,
          key: 'text_align_enum_text_align', opt: true);
  static Duration? _$waitDuration_duration(TooltipModel v) =>
      v.waitDuration_duration;
  static const Field<TooltipModel, Duration> _f$waitDuration_duration = Field(
      'waitDuration_duration', _$waitDuration_duration,
      key: 'wait_duration_duration', opt: true);
  static Duration? _$showDuration_duration(TooltipModel v) =>
      v.showDuration_duration;
  static const Field<TooltipModel, Duration> _f$showDuration_duration = Field(
      'showDuration_duration', _$showDuration_duration,
      key: 'show_duration_duration', opt: true);
  static TooltipTriggerMode? _$triggerMode_enum_tooltipTriggerMode(
          TooltipModel v) =>
      v.triggerMode_enum_tooltipTriggerMode;
  static const Field<TooltipModel, TooltipTriggerMode>
      _f$triggerMode_enum_tooltipTriggerMode = Field(
          'triggerMode_enum_tooltipTriggerMode',
          _$triggerMode_enum_tooltipTriggerMode,
          key: 'trigger_mode_enum_tooltip_trigger_mode',
          opt: true);
  static bool? _$enableFeedback_bool(TooltipModel v) => v.enableFeedback_bool;
  static const Field<TooltipModel, bool> _f$enableFeedback_bool = Field(
      'enableFeedback_bool', _$enableFeedback_bool,
      key: 'enable_feedback_bool', opt: true);

  @override
  final MappableFields<TooltipModel> fields = const {
    #height_double: _f$height_double,
    #padding_edgeInsets: _f$padding_edgeInsets,
    #margin_edgeInsets: _f$margin_edgeInsets,
    #verticalOffset_double: _f$verticalOffset_double,
    #preferBelow_bool: _f$preferBelow_bool,
    #excludeFromSemantics_bool: _f$excludeFromSemantics_bool,
    #decoration_boxDecoration: _f$decoration_boxDecoration,
    #textStyle_textStyleString: _f$textStyle_textStyleString,
    #textAlign_enum_textAlign: _f$textAlign_enum_textAlign,
    #waitDuration_duration: _f$waitDuration_duration,
    #showDuration_duration: _f$showDuration_duration,
    #triggerMode_enum_tooltipTriggerMode:
        _f$triggerMode_enum_tooltipTriggerMode,
    #enableFeedback_bool: _f$enableFeedback_bool,
  };

  static TooltipModel _instantiate(DecodingData data) {
    return TooltipModel(
        height_double: data.dec(_f$height_double),
        padding_edgeInsets: data.dec(_f$padding_edgeInsets),
        margin_edgeInsets: data.dec(_f$margin_edgeInsets),
        verticalOffset_double: data.dec(_f$verticalOffset_double),
        preferBelow_bool: data.dec(_f$preferBelow_bool),
        excludeFromSemantics_bool: data.dec(_f$excludeFromSemantics_bool),
        decoration_boxDecoration: data.dec(_f$decoration_boxDecoration),
        textStyle_textStyleString: data.dec(_f$textStyle_textStyleString),
        textAlign_enum_textAlign: data.dec(_f$textAlign_enum_textAlign),
        waitDuration_duration: data.dec(_f$waitDuration_duration),
        showDuration_duration: data.dec(_f$showDuration_duration),
        triggerMode_enum_tooltipTriggerMode:
            data.dec(_f$triggerMode_enum_tooltipTriggerMode),
        enableFeedback_bool: data.dec(_f$enableFeedback_bool));
  }

  @override
  final Function instantiate = _instantiate;

  static TooltipModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TooltipModel>(map);
  }

  static TooltipModel fromJson(String json) {
    return ensureInitialized().decodeJson<TooltipModel>(json);
  }
}

mixin TooltipModelMappable {
  String toJson() {
    return TooltipModelMapper.ensureInitialized()
        .encodeJson<TooltipModel>(this as TooltipModel);
  }

  Map<String, dynamic> toMap() {
    return TooltipModelMapper.ensureInitialized()
        .encodeMap<TooltipModel>(this as TooltipModel);
  }

  TooltipModelCopyWith<TooltipModel, TooltipModel, TooltipModel> get copyWith =>
      _TooltipModelCopyWithImpl(this as TooltipModel, $identity, $identity);
  @override
  String toString() {
    return TooltipModelMapper.ensureInitialized()
        .stringifyValue(this as TooltipModel);
  }

  @override
  bool operator ==(Object other) {
    return TooltipModelMapper.ensureInitialized()
        .equalsValue(this as TooltipModel, other);
  }

  @override
  int get hashCode {
    return TooltipModelMapper.ensureInitialized()
        .hashValue(this as TooltipModel);
  }
}

extension TooltipModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TooltipModel, $Out> {
  TooltipModelCopyWith<$R, TooltipModel, $Out> get $asTooltipModel =>
      $base.as((v, t, t2) => _TooltipModelCopyWithImpl(v, t, t2));
}

abstract class TooltipModelCopyWith<$R, $In extends TooltipModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get padding_edgeInsets;
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get margin_edgeInsets;
  BoxDecorationModelCopyWith<$R, BoxDecorationModel, BoxDecorationModel>?
      get decoration_boxDecoration;
  $R call(
      {double? height_double,
      EdgeInsetsModel? padding_edgeInsets,
      EdgeInsetsModel? margin_edgeInsets,
      double? verticalOffset_double,
      bool? preferBelow_bool,
      bool? excludeFromSemantics_bool,
      BoxDecorationModel? decoration_boxDecoration,
      String? textStyle_textStyleString,
      TextAlign? textAlign_enum_textAlign,
      Duration? waitDuration_duration,
      Duration? showDuration_duration,
      TooltipTriggerMode? triggerMode_enum_tooltipTriggerMode,
      bool? enableFeedback_bool});
  TooltipModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TooltipModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TooltipModel, $Out>
    implements TooltipModelCopyWith<$R, TooltipModel, $Out> {
  _TooltipModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TooltipModel> $mapper =
      TooltipModelMapper.ensureInitialized();
  @override
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get padding_edgeInsets => $value.padding_edgeInsets?.copyWith
          .$chain((v) => call(padding_edgeInsets: v));
  @override
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get margin_edgeInsets => $value.margin_edgeInsets?.copyWith
          .$chain((v) => call(margin_edgeInsets: v));
  @override
  BoxDecorationModelCopyWith<$R, BoxDecorationModel, BoxDecorationModel>?
      get decoration_boxDecoration => $value.decoration_boxDecoration?.copyWith
          .$chain((v) => call(decoration_boxDecoration: v));
  @override
  $R call(
          {Object? height_double = $none,
          Object? padding_edgeInsets = $none,
          Object? margin_edgeInsets = $none,
          Object? verticalOffset_double = $none,
          Object? preferBelow_bool = $none,
          Object? excludeFromSemantics_bool = $none,
          Object? decoration_boxDecoration = $none,
          Object? textStyle_textStyleString = $none,
          Object? textAlign_enum_textAlign = $none,
          Object? waitDuration_duration = $none,
          Object? showDuration_duration = $none,
          Object? triggerMode_enum_tooltipTriggerMode = $none,
          Object? enableFeedback_bool = $none}) =>
      $apply(FieldCopyWithData({
        if (height_double != $none) #height_double: height_double,
        if (padding_edgeInsets != $none)
          #padding_edgeInsets: padding_edgeInsets,
        if (margin_edgeInsets != $none) #margin_edgeInsets: margin_edgeInsets,
        if (verticalOffset_double != $none)
          #verticalOffset_double: verticalOffset_double,
        if (preferBelow_bool != $none) #preferBelow_bool: preferBelow_bool,
        if (excludeFromSemantics_bool != $none)
          #excludeFromSemantics_bool: excludeFromSemantics_bool,
        if (decoration_boxDecoration != $none)
          #decoration_boxDecoration: decoration_boxDecoration,
        if (textStyle_textStyleString != $none)
          #textStyle_textStyleString: textStyle_textStyleString,
        if (textAlign_enum_textAlign != $none)
          #textAlign_enum_textAlign: textAlign_enum_textAlign,
        if (waitDuration_duration != $none)
          #waitDuration_duration: waitDuration_duration,
        if (showDuration_duration != $none)
          #showDuration_duration: showDuration_duration,
        if (triggerMode_enum_tooltipTriggerMode != $none)
          #triggerMode_enum_tooltipTriggerMode:
              triggerMode_enum_tooltipTriggerMode,
        if (enableFeedback_bool != $none)
          #enableFeedback_bool: enableFeedback_bool
      }));
  @override
  TooltipModel $make(CopyWithData data) => TooltipModel(
      height_double: data.get(#height_double, or: $value.height_double),
      padding_edgeInsets:
          data.get(#padding_edgeInsets, or: $value.padding_edgeInsets),
      margin_edgeInsets:
          data.get(#margin_edgeInsets, or: $value.margin_edgeInsets),
      verticalOffset_double:
          data.get(#verticalOffset_double, or: $value.verticalOffset_double),
      preferBelow_bool:
          data.get(#preferBelow_bool, or: $value.preferBelow_bool),
      excludeFromSemantics_bool: data.get(#excludeFromSemantics_bool,
          or: $value.excludeFromSemantics_bool),
      decoration_boxDecoration: data.get(#decoration_boxDecoration,
          or: $value.decoration_boxDecoration),
      textStyle_textStyleString: data.get(#textStyle_textStyleString,
          or: $value.textStyle_textStyleString),
      textAlign_enum_textAlign: data.get(#textAlign_enum_textAlign,
          or: $value.textAlign_enum_textAlign),
      waitDuration_duration:
          data.get(#waitDuration_duration, or: $value.waitDuration_duration),
      showDuration_duration:
          data.get(#showDuration_duration, or: $value.showDuration_duration),
      triggerMode_enum_tooltipTriggerMode: data.get(
          #triggerMode_enum_tooltipTriggerMode,
          or: $value.triggerMode_enum_tooltipTriggerMode),
      enableFeedback_bool:
          data.get(#enableFeedback_bool, or: $value.enableFeedback_bool));

  @override
  TooltipModelCopyWith<$R2, TooltipModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TooltipModelCopyWithImpl($value, $cast, t);
}
