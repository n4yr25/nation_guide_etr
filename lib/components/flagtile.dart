import 'package:countries_flag/countries_flag.dart';
import 'package:flutter/material.dart';
import 'package:nation_guide_etr/models/flags.dart';
import 'package:nation_guide_etr/screens/countrydetails.dart';

class FlagTile extends StatelessWidget {
  FlagTile(this.cflag, {super.key});

  CFlag cflag;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.grey.shade300,
      child: InkWell(
        onTap: () {
          Navigator.push(context, 
            MaterialPageRoute(
              builder: (_) => CountryDetails(cflag)
            ),
          );
        },
        child: Column(
          children: [
            CountriesFlag(
              cflag.flagicon, 
                width: 90,
                height: 80,
                fit: BoxFit.fill,
                alignment: Alignment.center,
            ),
            Text(cflag.name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500
              ),
            ),
          ],
        ),
      ),
    );
  }
}