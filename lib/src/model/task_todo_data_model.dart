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
      'taskDateTime': taskDateTime,
      'taskIsCompleted': taskIsCompleted,
      'taskIsImportant': taskIsImportant,
    };
  }

  factory TaskTodoDataModel.fromMap(Map<String, dynamic> map) {
    return TaskTodoDataModel(
        taskId: map['taskId'],
        taskTitle: map['taskTitle'],
        taskDescription: map['taskDescription'],
        taskDateTime: map['taskDateTime'],
        taskIsCompleted: map['taskIsCompleted'],
        taskIsImportant: map['taskIsImportant']);
  }
}
