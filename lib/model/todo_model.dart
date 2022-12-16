class TodoModel {
  final int id;
  final String title;
  final DateTime date;
  final int category;
  final String memo;
  final bool delflg;

  TodoModel({
    required this.id,
    required this.title,
    required this.date,
    required this.category,
    required this.memo,
    required this.delflg
  });

  factory TodoModel.fromJson(Map<String, dynamic> json) {
    return TodoModel (
      id: json['id'],
      title: json['title'],
      date: DateTime.parse(json['date']),
      category: json['category'],
      memo: json['memo'],
      delflg: json['delflg'],
    );
  }
}