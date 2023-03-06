import 'package:flutter/material.dart';

import '../../../app/constants.dart';

class NoMatch extends StatelessWidget {
  const NoMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child:
              kText60('See you tomorrow at 12pm', textAlign: TextAlign.center)),
    );
  }
}
