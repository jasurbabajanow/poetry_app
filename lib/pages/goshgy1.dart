import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:poetry_app/pages/poem_item.dart';

class Goshgy1 extends StatefulWidget {
  const Goshgy1({super.key});

  @override
  State<Goshgy1> createState() => _Goshgy1State();
}

class _Goshgy1State extends State<Goshgy1> {
  List _items = [];
  @override
  void initState() {
    super.initState();
    readJson();
  }

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('images/gosgy.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["item"];
      //   _items.addAll(data);
      //  print(_items);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              "Şygyrlar",
              style:
                  TextStyle(fontFamily: 'Times New Roman', color: Colors.black),
            )),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: ListView.builder(
                    itemCount: _items.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PoemItem(
                                  title: _items[index]["data"]["poem"]["title"],
                                  poem: _items[index]["data"]["poem"]["body"],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(
                                    0,
                                    3,
                                  ), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                _items[index]["data"]["poem"]["title"],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Times New Roman',
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    })),
              ),
            ),
          ],
        ));
  }
}
