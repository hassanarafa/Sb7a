import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progect_1/Cubit/project_state.dart';

class Project_Cubit extends Cubit<Project_State> {
  int Team_1 = 0;

  Project_Cubit() : super(IncrementState());

  void increment({required int counter}) {
    if (counter > 3) {
      Team_1 = 0;
      emit(IncrementState());
    } else {
      Team_1 += counter;
      emit(IncrementState());
    }
  }
}
