
import '../models/cat.dart';
import '../web_services/get_cats_web_service.dart';

class CatRepository{
  final CatsWebServices catsWebServices;
  CatRepository({required this.catsWebServices});

  Future<List<Cat>> getAllCats() async {
    final cats = await catsWebServices.getAllCats();
    return cats.map((e) =>Cat.fromJson(e)).toList();
  }


}