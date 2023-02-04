import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'DetailsPage.dart';
import 'Global.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const MyApp(),
      'next': (context) => const Details()
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Staggered Recycler View",
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          backgroundColor: Colors.teal.shade700.withOpacity(0.7),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            alignment: Alignment.center,
            color: Colors.grey.shade300,
            padding: const EdgeInsets.all(7),
            child: StaggeredGrid.count(
              crossAxisCount: 6,
              crossAxisSpacing: 2,
              mainAxisSpacing: 3,
              children: [
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 3.7,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: Global.beach
                            .map((e) => GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed('next', arguments: e);
                                  },
                                  child: Column(
                                    children: [
                                      Image.network(
                                        "${e['image']}",
                                        height: 180,
                                        fit: BoxFit.cover,
                                      ),
                                      Text(
                                        "${e['name']}",
                                        style: Global.textStyle,
                                      )
                                    ],
                                  ),
                                ))
                            .toList(),
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 2.5,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: Global.palace
                            .map((e) => GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed('next', arguments: e);
                                  },
                                  child: Column(
                                    children: [
                                      Image.network(
                                        "${e['image']}",
                                        //height: 100,
                                        fit: BoxFit.fitHeight,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "${e['name']}",
                                          style: Global.textStyle,
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                            .toList(),
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 4,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: Global.mountain
                            .map((e) => GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed('next', arguments: e);
                                  },
                                  child: Column(
                                    children: [
                                      Image.network(
                                        "${e['image']}",
                                        height: 200,
                                        width: 180,
                                        fit: BoxFit.cover,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "${e['name']}",
                                          style: Global.textStyle,
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                            .toList(),
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 4,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: Column(
                        children: Global.heritage
                            .map((e) => GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed('next', arguments: e);
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.network(
                                        "${e['image']}",
                                        height: 200,
                                        width: double.infinity,
                                        fit: BoxFit.fitHeight,
                                      ),
                                      Text(
                                        "${e['name']}",
                                        style: Global.textStyle,
                                      )
                                    ],
                                  ),
                                ))
                            .toList(),
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 3.2,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: Global.cav
                            .map((e) => GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed('next', arguments: e);
                                  },
                                  child: Column(
                                    children: [
                                      Image.network(
                                        "${e['image']}",
                                        height: 150,
                                        fit: BoxFit.cover,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "${e['name']}",
                                          style: Global.textStyle,
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                            .toList(),
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 2.5,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: Global.temple
                            .map((e) => GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed('next', arguments: e);
                                  },
                                  child: Column(
                                    children: [
                                      Image.network(
                                        "${e['image']}",
                                        height: 100,
                                        fit: BoxFit.fitHeight,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "${e['name']}",
                                          style: Global.textStyle,
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                            .toList(),
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 2.8,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: Global.river
                            .map((e) => GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed('next', arguments: e);
                                  },
                                  child: Column(
                                    children: [
                                      Image.network(
                                        "${e['image']}",
                                        fit: BoxFit.fitHeight,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "${e['name']}",
                                          style: Global.textStyle,
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                            .toList(),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
