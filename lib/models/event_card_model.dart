import 'dart:convert';

class EventModel {
  final String id;
  final String title;
  final String details;
  final DateTime date;

  EventModel({
    required this.id,
    required this.title,
    required this.details,
    required this.date,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'details': details,
      'date': date.toIso8601String(),
    };
  }

  factory EventModel.fromMap(Map<String, dynamic> map) {
    return EventModel(
      id: map['id'],
      title: map['title'],
      details: map['details'],
      date: DateTime.parse(map['date']),
    );
  }

  String toJson() => json.encode(toMap());
  factory EventModel.fromJson(String source) =>
      EventModel.fromMap(json.decode(source));

  EventModel copyWith({
    String? id,
    String? title,
    String? details,
    DateTime? date,
  }) {
    return EventModel(
      id: id ?? this.id,
      title: title ?? this.title,
      details: details ?? this.details,
      date: date ?? this.date,
    );
  }
}
