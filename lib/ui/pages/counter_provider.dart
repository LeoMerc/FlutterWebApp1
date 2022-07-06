import 'package:flutter/material.dart';
import 'package:flutter_web/ui/pages/shared/custom_app_menu.dart';
import 'package:flutter_web/ui/pages/shared/custom_flat_button.dart';

class CounterProviderPage extends StatefulWidget {
  @override
  _CounterProviderPageState createState() => _CounterProviderPageState();
}

class _CounterProviderPageState extends State<CounterProviderPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppMenu(),
          Spacer(),
          
          

          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text('Contador Provider', style: TextStyle(fontSize: 20)),
            )),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Contador: $counter',
                style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                  text: 'Incrementar',
                  onPressed: () => setState(() => counter++)),
              CustomFlatButton(
                  text: 'Decrementar',
                  onPressed: () => setState(() => counter--)),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
