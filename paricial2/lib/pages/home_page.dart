import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paricial2/themes/colors_list.dart';

class HomePage extends StatelessWidget {
  static final routeName = "HomePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: _bodyPage(context),
      ),
    );
  }

  Widget _bodyPage(BuildContext context){
   return Column(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       Padding(
         padding: EdgeInsets.only(
           top: 16.0,
           left: 16.0,
           right: 16.0,
         ),
         child:_appbart() ,
         )
     ],
   );

  }

Widget _appbart()
{
  return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: Icon(Icons.menu),
              onTap: (){
                print("menu abierto");
              },
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children:[
                    Text(
                      "Comercial SIVAR" , style: TextStyle(
                            color: ColorList.backgroundButton,
                            fontWeight: FontWeight.bold,
                            fontSize: 19.0,
                      ),
                    ),
                    Row(
                      
                      children: [
                        Icon(Icons.shop),
                      ],
                    )
                    ],
                  
                )
              ],
            ),
          ],
  );
}


}

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

