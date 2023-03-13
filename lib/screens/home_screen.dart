import 'package:flutter/material.dart';
import 'package:riverpod_practice/layout/default_layout.dart';
import 'package:riverpod_practice/screens/auto_dispose_modifier_screen.dart';
import 'package:riverpod_practice/screens/family_modifier_screen.dart';
import 'package:riverpod_practice/screens/future_provider_screen.dart';
import 'package:riverpod_practice/screens/listen_provider_screen.dart';
import 'package:riverpod_practice/screens/provider_screen.dart';
import 'package:riverpod_practice/screens/select_provider_screen.dart';
import 'package:riverpod_practice/screens/state_notifier_provider_screen.dart';
import 'package:riverpod_practice/screens/state_provider_screen.dart';
import 'package:riverpod_practice/screens/stream_provider_screen.dart';

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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => StateProviderScreen()));
              },
              child: Text(
                "StateProviderScreen",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => StateNotifierProviderScreen()));
              },
              child: Text(
                "StateNotifierProviderScreen",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => FutureProviderScreen()));
              },
              child: Text(
                "FutureProviderScreen",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => StreamProviderScreen()));
              },
              child: Text(
                "StremProviderScreen",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => FamilyModifierScreen()));
              },
              child: Text(
                "FamilyModifierScreen",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => AutoDisposeModifierProviderScreen()));
              },
              child: Text(
                "AutoDisposeModifierScreen",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ListenProviderScreen()));
              },
              child: Text(
                "ListenProviderScreen",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => SelectProviderScreen()));
              },
              child: Text(
                "SelectProviderScreen",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ProviderScreen()));
              },
              child: Text(
                "ProviderScreen",
              ),
            ),
          ],
        ));
  }
}
