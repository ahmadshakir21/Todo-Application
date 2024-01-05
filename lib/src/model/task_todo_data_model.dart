class TaskTodoDataModel {
  final String taskId;
  final String taskTitle;
  String? taskDescription;
  final DateTime taskDateTime;
  bool? taskIsCompleted;
  bool? taskIsImportant;

  TaskTodoDataModel(
      {required this.taskId, required this.taskTitle, this.taskDescription, required this.taskDateTime, this.taskIsCompleted, this.taskIsImportant});

  Map<String, dynamic> toMap() {
    return {
      'taskId': taskId,
      'taskTitle': taskTitle,
      'taskDescription': taskDescription,
      'taskDateTime': taskDateTime.toIso8601String(),
      'taskIsCompleted': taskIsCompleted == true ? 1 : 0,
      'taskIsImportant': taskIsImportant == true ? 1 : 0,
    };
  }

  factory TaskTodoDataModel.fromMap(Map<String, dynamic> map) {
    return TaskTodoDataModel(
        taskId: map['taskId'],
        taskTitle: map['taskTitle'],
        taskDescription: map['taskDescription'],
        taskDateTime: DateTime.parse(map['taskDateTime'] as String),
        taskIsCompleted: map['taskIsCompleted'] == 0,
        taskIsImportant: map['taskIsImportant'] == 0);
  }
}
