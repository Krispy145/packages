/// enum ScalingStyles
enum ScalingStyles {
  /// fixed scaling style
  fixed,

  /// fill scaling style
  fill,

  /// shrink scaling style
  shrink;
}

/// [ScalingStyle] is a class with named constructors for the different scaling styles.
class ScalingStyle {
  /// [dimension] is the dimension of the scaling style
  final double? dimension;

  /// [style] is the style of the scaling style
  final ScalingStyles style;

  /// [ScalingStyle.fill] is the constructor for the [ScalingStyle.fill] scaling style
  const ScalingStyle.fill()
      : style = ScalingStyles.fill,
        dimension = null;

  /// [ScalingStyle.shrink] is the constructor for the [ScalingStyle.shrink] scaling style
  const ScalingStyle.shrink()
      : style = ScalingStyles.shrink,
        dimension = null;

  /// [ScalingStyle.fixed] is the constructor for the [ScalingStyle.fixed] scaling style
  const ScalingStyle.fixed(this.dimension) : style = ScalingStyles.fixed;
}
