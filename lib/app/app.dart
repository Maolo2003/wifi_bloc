import 'package:flutter/material.dart';
import 'package:wifi_bloc/app/presentation/bloc/internet_bloc/internet_basic_bloc.dart';
import 'package:wifi_bloc/app/presentation/views/home_view/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InternetBasicBloc>(
            create: (context) => InternetBasicBloc(),
        ),
      ],
      child: const MaterialApp(
        title: 'MaOlO',
        home: HomeView(),
      ),
    );
  }
}
