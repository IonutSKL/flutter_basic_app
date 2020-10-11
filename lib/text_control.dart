import 'package:flutter/material.dart';
import './text_output.dart';

class TextControl extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String _mainText = 'First text';

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  _mainText = 'Changed!!';
                });
              },
              child: Text('Change text'),
            ),
            TextOutput(_mainText),
          ],
        );
  }
}