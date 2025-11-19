import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_page_state.dart';
part 'home_page_event.dart';

class HomePageBloc extends Bloc<HomePageBlocEvent, HomePageBlocState> {
  HomePageBloc() : super(HomePageBlocInitial()) {
    on<IncrementCounterEvent>((event, emit) {
      final currentCounter = state is HomePageBlocUpdated
          ? (state as HomePageBlocUpdated).counter
          : 0;

      final newCounter = currentCounter + 1;
      emit(HomePageBlocUpdated(newCounter));
    });

    on<HomePageBlocLoadData>((event, emit) {
      print("Вроде бы блок работает");
    });
  }
}
