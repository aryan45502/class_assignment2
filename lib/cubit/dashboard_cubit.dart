import 'package:class_assignment2/cubit/area_of_circle_cubit.dart';
import 'package:class_assignment2/cubit/arithemetic_cubit.dart';
import 'package:class_assignment2/cubit/simple_interest_cubit.dart';
import 'package:class_assignment2/view/area_of_circle_view.dart';
import 'package:class_assignment2/view/arithmetic_cubit_view.dart';
import 'package:class_assignment2/view/simple_interest_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._circleAreaCubit,
    this._arithmeticCubit,
    this.simpleInterestCubit,
  ) : super(null);

  final CircleAreaCubit _circleAreaCubit;
  final ArithmeticCubit _arithmeticCubit;
  final SimpleInterestCubit simpleInterestCubit;

  void openCircleAreaCubitView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => BlocProvider.value(
          value: _circleAreaCubit,
          child: CircleAreaCubitView(),
        ),
      ),
    );
  }

  void openArithmeticView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => BlocProvider.value(
          value: _arithmeticCubit,
          child: ArithmeticCubitView(),
        ),
      ),
    );
  }

  void openSimpleIntrestCubitView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => BlocProvider.value(
          value: simpleInterestCubit,
          child: SimpleInterestCubitView(),
        ),
      ),
    );
  }
}
