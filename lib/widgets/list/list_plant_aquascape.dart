import 'package:flutter/material.dart';
import 'package:panduan_aquascape/models/plant_aquascape.dart';
import 'package:panduan_aquascape/widgets/detail/detail_plant.dart';

class PlantAquascape extends StatefulWidget {
  @override
  _PlantAquascapeState createState() => _PlantAquascapeState();
}

class _PlantAquascapeState extends State<PlantAquascape> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Plant Aquascape',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.7,
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5),
            itemCount: plantList.length,
            itemBuilder: (context, index) {
              final Plant plant = plantList[index];
              return Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Material(
                  borderRadius: BorderRadius.circular(15),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailPlant(
                              plant: plant,
                            );
                          },
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                plant.name,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          // Container(
                          // ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        // color: Colors.amber,
                        image: DecorationImage(
                            image: AssetImage(plant.assetsImage)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  color: Colors.transparent,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
