import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'Global.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "More Like This",
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal.shade700.withOpacity(0.7),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.all(10),
            color: Colors.grey.shade400,
            alignment: Alignment.center,
            child: StaggeredGrid.count(
              crossAxisCount: 6,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              children: [
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 3.3,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              "${data['image1']}",
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "${data['name1']}",
                              style: Global.textStyle,
                            )
                          ]),
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
                          children: [
                            Image.network(
                              "${data['image2']}",
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "${data['name2']}",
                              style: Global.textStyle,
                            )
                          ]),
                    )),
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
                          children: [
                            Image.network(
                              "${data['image3']}",
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "${data['name3']}",
                              style: Global.textStyle,
                            )
                          ]),
                    )),
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
                          children: [
                            Image.network(
                              "${data['image4']}",
                              height: 180,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "${data['name4']}",
                              style: Global.textStyle,
                            )
                          ]),
                    )),
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
                          children: [
                            Image.network(
                              "${data['image5']}",
                              height: 180,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "${data['name5']}",
                              style: Global.textStyle,
                            )
                          ]),
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
                          children: [
                            Image.network(
                              "${data['image6']}",
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "${data['name6']}",
                              style: Global.textStyle,
                            )
                          ]),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 3.6,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              "${data['image7']}",
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "${data['name7']}",
                              style: Global.textStyle,
                            )
                          ]),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
