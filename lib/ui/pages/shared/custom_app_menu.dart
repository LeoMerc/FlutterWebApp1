import 'package:flutter/material.dart';
import 'package:flutter_web/locator.dart';
import 'package:flutter_web/services/navigation_service.dart';
import 'package:flutter_web/ui/pages/shared/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ( _ , constraints) =>
     (constraints.maxWidth > 520) ? _TableDesktopMenu() : _MobileMenu()
    );
  }
}

class _TableDesktopMenu extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            onPressed: () {
              locator<NavigationService>().navigateTo('/stateful');
              // Navigator.pushNamed(context, '/stateful');
            },
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Contador Provider',
            onPressed: () {
              locator<NavigationService>().navigateTo('/provider');

              // Navigator.pushNamed(context, '/provider');
            },
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Otra pagina',
            onPressed: () {
              locator<NavigationService>().navigateTo('/abc');

              // Navi gator.pushNamed(context, '/abc');
            },
            color: Colors.black,
          ),

          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Stateful100',
            onPressed: () {
              locator<NavigationService>().navigateTo('/stateful/100');

              // Navi gator.pushNamed(context, '/abc');
            },
            color: Colors.black,
          ),

          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Provider200',
            onPressed: () {
              locator<NavigationService>().navigateTo('/provider?q=200');

              // Navi gator.pushNamed(context, '/abc');
            },
            color: Colors.black,
          ),


        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            onPressed: () {
              locator<NavigationService>().navigateTo('/stateful');
              // Navigator.pushNamed(context, '/stateful');
            },
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Contador Provider',
            onPressed: () {
              locator<NavigationService>().navigateTo('/provider');

              // Navigator.pushNamed(context, '/provider');
            },
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Otra pagina',
            onPressed: () {
              locator<NavigationService>().navigateTo('/abc');

              // Navi gator.pushNamed(context, '/abc');
            },
            color: Colors.black,
          ),

          
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Stateful100',
            onPressed: () {
              locator<NavigationService>().navigateTo('/stateful/100');

              // Navi gator.pushNamed(context, '/abc');
            },
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
