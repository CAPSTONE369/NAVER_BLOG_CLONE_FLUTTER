import 'package:flutter/material.dart';

class Saved extends StatefulWidget {
  const Saved({super.key, required this.title});

  final String title;

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  final List<String> entries = <String>['이웃1', '이웃2', '이웃3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "나의 블로그",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        toolbarHeight: 300,
      ),
      body: Container(
        color: Colors.grey[200],
        child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    // margin: const EdgeInsets.all(3.0),
                    alignment: Alignment.centerLeft,
                    height: 70,
                    color: Colors.white,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10.0),
                            child: const CircleAvatar(
                              backgroundColor: Color(0xffE6E6E6),
                              radius: 17,
                              child: Icon(
                                Icons.person,
                                color: Color(0xffCCCCCC),
                              ),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.all(10.0),
                              child: const Text(
                                "나야나",
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                  ),
                  const Image(
                      image: NetworkImage(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                      fit: BoxFit.fill),
                  Container(
                      height: 150,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.all(10.0),
                      color: Colors.white,
                      child: const Text(
                        "Text Area",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      )),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider()),
      ),
    );
  }
}
