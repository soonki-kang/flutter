import 'package:flutter/material.dart';

class ZipCodeSearch extends StatelessWidget {
  const ZipCodeSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      title: const Text('AlertDialog Title'),
      content: const Text('AlertDialog description'),

      actions: <Widget> [
        TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'Ok'),
          child: const Text('Ok'),
        ),
      ],
    );
  }
}
