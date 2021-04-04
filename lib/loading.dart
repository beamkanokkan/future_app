import 'package:flutter/material.dart';

void main()=>runApp(LoadingPage());

    class LoadingPage extends StatefulWidget {
      @override
      _LoadingPageState createState() => _LoadingPageState();
    }

    class _LoadingPageState extends State<LoadingPage> {

      Future<String> delayTime() async {
        String txt = await Future.delayed(Duration(seconds: 3), () {
          return 'Hello';
        });
        return txt;
      }
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          home: Scaffold(
            body: Center(
              child: FutureBuilder(
                future: delayTime(),
                builder: (BuildContext context,AsyncSnapshot snapshot){
                  if(snapshot.hasData){
                    return Center(
                      child: Column(
                          children: [
                            Image.network("https://storage.googleapis.com/fastwork-static/1f263548-0ba3-4163-b719-f0d39f98c96a.jpg"),
                            Text("Beam Kanokkan",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.brown,
                              ),)
                          ]
                      )
                    );

                    return Text(snapshot.data);
                  } else if(snapshot.hasError){
                    return Text('Error');
                  } else{
                    return LinearProgressIndicator();
                  }
                }
              ),
            ),
          ),
        );
      }
    }
