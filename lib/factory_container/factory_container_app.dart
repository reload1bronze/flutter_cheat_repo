import 'package:flutter/material.dart';
import 'package:flutter_cheat_repo/factory_container/factory_container.dart';

class FactoryContainerApp extends StatelessWidget {
  const FactoryContainerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Testbed',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TestBed(),
    );
  }
}

class TestBed extends StatelessWidget {
  const TestBed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            FactoryContainer.onlyText('yahoo'),
            FactoryContainer.onlyText('yahoo'),
            FactoryContainer.onlyText('yahoo'),
            FactoryContainer.withColor('yahoo', color: Colors.blue),
            FactoryContainer.withColor('yahoo', color: Colors.yellow),
            FactoryContainer.withColor('yahoo', color: Colors.green),
          ],
        ),
      ),
    );
  }
}
