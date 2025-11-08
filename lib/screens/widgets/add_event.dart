import 'package:addevent/screens/cubits/event/event_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventFormWidget extends StatelessWidget {
  const EventFormWidget({
    super.key,
    required this.titleController,
    required this.detailsController,
  });

  final TextEditingController titleController;
  final TextEditingController detailsController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AlertDialog(
        title: const Text('Add Events'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: detailsController,
              decoration: const InputDecoration(labelText: 'Details'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.read<EventsCubit>().addEvents(
                titleController.text,
                detailsController.text,
                DateTime.now(),
              );
              Navigator.pop(context);
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
