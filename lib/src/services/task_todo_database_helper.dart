import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../model/task_todo_data_model.dart';
import '../utils/app_consts.dart';

class TaskTodoDatabaseHelper {
  TaskTodoDatabaseHelper._privateConstructor();
  static final TaskTodoDatabaseHelper instance = TaskTodoDatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('taskTodoApp.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute(
        ''' create table ${AppConsts.tableNameForTodo}(${AppConsts.taskId} integer primary key , ${AppConsts.taskTitle} text , ${AppConsts.taskDescription} text , ${AppConsts.taskCreatedAt} text , ${AppConsts.taskIsCompleted} boolean , ${AppConsts.taskIsImportant} boolean) ''');
  }

  // create(insert)   CRUD
  Future<void> insert({required TaskTodoDataModel taskTodoDataModel}) async {
    try {
      final db = await database;
      db.insert(AppConsts.tableNameForTodo, taskTodoDataModel.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
    } catch (e) {
      print(e.toString());
    }
  }

  // read     CRUD
  Future<List<TaskTodoDataModel>> getAllTodos() async {
    final db = await instance.database;
    final result = await db.query(AppConsts.tableNameForTodo, orderBy: AppConsts.taskCreatedAt);

    // return result.map((json) => TaskTodoDataModel.fromMap(json)).toList();
    List<TaskTodoDataModel> taskTodoDataModelList = result.isNotEmpty ? result.map((json) => TaskTodoDataModel.fromMap(json)).toList() : [];
    return taskTodoDataModelList;
  }

  // update    CRUD
  Future<void> update(TaskTodoDataModel taskTodoDataModel) async {
    try {
      final db = await instance.database;
      db.update(AppConsts.tableNameForTodo, taskTodoDataModel.toMap(), where: '${AppConsts.taskId} = ?', whereArgs: [taskTodoDataModel.taskId]);
    } catch (e) {
      print(e.toString());
    }
  }

  // delete    CRUD
  Future<void> delete(int id) async {
    try {
      final db = await instance.database;
      await db.delete(AppConsts.tableNameForTodo, where: '${AppConsts.taskId} = ?', whereArgs: [id]);
    } catch (e) {
      print(e.toString());
    }
  }
}
