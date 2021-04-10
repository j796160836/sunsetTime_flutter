import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sunset_time/api_respository.dart';
import 'package:flutter_sunset_time/error_view.dart';
import 'package:flutter_sunset_time/loading_view.dart';
import 'package:flutter_sunset_time/result_view.dart';
import 'package:flutter_sunset_time/sunset_sunrise_data_response.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ApiRepository apiRepository = ApiRepository();

  Future<String> fetchSunsetData() async {
    SunsetSunriseDataResponse response = await apiRepository.fetchData();
    DateTime date = DateTime.parse(response.results.sunset);
    DateFormat formatter = DateFormat("HH:mm");
    return formatter.format(date.toLocal());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<String>(
          future: fetchSunsetData(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasData) {
              // Loaded complete!
              return ResultView(stringTime: snapshot.data);
            } else if (snapshot.hasError) {
              // Loaded with error :(
              return ErrorView(onRefreshButtonClick: () {
                setState(() {});
              });
            } else {
              // Loading...
              return LoadingView();
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        tooltip: 'Refresh',
        child: Icon(Icons.refresh),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
