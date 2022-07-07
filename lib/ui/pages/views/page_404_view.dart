import 'package:flutter/material.dart';
import 'package:flutter_web/ui/pages/shared/custom_flat_button.dart';

class View404 extends StatelessWidget {
  const View404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '404',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              'No se encontro la pagina',
              style: TextStyle(fontSize: 20,),
            ),

            CustomFlatButton(text: 'Regresar', onPressed: () => Navigator.pushNamed(context, '/stateful')),
          ],
        ),
      );
  }
}
