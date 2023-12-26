import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nation_guide_etr/components/flagtile.dart';
import 'package:nation_guide_etr/components/navigation_drawer.dart';
import 'package:nation_guide_etr/data/backdata.dart';
import 'package:nation_guide_etr/models/flags.dart';
import 'package:nation_guide_etr/screens/game.dart';
import 'package:country_flags/country_flags.dart';
import 'package:country_icons/country_icons.dart';
import 'package:countries_flag/countries_flag.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var flaglist = FLAGS.toList();
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('NATION GUIDE',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 22,
              fontWeight: FontWeight.w600
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text('Explore',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                Card(
                  color: Colors.grey.shade100,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text('Continents',
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        CarouselSlider(
                          items: CONTINENTS.map((continentName) {
                            return Builder(
                              builder: (context) {
                                return InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                      context: context,
                                      isScrollControlled: true,
                                      builder: (context) {
                                        List<CFlag> countriesInContinent = FLAGS.where((country) => country.continent == continentName.continent).toList();
                                        return Container(
                                          height: 700,
                                          padding: EdgeInsets.only(top: 15),
                                          child: Column(
                                            children: [
                                              Text(continentName.continent,
                                                style: TextStyle(
                                                  fontSize: 25
                                                ),
                                              ),
                                              Expanded(
                                                child: SingleChildScrollView(
                                                  child: Container(
                                                    height: 700,
                                                    child: GridView.builder(
                                                      primary: false,
                                                      padding: const EdgeInsets.all(10.0),
                                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                        crossAxisSpacing: 10.0,
                                                        mainAxisSpacing: 5,
                                                        crossAxisCount: 2,
                                                        childAspectRatio: 5/3.25,
                                                      ),
                                                      itemCount: countriesInContinent.length,
                                                      itemBuilder: (context, index) {
                                                        return Container(
                                                          padding: EdgeInsets.only(top: 1),
                                                          child: FlagTile(countriesInContinent[index]),
                                                        );
                                                      },
                                                    ),
                                                  ),                                
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Container(
                                    width: 300,
                                    margin: EdgeInsets.only(top: 7, bottom: 10),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blue.shade600
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset(continentName.image,
                                          alignment: Alignment.centerRight,
                                        ),
                                        VerticalDivider(),
                                        Flexible(
                                          child: Text(
                                            continentName.continent,
                                            style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                );
                              },
                            );
                          }).toList(), 
                          options: CarouselOptions(
                            height: 150,
                            scrollDirection: Axis.horizontal,
                            autoPlay: false,
                            enlargeCenterPage: true,
                            onPageChanged: (index, _) {
                            setState(() {
                              _current = index;
                            });
                          },
                          ),
                        ),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: CONTINENTS.asMap().entries.map((entry) {
                            int index = entry.key;
                            return Container(
                              width: 8.0,
                              height: 8.0,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _current == index
                                    ? Colors.blueAccent
                                    : Colors.grey,
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)
                  ),
                  child: Container(
                    color: Colors.blue.shade300,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 2),
                          child: Text('All Countries',
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          margin: EdgeInsets.all(3),
                          child: SizedBox(
                            height: 610,
                            child: GridView.builder(
                              primary: false,
                              padding: const EdgeInsets.all(10.0),
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 5,
                                crossAxisCount: 2,
                                childAspectRatio: 5/3.25,
                              ),
                              itemCount: flaglist.length,
                              itemBuilder: (context, index) {
                                return FlagTile(flaglist[index]);
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
                
              ],
            ),
          ),
        )
      );
  }
}