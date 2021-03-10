import 'package:flutter/material.dart';
import 'package:interface_udemy/breakpoints.dart';

class AdvantagesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildHorizontalAdvantage(String title, String subtitle){
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          SizedBox(width: 8,),
          Column(
            children: [
              Text(title,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold)),
              Text(subtitle,style: TextStyle(color: Colors.white),)
            ],
          )
        ],
      );
    }

    Widget buildVerticalAdvantage(String title, String subtitle){
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          SizedBox(height: 8,),
          Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold)),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),)
        ],
      );
    }
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth >= mobileBreakPoint)
        return Container(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey)
              )
          ),
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            runSpacing: 16,
            spacing: 8,
            children: [
              buildHorizontalAdvantage("+45.000 alunos", "Didática Garantida"),
              buildHorizontalAdvantage("+45.000 alunos", "Didática Garantida"),
              buildHorizontalAdvantage("+45.000 alunos", "Didática Garantida"),
            ],
          ),
        );
        return Container(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey)
              )
          ),
          child: Row(
            children: [
              Expanded(child: buildVerticalAdvantage("+45.000 alunos", "Didática Garantida")),
              SizedBox(width: 4,),
              Expanded(child: buildVerticalAdvantage("+45.000 alunos", "Didática Garantida")),
              SizedBox(width: 4,),
              Expanded(child: buildVerticalAdvantage("+45.000 alunos", "Didática Garantida")),
            ],
          ),
        );
      },
    );
  }
}
