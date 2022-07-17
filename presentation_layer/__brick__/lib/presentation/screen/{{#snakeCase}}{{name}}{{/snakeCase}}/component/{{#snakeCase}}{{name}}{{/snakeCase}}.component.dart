

import 'package:flutter/material.dart';
class {{name.pascalCase()}}Component extends StatelessWidget {
  const {{name.pascalCase()}}Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child:Center(child:Text("I am a component.")));
  }
}