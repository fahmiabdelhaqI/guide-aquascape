import 'package:flutter/material.dart';
import 'package:panduan_aquascape/models/desain_aquascape.dart';

class DetailDesainAquascape extends StatelessWidget {
  final DesainAquascape desain;
  DetailDesainAquascape({this.desain});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Detail Aquascape'),
        // ),
        body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        child: Text(
                          desain.name,
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 30),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1,
                        height: MediaQuery.of(context).size.height / 2.75,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(desain.imageAsset),
                        )),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: Text(
                                'Penjelasan  ',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                ),
                                // textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 2,
                            indent: 5,
                            endIndent: 200,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                            margin: EdgeInsets.all(5),
                            child: Text(
                              desain.description,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          child: Text(
                            'Jenis Tanaman',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        indent: 5,
                        endIndent: 200,
                        color: Colors.grey,
                      ),
                      Column(
                        children: [
                          Card(
                            elevation: 3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: 100,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.amber,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'images/plant/riccia-fluitans.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  child: Text('Riccia Fluitans'),
                                )
                              ],
                            ),
                          ),
                          Card(
                            elevation: 3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: 100,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.amber,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'images/plant/cryotocoryne.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  child: Text('Cryotocoryne'),
                                )
                              ],
                            ),
                          ),
                          Card(
                            elevation: 3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: 100,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.amber,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'images/plant/glossostigma_elatinoides.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  child: Text('Glossostigma Elatinoides'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
