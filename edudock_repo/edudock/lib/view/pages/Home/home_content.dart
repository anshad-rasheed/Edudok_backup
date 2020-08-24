import 'dart:convert';

import 'package:edudock/models/HomeItem.dart';
import 'package:flutter/material.dart';

import 'home_grid.dart';
import 'home_header.dart';

class HomeContent extends StatelessWidget {
  final List<HomeItem> homeItems;
  const HomeContent({Key key, this.homeItems}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        left: true,
        top: true,
        right: true,
        bottom: true,
        minimum: const EdgeInsets.all(16.0),
        child: Column(children: <Widget>[
          SizedBox(
            height: 236,
            child: HomeHeader(),
          ),
          Flexible(
            child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString('assets/jsons/Home.json'),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done &&
                    snapshot.hasData) {
                  List<HomeItem> homeItems =
                      parseJosn(snapshot.data.toString());
                  return homeItems.isEmpty == false
                      ? HomeGrid(
                          homeItems: homeItems,
                        )
                      : Center(child: CircularProgressIndicator());
                } else {
                  return new CircularProgressIndicator();
                }
              },
            ),
            flex: 1,
          )
        ]));
  }

  List<HomeItem> parseJosn(String response) {
    if (response == null) {
      return [];
    }
    final parsed =
        json.decode(response.toString()).cast<Map<String, dynamic>>();
    return parsed.map<HomeItem>((json) => new HomeItem.fromJson(json)).toList();
  }
}
