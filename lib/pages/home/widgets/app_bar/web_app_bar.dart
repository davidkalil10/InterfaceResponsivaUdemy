import 'package:flutter/material.dart';
import 'package:interface_udemy/pages/home/widgets/app_bar/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          Text("Flutter"),
          SizedBox(
            width: 32,
          ),
          WebAppBarResponsiveContent(),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          SizedBox(width: 24),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              child: Text("Fazer login"),
              style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: Colors.white, width: 2)),
              onPressed: (){},
            ),
          ),
          SizedBox(width: 8),
          SizedBox(
            height: 39,
            child: ElevatedButton(
              child: Text("Cadastre-se"),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
               onPrimary: Colors.black
              ),
              onPressed: (){},
            ),
          )
        ],
      ),
    );
  }
}
