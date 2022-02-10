import 'package:flutter/material.dart';
import 'package:reactive_programming/examples/10_combine_latest/combine_latest_screen.dart';
import 'package:reactive_programming/examples/11_merge/merge_screen.dart';
import 'package:reactive_programming/examples/12_cache/cache_screen.dart';
import 'package:reactive_programming/examples/1_list/list_screen.dart';
import 'package:reactive_programming/examples/2_clicks/clicks_screen.dart';
import 'package:reactive_programming/examples/3_take/take_screen.dart';
import 'package:reactive_programming/examples/4_map/map_screen.dart';
import 'package:reactive_programming/examples/5_filter/filter_screen.dart';
import 'package:reactive_programming/examples/6_filter_map_take/filter_map_take_screen.dart';
import 'package:reactive_programming/examples/7_debounce/debounce_screen.dart';
import 'package:reactive_programming/examples/8_throttle/throttle_screen.dart';
import 'package:reactive_programming/examples/9_periodic/periodic_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Reactive Programming'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: InitialMenu(),
      ),
    );
  }
}

class InitialMenu extends StatelessWidget {
  const InitialMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MenuItem(
          title: 'List',
          callback: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ListScreen(),
              ),
            );
          },
        ),
        MenuItem(
          title: 'Clicks',
          callback: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ClicksScreen(),
              ),
            );
          },
        ),
        MenuItem(
          title: 'Take',
          callback: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TakeScreen(),
              ),
            );
          },
        ),
        MenuItem(
          title: 'Map',
          callback: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MapScreen(),
              ),
            );
          },
        ),
        MenuItem(
          title: 'Filter',
          callback: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FilterScreen(),
              ),
            );
          },
        ),
        MenuItem(
          title: 'Filter Map and Take',
          callback: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FilterMapTakeScreen(),
              ),
            );
          },
        ),
        MenuItem(
          title: 'Debounce',
          callback: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DebounceScreen(),
              ),
            );
          },
        ),
        MenuItem(
          title: 'Throttle',
          callback: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ThrottleScreen(),
              ),
            );
          },
        ),
        MenuItem(
          title: 'Periodic',
          callback: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PeriodicScreen(),
              ),
            );
          },
        ),
        MenuItem(
          title: 'CombineLatest',
          callback: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CombineLatestScreen(),
              ),
            );
          },
        ),
        MenuItem(
          title: 'Merge',
          callback: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MergeScreen(),
              ),
            );
          },
        ),
        MenuItem(
          title: 'Cache',
          callback: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CacheScreen(),
              ),
            );
          },
        ),
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final VoidCallback callback;

  const MenuItem({required this.callback, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        width: double.infinity,
        child: InkWell(
          onTap: callback,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Center(child: Text(title)),
          ),
        ),
      );
}
