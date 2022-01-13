import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class SeatCubitCubit extends Cubit<List<String>> {
  SeatCubitCubit() : super([]);

  void selectSeat(String id) {
    if (!isSelected(id)) {
      state.add(id);
    } else {
      state.remove(id);
    }
    emit(state);
  }

  bool isSelected(String id) {
    int index = state.indexOf(id);
    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }
}
