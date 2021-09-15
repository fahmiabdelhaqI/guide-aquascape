import 'package:flutter/material.dart';
import 'package:panduan_aquascape/models/desain_aquascape.dart';
import 'package:panduan_aquascape/widgets/detail/detail_aquascape.dart';
import 'package:panduan_aquascape/widgets/rating/rating.dart';

class ListAquascape extends StatefulWidget {
  @override
  _ListAquascapeState createState() => _ListAquascapeState();
}

class _ListAquascapeState extends State<ListAquascape> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: ListView.builder(
            itemCount: desainAquascapeList.length,
            itemBuilder: (context, index) {
              final DesainAquascape desain = desainAquascapeList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailDesainAquascape(
                      desain: desain,
                    );
                  }));
                },
                child: Column(
                  children: [
                    Card(
                      elevation: 5,
                      margin: EdgeInsets.all(10),
                      // color: Colors.amber,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        // margin: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 400,
                              height: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(desain.imageAsset),
                                    fit: BoxFit.cover),
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      child: Text(
                                        desain.name,
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      child: StarDisplayWidget(
                                        value: 5,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          10.0, 0.0, 0.0, 15.0),
                                      child: Icon(
                                        Icons.location_pin,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0.0, 0.0, 0.0, 15.0),
                                      child: Text(
                                        'Jakarta',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                  ],
                                ),
                                // Align(
                                //   alignment: Alignment.centerLeft,
                                //   child: Container(
                                //     margin: EdgeInsets.all(12),
                                //     child: Text('ini text'),
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
