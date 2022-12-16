import 'package:fllutter/view/todo_edit_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'view/top_page.dart';
import 'view/todo_list_page.dart';
import 'view/todo_add_page.dart';
import 'view/todo_calendar_page.dart';
import 'view/error_page.dart';


void main() {
  runApp(ProviderScope(child: TodoApp()));
}

class TodoApp extends StatelessWidget {
  TodoApp({Key? key}) : super(key: key);

  final _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const TopPage(),
        routes: [
          GoRoute(
            path: "todo_list",
            builder: (BuildContext context, GoRouterState state) => TodoListPage(),
            routes: [
              GoRoute(
                path: "todo_add",
                builder: (BuildContext context, GoRouterState state) => TodoAddPage(),
              ),
              GoRoute(
                path: "todo_edit",
                builder: (BuildContext context, GoRouterState state) => TodoEditPage(),
              ),
            ],
          ),
          GoRoute(
            path: 'todo_calendar',
            builder: (BuildContext context, GoRouterState state) => TodoCalendarPage(),
            routes: [
              GoRoute(
                path: "todo_add",
                builder: (BuildContext context, GoRouterState state) => TodoAddPage(),
              ),
              GoRoute(
                path: "todo_edit",
                builder: (BuildContext context, GoRouterState state) => TodoEditPage(),
              ),
            ],
          ),
        ],
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: const ErrorPage(errorMsg: '対象のページは存在しません。'),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ja'),
      ],
      locale: const Locale('ja', 'JP'),
      // アプリ名
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      theme: ThemeData(
        // テーマカラー        primarySwatch: Colors.blue,
      ),
    );
  }
}