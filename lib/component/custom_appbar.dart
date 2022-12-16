import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('リスト一覧'),
      automaticallyImplyLeading: false,
      actions: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
            ),
            //padding: EdgeInsets.all(8),
            // child: DropdownButton(
            //   items: [
            //     DropdownMenuItem(
            //       child: Text('全て'),
            //       value: '0',
            //     ),
            //     DropdownMenuItem(
            //       child: Text('仕事'),
            //       value: '1',
            //     ),
            //     DropdownMenuItem(
            //       child: Text('家事'),
            //       value: '2',
            //     ),
            //     DropdownMenuItem(
            //       child: Text('遊び'),
            //       value: '3',
            //     ),
            //   ],
            //   onChanged: (String? value) {
            //     // setState(() {
            //     //   _category = value;
            //     // });
            //   },
            //   value: _category,
            // ),
          ),
        ],
    );
  }
}