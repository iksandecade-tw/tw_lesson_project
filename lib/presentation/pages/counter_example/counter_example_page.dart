import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CounterExamplePage extends StatefulWidget {
  const CounterExamplePage({super.key});

  @override
  State<CounterExamplePage> createState() => _CounterExamplePageState();
}

class _CounterExamplePageState extends State<CounterExamplePage> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Stack(children: [
        Center(
          child: Text('$count'),
        ),
        Positioned(
            right: 24,
            bottom: 42,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => setState(() {
                    count++;
                  }),
                  child: Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.purple[50],
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 4,
                              offset: Offset(0, 3)),
                        ]),
                    child: Icon(Icons.add),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    count--;
                  }),
                  child: Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.purple[50],
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 4,
                              offset: Offset(0, 3)),
                        ]),
                    child: Icon(Icons.remove),
                  ),
                )
              ],
            ))
      ]),
    );
  }
}
