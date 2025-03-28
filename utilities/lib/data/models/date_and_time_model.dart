import "package:dart_mappable/dart_mappable.dart";
import "package:equatable/equatable.dart";
import "package:flutter/material.dart";
import "package:intl/intl.dart";
import "package:timezone/timezone.dart" as tz;
import "package:utilities/logger/logger.dart";
import "package:utilities/utils/loggers.dart";

class DateAndTimeMapper extends SimpleMapper<DateAndTime> {
  const DateAndTimeMapper();

  @override
  DateAndTime decode(dynamic value) {
    final map = value as Map<String, dynamic>;
    final timeDate = value.containsKey("time")
        ? DateTime.tryParse(map["time"] as String)
        : null;
    final time = timeDate != null ? TimeOfDay.fromDateTime(timeDate) : null;
    final date = map.containsKey("date")
        ? DateTime.tryParse(map["date"] as String)
        : null;
    return DateAndTime(date ?? DateTime.now(), time);
  }

  @override
  Object? encode(DateAndTime self) {
    final encoded = {
      "date": self._justDate.toString(),
    };
    if (self.time != null) {
      encoded["time"] = self.dateTime.copyWith(isUtc: true).toString();
    }
    return encoded;
  }
}

/// Allows you to store the date and an optional time, with lots of conversion and formatting helpers
///
/// MUST use the DateAndTimeMapper to encode and decode DateAndTime objects
class DateAndTime extends Equatable {
  final DateTime _justDate;
  final TimeOfDay? _time;

  // DateTime get dateTime => _time == null ? _justDate : _justDate.setTimeOfDay(_time!);

  DateAndTime(DateTime date, TimeOfDay? time)
      : _justDate =
            DateTime(date.year, date.month, date.day).copyWith(isUtc: true),
        _time = time {
    AppLogger.print(
      "DateAndTime created: $_justDate $_time",
      [UtilitiesLoggers.timezone],
    );
  }

  // static const fromMap = DateAndTimeMapper.fromMap;
  // static const fromJson = DateAndTimeMapper.fromJson;

  // Timezone Conversion

  DateAndTime toUtc({tz.Location? timezone}) {
    AppLogger.print("Converting to UTC", [UtilitiesLoggers.timezone]);
    if (_time == null) return this;
    final timezoneTime =
        timezone != null ? tz.TZDateTime.from(dateTime, timezone) : dateTime;
    final timeZoneOffset = timezoneTime.timeZoneOffset;
    final toUtc = dateTime.subtract(timeZoneOffset).copyWith(isUtc: true);
    return toUtc.toDateAndTime();
  }

  DateAndTime toTimezone({tz.Location? timezone}) {
    AppLogger.print(
      "Converting to timezone: ${timezone?.name}",
      [UtilitiesLoggers.timezone],
    );
    if (_time == null) return this;
    final dateTimeAdded = _justDate.setTimeOfDay(_time!);
    final timezoneTime = timezone != null
        ? tz.TZDateTime.from(dateTimeAdded, timezone)
        : dateTimeAdded;
    final timeZoneOffset = timezoneTime.timeZoneOffset;
    final toTimezone = dateTimeAdded.add(timeZoneOffset).toDateAndTime();
    return toTimezone;
  }

  DateAndTime toLocal() {
    AppLogger.print("Converting to local", [UtilitiesLoggers.timezone]);
    if (_time == null) {
      AppLogger.print(
        "Time is null -> returning $this",
        [UtilitiesLoggers.timezone],
      );
      return this;
    }
    final dateTimeAdded = _justDate.setTimeOfDay(_time!);
    final utc = dateTimeAdded.copyWith(isUtc: true);
    final local = utc.toLocal();
    final dateAndTime = local.toDateAndTime();
    AppLogger.print(
      "Converted to local: $dateAndTime",
      [UtilitiesLoggers.timezone],
    );
    return dateAndTime;
  }

  // Date Format

  DateFormat get dateFormatter {
    var dateString = "";
    if (_justDate.year != DateTime.now().year) {
      dateString += "y";
    }
    dateString += "MMMMd";
    return DateFormat(dateString);
  }

  DateFormat get timeFormatter {
    if (_time?.minute == 0) return DateFormat.j();
    return DateFormat.jm();
  }

  // Formatted Date Strings

  String timezoneAbbr(tz.Location timezone) =>
      timezone.timeZone(0).abbreviation;

  String formattedDateOnly({tz.Location? timezone}) {
    if (_time == null) return dateFormatter.format(_justDate);
    final _dateTimezone = toTimezone(timezone: timezone);
    return dateFormatter.format(_dateTimezone._justDate);
  }

  String? formattedTimeOnly({tz.Location? timezone, bool showTimezone = true}) {
    if (_time == null) return null;
    final timeWithTimezone = toTimezone(timezone: timezone);
    final timezoneString =
        timezone != null && showTimezone ? " ${timezoneAbbr(timezone)}" : "";
    return "${timeFormatter.format(timeWithTimezone.dateTime)}$timezoneString";
  }

  String? formattedTimeOnlyLocal() {
    if (_time == null) return null;
    final localDate = toLocal();
    return timeFormatter.format(localDate.dateTime);
  }

  String formattedString({tz.Location? timezone, bool showTimezone = true}) {
    if (_time == null) return dateFormatter.format(_justDate);
    final formatter = timeFormatter.addPattern(dateFormatter.pattern, ", ");
    final timezoneString =
        timezone != null && showTimezone ? " ${timezoneAbbr(timezone)}" : "";
    return "${formatter.format(toTimezone(timezone: timezone).dateTime)}$timezoneString";
  }

  String formattedStringLocal() {
    if (_time == null) return dateFormatter.format(_justDate);
    final formatter = timeFormatter.addPattern(dateFormatter.pattern, ", ");
    return formatter.format(toLocal().dateTime);
  }

  String formattedDateRange(
    DateAndTime? until, {
    tz.Location? timezone,
    bool showTimezone = true,
  }) {
    if (until == null) return formattedString(timezone: timezone);
    final timezoneString =
        timezone != null && showTimezone ? " ${timezoneAbbr(timezone)}" : "";
    if (isSameDay(until, timezone: timezone)) {
      return "${formattedTimeOnly(timezone: timezone, showTimezone: false)} - ${until.formattedTimeOnly(timezone: timezone, showTimezone: false)}, ${formattedDateOnly(timezone: timezone)}$timezoneString";
    }
    return "${formattedDateOnly(timezone: timezone)} - ${until.formattedDateOnly(timezone: timezone)}$timezoneString";
  }

  String formattedDateRangeLocal(DateAndTime? until) {
    if (until == null) return formattedStringLocal();
    if (isSameDay(until)) {
      return "${formattedTimeOnlyLocal()} - ${until.formattedTimeOnlyLocal()}, ${formattedDateOnly()}";
    }
    return "${formattedDateOnly()} - ${until.formattedDateOnly()}";
  }

  // Helpers

  bool isSameDay(DateAndTime other, {tz.Location? timezone}) {
    if (this == other) return true;
    final thisDate = toTimezone(timezone: timezone).dateTime;
    final otherDate = other.toTimezone(timezone: timezone).dateTime;
    return thisDate.day == otherDate.day &&
        thisDate.month == otherDate.month &&
        thisDate.year == otherDate.year;
  }

  DateTime get dateTime =>
      (_time == null ? _justDate : _justDate.setTimeOfDay(_time!))
          .copyWith(isUtc: true);

  TimeOfDay? get time => _time;

  DateAndTime copyWith({DateTime? date, TimeOfDay? time}) {
    return DateAndTime(date ?? _justDate, time ?? _time);
  }

  // Equality

  @override
  List<Object?> get props => [dateTime];

  bool operator >=(DateAndTime other) =>
      dateTime.microsecond >= other.dateTime.microsecond;
  bool operator >(DateAndTime other) =>
      dateTime.microsecond > other.dateTime.microsecond;
  bool operator <(DateAndTime other) =>
      dateTime.microsecond < other.dateTime.microsecond;
  bool operator <=(DateAndTime other) =>
      dateTime.microsecond <= other.dateTime.microsecond;
}

extension DateTimeExtension on DateTime {
  DateTime setTimeOfDay(TimeOfDay time) =>
      DateTime(year, month, day, time.hour, time.minute);

  DateAndTime toDateAndTime() =>
      DateAndTime(this, TimeOfDay(hour: hour, minute: minute));
}
