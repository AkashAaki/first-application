import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      //we are making a container here because, if we only return text widget, the length of the widget will just be as much as the length of the text({therefore if we center the text, it wont change coz the length of widget is same of text so its already in the center of the widget}), using the container and width.infinity, we are making the widget size till the end of the screen so now using center will actually center the text on the screen.
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
