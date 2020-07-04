import 'package:flutter/material.dart';
import 'package:flutter_json_serialization/home_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
      create: (context) => HomeViewModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
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
  @override
  Widget build(BuildContext context) {
    var homeViewModel = Provider.of<HomeViewModel>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: homeViewModel.isBusy
              ? CircularProgressIndicator()
              : homeViewModel.users.isEmpty
                  ? Text('No users found')
                  : SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          homeViewModel.users.length,
                          (index) => ListTile(
                            leading: CircleAvatar(
                              child: Text(homeViewModel.users[index].userName
                                  .substring(0, 1)
                                  .toUpperCase()),
                            ),
                            title: Text(homeViewModel.users[index].userName),
                            subtitle:
                                Text(homeViewModel.users[index].company.name),
                          ),
                        ),
                      ),
                    ),
        ),
      ),
    );
  }
}
