import 'package:counter/presentation/widgets/custom_floating_action_button.dart';
import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Funtions'),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            )
          ],
          // backgroundColor: Colors.lightBlue,
          // foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCounter',
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text(
                clickCounter == 1 ? 'Click' : 'Clicks',
                style: const TextStyle(
                  fontSize: 25,
                ),
              )
            ],
          ),
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          CustomFloatingActionButton(
            icon: Icons.refresh_outlined,
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomFloatingActionButton(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomFloatingActionButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              if (clickCounter == 0) return;
              setState(() {
                clickCounter--;
              });
            },
          ),
        ]));
  }
}
