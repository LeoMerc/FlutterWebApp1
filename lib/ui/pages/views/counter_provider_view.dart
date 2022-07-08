import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_web/ui/pages/shared/custom_app_menu.dart';
import 'package:flutter_web/ui/pages/shared/custom_flat_button.dart';

class CounterProviderView extends StatefulWidget {
  final String base;

   CounterProviderView({required this.base}); 

  

  @override
  _CounterProviderViewState createState() => _CounterProviderViewState();
}

class _CounterProviderViewState extends State<CounterProviderView> {

  int counter = 0;
  
    void initState() {
    // TODO: implement initState
    super.initState();
    if(int.tryParse(widget.base) != null){
    counter = int.parse(widget.base);

    }

    else{
      counter = 2;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
    );
  }
}
