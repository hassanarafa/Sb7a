import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Cubit/project_cubit.dart';
import 'Theme.dart';
import 'Pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Project_Cubit(),
      child: MaterialApp(
          theme: themedata,
          debugShowCheckedModeBanner: false,
          home: HomePage()),
    );
  }
}
