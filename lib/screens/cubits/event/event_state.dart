// task_state.dart
import 'package:addevent/models/event_card_model.dart';
import 'package:equatable/equatable.dart';

class EventState extends Equatable {
  final List<EventModel> events;

  const EventState({this.events = const []});

  EventState copyWith({List<EventModel>? events}) {
    return EventState(events: events ?? this.events);
  }

  @override
  List<Object> get props => [events];
}
