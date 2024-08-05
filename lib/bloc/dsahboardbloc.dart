
import 'package:bloc/bloc.dart';

import 'dashboardevent.dart';
import 'dashboardstate.dart';


class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardInitialState()) {
    on<SubscribeButtonClicked>((event, emit) {
      emit(NavigateToSubscribeState());
    });
  }
}
