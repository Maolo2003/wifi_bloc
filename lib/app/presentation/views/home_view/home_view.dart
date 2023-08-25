import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wifi_bloc/app/presentation/bloc/internet_bloc/internet_basic_bloc.dart';
 class HomeView extends StatelessWidget {
   const HomeView({super.key});

   @override
   Widget build(BuildContext context) {
     return  Scaffold(
       body: Center(
         child: BlocBuilder<InternetBasicBloc, InternetBasicState>(
           builder: (context, state){
             if(state is InternetConnectedState){
               return const Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.wifi),
                   SizedBox(width: 10,),
                   Text('Connected'),
                 ],
               );
             }else if(state is InternetConnectedState) {
               return const Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.wifi),
                   SizedBox(width: 10,),
                   Text('Connected'),
                 ],
               );
             }
               else{
                 return const Text('Loading...');
             }
           },
         ),
       ),
     );
   }
 }
