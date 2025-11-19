part of 'home_page_bloc.dart';

abstract class HomePageBlocState {}

class HomePageBlocInitial extends HomePageBlocState {
  final int counter;
  final String message;
  
  HomePageBlocInitial({this.counter = 0, this.message = "Связались с Петей 0 раз"});
}

class HomePageBlocUpdated extends HomePageBlocState {
  final int counter;
  final String message;
  
  HomePageBlocUpdated(this.counter) : message = "Связались с Петей $counter раз";
}