import 'package:flutter/material.dart';
import 'package:panduan_aquascape/widgets/create_aquascape.dart';
import 'package:panduan_aquascape/widgets/list/list_desain_aquascape.dart';
import 'package:panduan_aquascape/widgets/list/list_plant_aquascape.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Center(
                child: Container(
                  child: Text(
                    'Aquascape',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1,
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      image: DecorationImage(
                        image: AssetImage('images/nature.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CreateAquascape();
                      }));
                    },
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 403,
                              height: 80,
                              child: Center(
                                child: Text(
                                  'Membuat Aquascape',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                image: DecorationImage(
                                    image: AssetImage('images/jungle.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 403,
                              height: 80,
                              child: Center(
                                child: Text(
                                  'Perawatan Aquascape',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'images/masukan-hardscape.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ListAquascape();
                      }));
                    },
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 403,
                              height: 80,
                              child: Center(
                                child: Text(
                                  'Desain Aquascape',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                image: DecorationImage(
                                    image: AssetImage('images/dutch.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Perlengkapan Aquascape',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ListAquascape();
                            }));
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              // width: 200,
                              height: 200,
                              child: Material(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.transparent,
                                elevation: 2,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return PlantAquascape();
                                    }));
                                  },
                                  borderRadius: BorderRadius.circular(10),
                                  child: Center(
                                      child: Text(
                                    'Tanaman Aquascape',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  )),
                                ),
                              ),
                              decoration: BoxDecoration(
                                // color: Colors.amber,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'images/hairgrass.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            // width: 200,
                            height: 200,
                            child: Center(
                                child: Text(
                              'Ikan Aquascape',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            )),
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              image: DecorationImage(
                                image: AssetImage(
                                  'images/ikan-aquascape.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            // width: 200,
                            height: 200,
                            child: Center(
                                child: Text(
                              'Pasir/Soil Aquascape',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            )),
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              image: DecorationImage(
                                image: AssetImage(
                                  'images/pasir-atau-soil.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            // width: 200,
                            height: 200,
                            child: Center(
                                child: Text(
                              'Hardscape Aquascape',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            )),
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              image: DecorationImage(
                                image: AssetImage(
                                  'images/hardscape.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            // width: 200,
                            height: 200,
                            child: Center(
                                child: Text(
                              'Pupuk Aquascape',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            )),
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              image: DecorationImage(
                                image: AssetImage(
                                  'images/pupuk.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            // width: 200,
                            height: 200,
                            child: Center(
                                child: Text(
                              'Filter Aquascape',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            )),
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              image: DecorationImage(
                                image: AssetImage(
                                  'images/filter-canister.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
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
    );
  }
}
