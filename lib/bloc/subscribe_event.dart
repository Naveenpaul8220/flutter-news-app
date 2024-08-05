
abstract class SubscribeEvent {}

class RadioButtonSelected extends SubscribeEvent {
  final int selectedValue;

  RadioButtonSelected(this.selectedValue);
}
