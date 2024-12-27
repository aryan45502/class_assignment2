import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticCubit extends Cubit<int> {
  ArithmeticCubit() : super(0);

  void add(int first, int second) {
    emit(first + second);
  }

  void subtract(int first, int second) {
    emit(first - second);
  }

  void multiply(int first, int second) {
    emit(first * second);
  }
}
