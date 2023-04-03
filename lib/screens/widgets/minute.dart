import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home/home.dart';

class Minute extends StatelessWidget {
  const Minute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final minutes = context.watch<Minutes>();
    return Expanded(
      child: Container(
        color: Colors.blue,
        height: 100,
        child: Text(minutes.value),
      ),
    );
  }
}
