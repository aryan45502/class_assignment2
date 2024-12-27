import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

class CircleAreaCubit extends Cubit<double> {
  CircleAreaCubit() : super(0.0);

  void calculateArea(double radius) {
    emit(pi * radius * radius);
  }
}
