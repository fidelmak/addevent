import 'package:addevent/screens/cubits/event/event_cubit.dart';
import 'package:addevent/screens/cubits/theme/theme_cubit.dart';
import 'package:addevent/screens/cubits/theme/theme_state.dart';
import 'package:addevent/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
        BlocProvider(create: (context) => EventsCubit()),
      ],

      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Event App',

            home: const MyHomePage(),
            theme: state.themeData,
          );
        },
      ),
    );
  }
}
