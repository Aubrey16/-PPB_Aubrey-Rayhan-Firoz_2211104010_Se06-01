import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'my_prakdatabase.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE users(
        Nim INTEGER PRIMARY KEY,
        Nama TEXT,
        Alamat TEXT,
        Hobi TEXT
      )
    ''');
  }

  Future<List<Map<String, dynamic>>> queryAllRows() async {
    final db = await database;
    return await db.query('users');
  }

  Future<int> insert(Map<String, dynamic> row) async {
    final db = await database;
    return await db.insert('users', row);
  }

  Future<int> delete(int nim) async {
    final db = await database;
    return await db.delete('users', where: 'Nim = ?', whereArgs: [nim]);
  }
}
