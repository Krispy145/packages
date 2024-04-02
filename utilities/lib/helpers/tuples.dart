import 'dart:convert';

/// [Pair] is a data class that holds two values of different types.
class Pair<A, B> {
  /// [first] is the first value of the pair
  final A first;

  /// [second] is the second value of the pair
  final B second;

  /// [Pair] is the constructor for the class
  const Pair(this.first, this.second);

  @override
  String toString() => 'Pair - 1: $first, 2: $second';

  /// [copyWith] is a method that returns a copy of the current instance of the class
  Pair<A, B> copyWith({
    A? first,
    B? second,
  }) {
    return Pair<A, B>(
      first ?? this.first,
      second ?? this.second,
    );
  }

  /// [toMap] is a method that returns a map representation of the current instance of the class
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'first': first,
      'second': second,
    };
  }

  /// [toJson] is a method that returns a json representation of the current instance of the class
  String toJson() => json.encode(toMap());
}

/// [Triple] is a data class that holds three values of different types.
class Triple<A, B, C> {
  /// [first] is the first value of the triple
  final A first;

  /// [second] is the second value of the triple
  final B second;

  /// [third] is the third value of the triple
  final C third;

  /// [Triple] is the constructor for the class
  const Triple(this.first, this.second, this.third);

  @override
  String toString() => 'Triple - 1: $first, 2: $second, 3: $third';

  /// [copyWith] is a method that returns a copy of the current instance of the class
  Triple<A, B, C> copyWith({
    A? first,
    B? second,
    C? third,
  }) {
    return Triple<A, B, C>(
      first ?? this.first,
      second ?? this.second,
      third ?? this.third,
    );
  }

  /// [toMap] is a method that returns a map representation of the current instance of the class
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'first': first,
      'second': second,
      'third': third,
    };
  }

  /// [toJson] is a method that returns a json representation of the current instance of the class
  String toJson() => json.encode(toMap());
}
