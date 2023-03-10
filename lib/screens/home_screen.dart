import 'package:flutter/material.dart';
import 'package:riverpod_practice/layout/default_layout.dart';
import 'package:riverpod_practice/screens/state_provider_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        title: "HomeScreen",
        body: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => StateProviderScreen()));
              },
              child: Text(
                "StateProviderScreen"
              ),
            ),
          ],
        ));
  }
}
