import 'package:hive/hive.dart';
part 'my_adapter.g.dart';

@HiveType(typeId: 1)
class MyAdapter {
  MyAdapter({required this.name, required this.age});
  @HiveField(0)
  String name;

  @HiveField(1)
  int age;
}
