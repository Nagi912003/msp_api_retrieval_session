
import '../models/cat.dart';
import '../web_services/getCats.dart';

class CatRepository{
  final CatsWebServices catsWebServices;
  CatRepository({required this.catsWebServices});

  Future<List<Cat>> getAllCats() async {
    final cats = await catsWebServices.getAllCats();
    return cats.map((e) =>Cat.fromJson(e)).toList();
  }


}