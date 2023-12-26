import 'package:countries_flag/countries_flag.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:nation_guide_etr/models/flags.dart';

class CountryDetails extends StatelessWidget {
  CountryDetails(this.cFlag, {super.key});
  CFlag cFlag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Country Information'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                child: Card(
                  elevation: 5,
                  color: Colors.grey.shade200,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            color: Colors.black,
                            padding: EdgeInsets.all(2),
                            child: AspectRatio(
                              aspectRatio: 2.75/1.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: CountriesFlag(
                                  cFlag.flagicon,
                                ),
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Details',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    Icon(Icons.info)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 3),
                child: Card(
                  color: Colors.grey.shade300,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text('Country Name: ',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(cFlag.name,
                                style: TextStyle(
                                  fontSize: 20
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          child: Row(
                            children: [
                              Text('Country Code: ',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text('\'${cFlag.code}\'',
                                style: TextStyle(
                                  fontSize: 20
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          child: Row(
                            children: [
                              Text('Continent: ',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(cFlag.continent,
                                style: TextStyle(
                                  fontSize: 20
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          child: Row(
                            children: [
                              Text('Capital: ',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(cFlag.capital,
                                style: TextStyle(
                                  fontSize: 20
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Geography: ',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Expanded(
                                child: Text(cFlag.geography,
                                  style: TextStyle(
                                    fontSize: 20
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('History: ',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Expanded(
                                child: Text(cFlag.history,
                                  style: TextStyle(
                                    fontSize: 20
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}