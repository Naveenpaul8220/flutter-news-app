
import 'package:bloc/bloc.dart';
import 'subscribe_event.dart';
import 'subscribe_state.dart';

class SubscribeBloc extends Bloc<SubscribeEvent, SubscribeState> {
  SubscribeBloc() : super(SubscribeInitialState()) {
    on<RadioButtonSelected>((event, emit) {
      String amount;
      switch (event.selectedValue) {
        case 1:
          amount = '\$45';
          break;
        case 2:
          amount = '\$500';
          break;
        case 3:
          amount = '\$900';
          break;
        default:
          amount = '';
      }
      emit(SubscriptionSelectedState(event.selectedValue, amount));
    });
  }
}
