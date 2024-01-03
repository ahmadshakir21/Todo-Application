import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_app/src/utils/app_consts.dart';

class TaskDatabaseHelper {
  Database? _database;

  static final TaskDatabaseHelper instance = TaskDatabaseHelper._init();
  TaskDatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('todo.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
             create table ${AppConsts.tableNameForTodo}
             ${AppConsts.id} integer primary key autoincrement,
             ${AppConsts.title} text,
             ${AppConsts.description} text,
             ${AppConsts.todoDate} text,
             ${AppConsts.isCompleted} boolean,
             ${AppConsts.isImportant} boolean,
             ''');
  }
}
