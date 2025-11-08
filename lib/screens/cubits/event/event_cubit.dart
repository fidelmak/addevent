// events_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';
import 'package:addevent/models/event_card_model.dart';
import 'package:addevent/screens/cubits/event/event_state.dart';

class EventsCubit extends Cubit<EventState> {
  EventsCubit() : super(const EventState()) {
    _loadEvents();
  }

  final _uuid = const Uuid();
  static const _storageKey = 'saved_events';

  // 🔹 Load events from SharedPreferences
  Future<void> _loadEvents() async {
    final prefs = await SharedPreferences.getInstance();
    final savedData = prefs.getStringList(_storageKey);

    if (savedData != null) {
      final events = savedData.map((jsonStr) {
        return EventModel.fromJson(jsonStr);
      }).toList();

      emit(state.copyWith(events: events));
    }
  }

  // 🔹 Save current events to SharedPreferences
  Future<void> _saveEvents(List<EventModel> events) async {
    final prefs = await SharedPreferences.getInstance();
    final encoded = events.map((e) => e.toJson()).toList();
    await prefs.setStringList(_storageKey, encoded);
  }

  void addEvents(String title, String details, DateTime date) async {
    final newEvent = EventModel(
      id: _uuid.v4(),
      title: title,
      details: details,
      date: date,
    );
    final updatedList = [...state.events, newEvent];
    emit(state.copyWith(events: updatedList));
    await _saveEvents(updatedList);
  }

  void deleteEvents(String id) async {
    final updatedList = state.events.where((e) => e.id != id).toList();
    emit(state.copyWith(events: updatedList));
    await _saveEvents(updatedList);
  }

  void updateEvents(EventModel updatedEvent) async {
    final updatedList = state.events.map((e) {
      return e.id == updatedEvent.id ? updatedEvent : e;
    }).toList();
    emit(state.copyWith(events: updatedList));
    await _saveEvents(updatedList);
  }

  void clearAllEvents() async {
    emit(state.copyWith(events: []));
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_storageKey);
  }
}
