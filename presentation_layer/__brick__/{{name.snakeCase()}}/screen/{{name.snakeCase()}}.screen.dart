
import 'package:flutter/material.dart';
class {{name.pascalCase()}}Screen extends StatelessWidget {
  const {{name.pascalCase()}}Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child:Center(child:Text("I am a screen.")));
  }
}