
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/subscribe_bloc.dart';
import 'bloc/subscribe_event.dart';
import 'bloc/subscribe_state.dart';
import 'route_generator.dart';

class SubscribePage extends StatefulWidget {
  const SubscribePage({super.key});

  @override
  _SubscribePageState createState() => _SubscribePageState();
}

class _SubscribePageState extends State<SubscribePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SubscribeBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('NewsPulse'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Choose your subscription',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              BlocBuilder<SubscribeBloc, SubscribeState>(
                builder: (context, state) {
                  int _selectedValue = 0;
                  if (state is SubscriptionSelectedState) {
                    _selectedValue = state.selectedValue;
                  }
                  return Column(
                    children: [
                      _buildSubscriptionCard(
                          context, 'Monthly', '\$45', 1, _selectedValue),
                      const SizedBox(height: 16.0),
                      _buildSubscriptionCard(
                          context, 'Annual', '\$500', 2, _selectedValue),
                      const SizedBox(height: 16.0),
                      _buildSubscriptionCard(
                          context, 'Two years', '\$900', 3, _selectedValue),
                    ],
                  );
                },
              ),
              const Spacer(),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(25.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(RouteGenerator.interestpage);
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white),
                  child: const Text('Proceed'),
                ),
              ),
              BlocBuilder<SubscribeBloc, SubscribeState>(
                builder: (context, state) {
                  if (state is SubscriptionSelectedState) {
                    return Container(
                      padding: const EdgeInsets.all(8.0),
                      color: Colors.amberAccent,
                      child: Text(
                        'You need to Pay: ${state.amount}',
                        style: const TextStyle(fontSize: 18.0),
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSubscriptionCard(BuildContext context, String title, String price,
      int value, int groupValue) {
    return Card(
      child: ListTile(
        leading: Radio<int>(
          value: value,
          groupValue: groupValue,
          fillColor: WidgetStateColor.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return Colors.orange;
            }
            return Colors.black;
          }),
          onChanged: (int? newValue) {
            context
                .read<SubscribeBloc>()
                .add(RadioButtonSelected(newValue!));
          },
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Text('Pay monthly, cancel any time'),
        trailing: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: price,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.black,
                ),
              ),
              const TextSpan(
                text: '/m',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
