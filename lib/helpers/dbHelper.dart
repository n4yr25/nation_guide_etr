import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:nation_guide_etr/models/profile.dart';


class DbHelper {
  static const dbName = 'nationguide.db';
  static const dbVersion = 2;

  static const tbName = 'profiletb';
  static const colUsername = 'username';
  static const colName = 'name';
  static const colAddress = 'address';
  static const colPhone = 'phone';
  static const colEmail = 'email';

  static Future<Database> openDB() async {
    var path = join(await getDatabasesPath(), dbName);
    var sql = "CREATE TABLE IF NOT EXISTS $tbName ($colUsername TEXT PRIMARY KEY ,$colName TEXT, $colAddress TEXT, $colPhone INT, $colEmail TEXT)";
    var db = await openDatabase(
      path,
      version: dbVersion,
      onCreate:(db, version) {
        db.execute(sql);
        print("Database Created");
      },
      onUpgrade: (db, oldVersion, newVersion) {
        if (newVersion <= oldVersion) return;
        db.execute("DROP TABLE IF EXISTS $tbName");
        db.execute(sql);
      },
    );
    return db;
  }

  static void insertProfile(Profile p) async {
    final db = await DbHelper.openDB();
    await db.insert(
      tbName, 
      p.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace
    );
  }

  static Future<List<Map<String, dynamic>>> fetchQuery() async {
    final db = await openDB();
    return await db.query(tbName);
  }

  static Future<List<Map<String, dynamic>>> fetch() async {
    final db = await DbHelper.openDB();
    var result = await db.rawQuery("SELECT * FROM $tbName");
    return result;
  }

  static Future<bool> checkProfileTableExistence() async {
    try {
      // Get the path to your database file
      String path = join(await getDatabasesPath(), dbName);

      // Open the database
      Database database = await openDatabase(path);

      // Check if 'profile' table exists
      bool profileTableExists = await doesTableExist(database, tbName);

      print('Does profile table exist? $profileTableExists');

      // Close the database when done
      await database.close();

      return profileTableExists;
    } catch (e) {
      print('Error checking profile table existence: $e');
      return false;
    }
  }
  static Future<bool> doesTableExist(Database db, String tableName) async {
    try {
      List<Map<String, dynamic>> tables = await db.query(
        'sqlite_master',
        columns: ['name'],
        where: 'type = ? AND name = ?',
        whereArgs: ['table', tableName],
      );
      return tables.isNotEmpty;
    } catch (e) {
      print('Error checking table existence: $e');
      return false;
    }
  }
}