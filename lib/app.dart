import 'package:class_assignment2/cubit/area_of_circle_cubit.dart';
import 'package:class_assignment2/cubit/arithemetic_cubit.dart';
import 'package:class_assignment2/cubit/dashboard_cubit.dart';
import 'package:class_assignment2/cubit/simple_interest_cubit.dart';
import 'package:class_assignment2/view/dashboard_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CircleAreaCubit(),
        ),
        BlocProvider(
          create: (context) => ArithmeticCubit(),
        ),
        BlocProvider(
          create: (context) => SimpleInterestCubit(),
        ),
        BlocProvider(
          create: (context) => DashboardCubit(
            context.read<CircleAreaCubit>(),
            context.read<ArithmeticCubit>(),
            context.read<SimpleInterestCubit>(),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter BLoc',
        home: DashboardView(),
      ),
    );
  }
}
