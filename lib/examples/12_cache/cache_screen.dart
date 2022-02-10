import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_programming/examples/12_cache/cache_cubit.dart';
import 'package:reactive_programming/examples/12_cache/cache_view.dart';

class CacheScreen extends StatelessWidget {
  const CacheScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CacheCubit>(
      create: (_) => CacheCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cache'),
          automaticallyImplyLeading: true,
        ),
        body: const CacheView(),
      ),
    );
  }
}
