class TaskTodoDataModel {
  int? taskId;
  String taskTitle;
  String taskDescription;
  DateTime createdAt;
  bool? taskIsCompleted;
  bool? taskIsImportant;

  TaskTodoDataModel({this.taskId, required this.taskTitle, required this.taskDescription, required this.createdAt, this.taskIsCompleted, this.taskIsImportant});

  Map<String, dynamic> toMap() {
    return {
      'taskId': taskId,
      'taskTitle': taskTitle,
      'taskDescription': taskDescription,
      'createdAt': createdAt.toIso8601String(),
      'taskIsCompleted': taskIsCompleted == true ? 1 : 0,
      'taskIsImportant': taskIsImportant == true ? 1 : 0,
    };
  }

  factory TaskTodoDataModel.fromMap(Map<String, dynamic> map) {
    return TaskTodoDataModel(
        taskId: map['taskId'],
        taskTitle: map['taskTitle'],
        taskDescription: map['taskDescription'],
        createdAt: DateTime.parse(map['createdAt'] as String),
        taskIsCompleted: map['taskIsCompleted'] == 0,
        taskIsImportant: map['taskIsImportant'] == 0);
  }

  // final String taskId;
  // final String taskTitle;
  // String? taskDescription;
  // DateTime taskDateTime;
  // bool? taskIsCompleted;
  // bool? taskIsImportant;

  // TaskTodoDataModel(
  //     {required this.taskId, required this.taskTitle, this.taskDescription, required this.taskDateTime, this.taskIsCompleted, this.taskIsImportant});

  // Map<String, dynamic> toMap() {
  //   return {
  //     'taskId': taskId,
  //     'taskTitle': taskTitle,
  //     'taskDescription': taskDescription,
  //     'taskDateTime': taskDateTime.toIso8601String(),
  //     'taskIsCompleted': taskIsCompleted == true ? 1 : 0,
  //     'taskIsImportant': taskIsImportant == true ? 1 : 0,
  //   };
  // }

  // factory TaskTodoDataModel.fromMap(Map<String, dynamic> map) {
  //   return TaskTodoDataModel(
  //       taskId: map['taskId'],
  //       taskTitle: map['taskTitle'],
  //       taskDescription: map['taskDescription'],
  //       taskDateTime: DateTime.parse(map['taskDateTime']),
  //       taskIsCompleted: map['taskIsCompleted'] == 0,
  //       taskIsImportant: map['taskIsImportant'] == 0);
  // }
}
