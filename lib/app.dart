import 'package:coffee_shop_with_block/bloc/coffee/coffee_bloc.dart';
import 'package:coffee_shop_with_block/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CoffeeBloc()),
      ],
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true),
        home: const IntroPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
