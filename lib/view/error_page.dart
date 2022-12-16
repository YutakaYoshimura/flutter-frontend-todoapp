import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    Key? key,
    this.errorMsg
  }) : super(key: key);
  final String? errorMsg;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: const Text("エラーページ", style: TextStyle(fontSize: 40),),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(errorMsg ?? '原因不明なエラーです。', style: const TextStyle(fontSize: 20),),
              ),
              ElevatedButton(
                onPressed: () {
                  context.push('/');
                },
                child: const Text('トップへ戻る', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}