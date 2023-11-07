import 'package:flutter/material.dart';


renderAppbar(){
  return AppBar(
    backgroundColor: Colors.black,

  );
}

renderDrawer(context){
  return Drawer(
    backgroundColor: Colors.black,
    width: MediaQuery.of(context).size.width,
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50.0,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text('X', style: TextStyle(color: Colors.white),),
                  ),
                ),

              ],
            ),
          ),
          InkWell(
            onHover: (val){},
            onTap: (){},
            child: Container(
              padding: EdgeInsets.all(20.0),
              height: 60.0,
              child: Text('ABOUT MINFAC', style: TextStyle(color: Colors.white),),
            ),
          )
        ],
      ),
    )
  );
}