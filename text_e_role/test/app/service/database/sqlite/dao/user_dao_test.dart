import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:text_e_role/app/domain/dto/user_dto.dart';
import 'package:text_e_role/app/service/database/sqlite/connection.dart';
import 'package:text_e_role/app/service/database/sqlite/dao/user_dao.dart';


main() async{
  late Database db;
  late UserDAO dao;

  setUpAll((){
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
    dao = UserDAO();
  });

  setUp(() async {
    db = await Connection.init();
  });

  tearDown(() async {
    deleteDatabase(db.path);
    db = await Connection.init();
  });

  tearDownAll(() async {
    db.close();
  });

  group('User DAO -', () {
    group('SQL syntax |', () {
      test('Testing SQL insertion syntax.', () async {
        int insert = await db.rawInsert(dao.insertSQL, [
          'usertest',
          'example@domain.com',
          'ValidP@ssw0rd',
          'A',
          null,
          null,
          null
        ]);
        
        expect(insert, isPositive);
      });

      test('Testing SQL alteration syntax.', () async {
        int alter = await db.rawUpdate(dao.alterSQL, [
          'testuser',
          'example@domain.com',
          'ValidP@ssw0rd',
          'A',
          null,
          null,
          null,
          1
        ]);
        
        expect(alter, isPositive);
      });

      test('Testing SQL deletion syntax.', () async {
        int delete = await db.rawUpdate(dao.deleteSQL, [1]);
        expect(delete, isPositive);
      });

      test('Testing SQL select by ID syntax.', () async {
        var selectById = await db.rawQuery(dao.selectByIdSQL,[1]);
        expect(selectById.length, 1);
      });

      test('Testing SQL select syntax.', () async {
        var select = await db.rawQuery(dao.selectSQL);
        expect(select.length, isPositive);
      });
    });

    group('DTO usage |', () {
      test('Testing insertion with DTO.', () async {
        UserDTO dto = await dao.save(UserDTO(
          username: 'testuser',
          email: 'example@domain.com',
          password: 'ValidP@ssw0rd',
          status: 'A',
          displayName: null,
          avatarURL: null,
          biography: null
        ));

        expect(dto.id,isPositive);
      }); 
      
      test('Testing alteration with DTO', () async {
        await dao.save(UserDTO(
          username: 'testuser',
          email: 'example@domain.com',
          password: 'ValidP@ssw0rd',
          status: 'A',
          displayName: null,
          avatarURL: null,
          biography: null
        ));

        var dto = await dao.update(UserDTO(
          username: 'newTestUSEEEER',
          email: 'example@domain.com',
          password: 'ValidP@ssw0rd',
          status: 'A',
          displayName: null,
          avatarURL: null,
          biography: null
        ));
        
        expect(dto.username,'newTestUSEEEER');
      });

      test('Testing status alteration with DTO.', () async {
        var dto = await dao.save(UserDTO(
          username: 'newTestUSEEEER',
          email: 'example@domain.com',
          password: 'ValidP@ssw0rd',
          status: 'A',
          displayName: null,
          avatarURL: null,
          biography: null
        ));

        var isStatusAltered = await dao.updateStatus(dto.id);
        expect(isStatusAltered, true);
      });

      test('Testing selection by ID with DTO.', () async {
        var dto = await dao.save(UserDTO(
          username: 'newTestUSEEEER',
          email: 'example@domain.com',
          password: 'ValidP@ssw0rd',
          status: 'A',
          displayName: null,
          avatarURL: null,
          biography: null
        ));

        dto = await dao.searchById(1);
        expect(dto.id, isPositive);
      });

      test('Testing selection with DTO.', () async {
        await dao.save(UserDTO(
          username: 'newTestUSEEEER',
          email: 'example@domain.com',
          password: 'ValidP@ssw0rd',
          status: 'A',
          displayName: null,
          avatarURL: null,
          biography: null
        ));

        var results = await dao.searchAll();
        expect(results.length, isPositive);
      });
    });
  });
}