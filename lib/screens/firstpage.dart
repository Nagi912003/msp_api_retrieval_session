import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/CatsProvider.dart';

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<CatsProvider>(context, listen: false).getCats();
  }

  @override
  Widget build(BuildContext context) {
    final catsLength = Provider.of<CatsProvider>(context).cats.length;
    return Scaffold(
      body: catsLength != 0
          ? buidCatsGrid()
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  buidCatsGrid() {
    final cats = Provider.of<CatsProvider>(context).cats;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: cats.length,
      itemBuilder: (ctx, i) => ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: CachedNetworkImage(
          imageUrl: 'https://cataas.com/c/${cats[i].id}',
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          fit: BoxFit.cover,
        ),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
