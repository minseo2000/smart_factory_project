import 'package:flutter/material.dart';
import 'package:smart_factory_introduce_page/screen/component.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: renderAppbar(),
      drawer: renderDrawer(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.grey.shade200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(left: 80.0, top: 100.0),
                          child: Text('The MinFac', style: TextStyle(
                            fontSize: 120.0,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                      )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
