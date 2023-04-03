import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home/home.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final seconds = context.watch<Seconds>();
    return Expanded(
      child: Container(
        color: Colors.yellow,
        height: 100,
        child: Text(seconds.value),
      ),
    );
  }
}
