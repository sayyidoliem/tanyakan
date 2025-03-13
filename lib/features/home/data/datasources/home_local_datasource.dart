// import 'package:Tanyakan/features/home/data/models/bot_hive_model.dart';
// import 'package:hive/hive.dart';

// abstract class HomeLocalDatasource {
//   List<BotHiveModel> getAllBot();
//   BotHiveModel? getBot(String id);
//   void addBot(BotHiveModel bot);
//   BotHiveModel? updateBot(BotHiveModel bot);
//   void deleteBot(String id);
//   void deleteAllBot();
// }

// class HomeLocalDatasourceImpl implements HomeLocalDatasource {
//   final Box<BotHiveModel> _hive;

//   HomeLocalDatasourceImpl(this._hive);

//   @override
//   void addBot(BotHiveModel person) {
//     _hive.put(person.id, person);
//   }

//   @override
//   void deleteAllBot() {
//     _hive.clear();
//   }

//   @override
//   List<BotHiveModel> getAllBot() {
//     final data = _hive.values.toList();
//     return data;
//   }

//   @override
//   BotHiveModel? getBot(String id) {
//     final data = _hive.get(id);
//     return data;
//   }

//   @override
//   void deleteBot(String id) {
//     _hive.delete(id);
//   }

//   @override
//   BotHiveModel? updateBot(BotHiveModel person) {
//     _hive.put(person.id, person);
//     return getBot(person.id);
//   }
// }
