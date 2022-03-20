import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paricial2/themes/colors_list.dart';

class searchBarwidget extends StatelessWidget {
  
    @override
    Widget build(BuildContext context) {
      return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(
          left: 8.0,
          right: 8.0,
        ),
        height: 50.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: TextField(
          cursorColor: ColorList.disableColor,
          decoration: InputDecoration(
            prefix: Icon(
              CupertinoIcons.search_circle,
              size: 40.0,
              color: ColorList.disableColor,
            ),
            suffixIcon: Icon(
                  Icons.tune,
                  color: ColorList.disableColor,
                  size: 28.0,
            ),
            border:  InputBorder.none,
            hintStyle: TextStyle(
              color: ColorList.disableColor,
              fontSize: 18.0
            ),
              hintText: "Buscar..."
          ),
        ),
      );
    }
  }
