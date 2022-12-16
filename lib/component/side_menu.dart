import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('メニュー', style: TextStyle(fontSize: 24, color: Colors.white),),
        ),
        ListTile(
          title: const Text('リスト一覧'),
          onTap: () {
            //setState(() => _city = 'リスト一覧');
            //Navigator.of(context).pushNamed("/home");
            context.push('/todo_list',);
          },
        ),
        ListTile(
          title: const Text('カレンダー'),
          onTap: () {
            //setState(() => _city = 'リスト一覧');
            //Navigator.of(context).pushNamed("/calendar");
            context.push('/todo_calendar',);
          },
        ),
      ],
    );
  }
}