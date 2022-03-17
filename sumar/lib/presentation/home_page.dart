import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Summarizer')),
      body: Column(
        children: [
          TextField(controller: _controller,),
          const Spacer(),
          TextButton(onPressed:(){} , child: const Text("Summarizer")),
        ],
      ),
    );
  }
}
