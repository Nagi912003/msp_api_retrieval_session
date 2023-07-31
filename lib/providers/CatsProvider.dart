import 'package:flutter/material.dart';

import '../data/models/cat.dart';
import '../data/repositories/cats_repository.dart';
import '../data/web_services/getCats.dart';

class CatsProvider extends ChangeNotifier {
  List<Cat> cats = [];
  final CatRepository _catRepository=CatRepository(catsWebServices: CatsWebServices());
  List<Cat> getCats()  {
    _catRepository.getAllCats().then((value) => cats=value);
    return cats;
  }


}
