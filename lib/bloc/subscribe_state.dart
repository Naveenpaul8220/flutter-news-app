
abstract class SubscribeState {}

class SubscribeInitialState extends SubscribeState {}

class SubscriptionSelectedState extends SubscribeState {
  final int selectedValue;
  final String amount;

  SubscriptionSelectedState(this.selectedValue, this.amount);
}
