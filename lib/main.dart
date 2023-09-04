import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task8/cubit/get_news_cubit.dart';
import 'package:task8/screens/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetNewsCubit>(
          create: (BuildContext context) => GetNewsCubit(),
        ),
      ],
    
    
    child:  const MaterialApp(
      debugShowCheckedModeBanner: false, // TRY THIS: Set to true to see the
      home: 
      MyHomePage(), // debug banner in the top right corner
    ),
    );
    
      
  }
}
