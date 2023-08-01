import 'package:flutter/material.dart';

import '../data/models/cat.dart';
import '../data/repositories/cats_repository.dart';
import '../data/web_services/get_cats_web_service.dart';

class CatsProvider extends ChangeNotifier {
  List<Cat> cats = [];
  final CatRepository _catRepository =
      CatRepository(catsWebServices: CatsWebServices());
  Future<void> getCats() async {
    await _catRepository
        .getAllCats()
        .then((value) {
          cats = value;
          notifyListeners();
        });
  }
}
