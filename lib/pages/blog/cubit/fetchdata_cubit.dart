import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:learning__flutter/pages/blog/model.dart';
import 'package:learning__flutter/pages/blog/repository.dart';

part 'fetchdata_state.dart';

class FetchdataCubit extends Cubit<FetchdataState> {
  final UserRepository _repository;
  FetchdataCubit(this._repository) : super(FetchdataInitial());

  Future<void> fetchdata() async {
    emit(dataLoadingState());
    await Future.delayed(Duration(seconds: 2));
    try {
      final response = await _repository.gettodo();
      emit(dataLoadedState(response));
    } catch (e) {
      emit(dataErrorState(e.toString()));
    }
  }
}
