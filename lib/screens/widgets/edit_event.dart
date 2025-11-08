import 'package:addevent/models/event_card_model.dart';
import 'package:addevent/screens/cubits/event/event_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditFormWidget extends StatelessWidget {
  const EditFormWidget({
    super.key,
    required this.titleController,
    required this.detailsController,
    required this.Events,
  });

  final TextEditingController titleController;
  final TextEditingController detailsController;
  final EventModel Events;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Edit Task'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: titleController,
            decoration: const InputDecoration(labelText: 'Title'),
          ),
          TextField(
            controller: detailsController,
            decoration: const InputDecoration(labelText: 'Details'),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            final updatedEvent = Events.copyWith(
              title: titleController.text,
              details: detailsController.text,
            );
            context.read<EventsCubit>().updateEvents(updatedEvent);
            Navigator.pop(context);
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}
