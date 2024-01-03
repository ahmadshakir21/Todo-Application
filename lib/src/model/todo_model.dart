class TodoModel {
  final int id;
  final String title;
  String? description;
  final String todoDate;
  bool? isImportant;
  bool? isCompleted;

  TodoModel({required this.id, required this.title, this.description, required this.todoDate, this.isImportant, this.isCompleted});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'todoDate': todoDate,
      'isImportant': isImportant == true ? 1 : 0,
      'isCompleted': isCompleted == true ? 1 : 0,
    };
  }

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
        id: map['id'],
        title: map['title'],
        description: map['description'],
        todoDate: map['todoDate'],
        isCompleted: map['isCompleted'] == 1,
        isImportant: map['isImportant'] == 1);
  }
}
