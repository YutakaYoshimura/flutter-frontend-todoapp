import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

import '../model/todo_model.dart';
import '../constant/code.dart';
import '../constant/url.dart';

const tableName = 'todos';

class TodoApi with ChangeNotifier {

  Future<TodoModel> getTodos(int id) async {
    //id = 1000;
    final url = Uri.parse('http://$apiUrl/$tableName/$id');
    final response = await http.get(url);
    String responseBody = utf8.decode(response.bodyBytes);
    if (response.statusCode != HttpStatusCode.httpOk && response.statusCode != HttpStatusCode.httpNoContent) {
      throw Exception(response);
    }
    final result = TodoModel.fromJson(jsonDecode(responseBody));
    return result;
  }

  Future<List<TodoModel>> getAllTodos(int category) async {
    try {
      final url = Uri.parse('http://$apiUrl/$tableName/all');
      final response = await http.post(url, headers: {"Content-Type": "application/json"}, body: category.toString());
      if (response.statusCode != HttpStatusCode.httpOk && response.statusCode != HttpStatusCode.httpNoContent) {
        throw Exception(response.statusCode.toString());
      }
      if (response.statusCode == HttpStatusCode.httpNoContent) {
        return <TodoModel>[];
      }
      String responseBody = utf8.decode(response.bodyBytes);
      final List<dynamic> result = jsonDecode(responseBody);
      return result.map(((e) => TodoModel.fromJson(e))).toList();
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> addTodos(String title, DateTime date, int category, String memo) async {
    try {
      final url = Uri.parse('http://$apiUrl/$tableName');
      Map data = {
        'title': title,
        'date': date.toIso8601String(),
        'category': category,
        'memo': memo,
      };
      var body = json.encode(data);
      final response = await http.post(url, headers: {"Content-Type": "application/json"}, body: body);
      if (response.statusCode != HttpStatusCode.httpOk) {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> editTodos(int id, String title, DateTime date, int category, String memo) async {
    try {
      final url = Uri.parse('http://$apiUrl/$tableName/$id');
      Map data = {
        'title': title,
        'date': date.toIso8601String(),
        'category': category,
        'memo': memo,
      };
      var body = json.encode(data);
      final response = await http.put(url, headers: {"Content-Type": "application/json"}, body: body);
      if (response.statusCode != HttpStatusCode.httpOk) {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> delTodos(int id) async {
    try {
      String strId = id.toString();
      final url = Uri.parse('http://$apiUrl/$tableName/$strId');
      final response = await http.delete(url);
      if (response.statusCode != HttpStatusCode.httpOk) {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}