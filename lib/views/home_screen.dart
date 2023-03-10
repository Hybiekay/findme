import 'package:flutter/material.dart';
import 'package:findmetezt/widgets/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade300,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 25,
          weight: 50,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: const [
          header(),
          LiveSreaming(),
          SizedBox(
            height: 10,
          ),
          MiddleRow(),
          Activity()
        ]),
      ),
    );
  }
}
