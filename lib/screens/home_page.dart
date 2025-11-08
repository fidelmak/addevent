import 'package:addevent/screens/cubits/event/event_cubit.dart';
import 'package:addevent/screens/cubits/event/event_state.dart';
import 'package:addevent/screens/cubits/theme/theme_cubit.dart';
import 'package:addevent/screens/cubits/theme/theme_state.dart';
import 'package:addevent/screens/widgets/add_event.dart';
import 'package:addevent/screens/widgets/edit_event.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool lightMode = true;
  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final detailsController = TextEditingController();
    final editTitleController = TextEditingController();
    final editDetailsController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.book),
        title: const Text('My Events'),
        actions: [
          BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              return IconButton(
                onPressed: () {
                  context.read<ThemeCubit>().toggleTheme();
                },
                icon: Icon(Icons.dark_mode_outlined),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<EventsCubit, EventState>(
        builder: (context, state) {
          if (state.events.isEmpty) {
            return const Center(child: Text('No Events yet'));
          }

          return ListView.builder(
            itemCount: state.events.length,
            itemBuilder: (context, index) {
              final Events = state.events[index];
              return GestureDetector(
                onTap: () {
                  editTitleController.text = Events.title;
                  editDetailsController.text = Events.details;

                  showDialog(
                    context: context,
                    builder: (_) => EditFormWidget(
                      titleController: editTitleController,
                      detailsController: editDetailsController,
                      Events: Events,
                    ),
                  );
                },
                child: Dismissible(
                  onDismissed: (_) {
                    context.read<EventsCubit>().deleteEvents(
                      state.events[index].id,
                    );
                  },
                  key: Key(state.events[index].id),
                  //background: Colors.transparent,
                  background: slideLeftBackground(),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.white),

                      color: Theme.of(context).primaryColor.withAlpha(30),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    margin: EdgeInsets.all(12),
                    child: ListTile(
                      title: Text(Events.title),
                      subtitle: Text(Events.details),

                      trailing: Text(DateFormat('EEEE').format(Events.date)),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => EventFormWidget(
              titleController: titleController,
              detailsController: detailsController,
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget slideLeftBackground() {
    return Container(
      color: Colors.red,
      child: Align(
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(Icons.delete, color: Colors.white),
            Text(
              " Delete",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
