// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FavouriteScreen extends StatefulWidget {
  FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  RxList<String> fruit = ["Mango", "Orange", "Apple", "Bannana"].obs;

  RxList myFruite = [].obs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView.builder(
              itemCount: fruit.value.length,
              itemBuilder: (_, index) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      if (myFruite.value
                          .contains(fruit.value[index].toString())) {
                        myFruite.value.remove(fruit.value[index].toString());
                      } else {
                        myFruite.value.add(fruit.value[index].toString());
                      }
                      setState(() {});
                    },
                    title: Text(fruit[index].toString()),
                    trailing: Icon(
                      Icons.favorite_border_outlined,
                      color: myFruite.contains(fruit[index].toString())
                          ? Colors.red
                          : Colors.grey,
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
