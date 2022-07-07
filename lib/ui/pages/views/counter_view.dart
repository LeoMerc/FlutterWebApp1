import 'package:flutter/material.dart';
import 'package:flutter_web/ui/pages/shared/custom_app_menu.dart';
import 'package:flutter_web/ui/pages/shared/custom_flat_button.dart';

class CounterView extends StatefulWidget {
  final String base;

   CounterView({required this.base});

  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {

  int counter = 0;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(int.tryParse(widget.base) != null){
    counter = int.parse(widget.base);

    }

    else{
      counter = 4;
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
  

          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text('Contador Stateful', style: TextStyle(fontSize: 20)),
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
