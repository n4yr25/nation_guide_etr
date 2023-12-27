import 'package:flutter/material.dart';
import 'package:nation_guide_etr/components/createprofile.dart';
import 'package:nation_guide_etr/components/navigation_drawer.dart';
import 'package:nation_guide_etr/helpers/dbHelper.dart';
import 'package:nation_guide_etr/models/profile.dart';
import 'package:nation_guide_etr/utilities/itemprofile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late bool profileExists = false;

  @override
  void initState() {
    super.initState();
    checkProfileExists();
  }

  Future<void> checkProfileExists() async {
    bool exists = await DbHelper.checkProfileTableExistence();
    setState(() {
      profileExists = exists;
    });
  }

  void insertProfile(Profile p) {
    DbHelper.insertProfile(p);
    setState(() {});
  }

  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
          title: Text('PROFILE',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 22,
              fontWeight: FontWeight.w600
            ),
          ),
          centerTitle: true,
        ),
        body: profileExists ? showProfile(context) : noProfile(context),
    );
  }
}

Widget showProfile(BuildContext context) {
  Profile profile;

  return FutureBuilder(
    future: DbHelper.fetchQuery(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return CircularProgressIndicator();
      } else if (snapshot.hasError) {
        return Text('Error: ${snapshot.error}');
      } else if (!snapshot.hasData || snapshot.data == null) {
        return noProfile(context); // If no profile data is available
      } else {
        Map<String, dynamic> profileData = snapshot.data!.single;
        Profile profile = Profile(
          name: profileData['name'],
          address: profileData['address'],
          phone: profileData['phone'],
          email: profileData['email'],
        );
        return SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.symmetric(vertical: 30),
                  decoration: BoxDecoration(
                      border: Border.all(
                      width: 2,
                      color: Colors.grey.shade500,
                    ),
                    borderRadius: BorderRadius.circular(110),
                  ),
                  child: Icon(
                    Icons.person,
                    color: Colors.blue,
                    size: 90,
                  ),
                ),
                itemProfile('Name', profile.name, Icons.person),
                itemProfile('Address', profile.address, Icons.location_city),
                itemProfile('Phone', profile.phone.toString(), Icons.phone),
                itemProfile('Email', profile.email, Icons.email),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      
                    }, 
                    child: Text('Edit',
                      style: TextStyle(
                        fontSize: 20,
                          color: Colors.white
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue.shade600),
                    ),
                  )
                )
              ],
            ),
          ),
        );
      }
    },
  );
}

Widget noProfile(BuildContext context) {
  return SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 80),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.symmetric(vertical: 30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.shade500,
                    ),
                    borderRadius: BorderRadius.circular(110),
                  ),
                  child: Icon(
                    Icons.person,
                    color: Colors.blue,
                    size: 90,
                  ),
                ),
                Container(
                  child: Text('Hi User!',
                    style: TextStyle(
                      fontSize: 30
                    ),
                  ),
                ),
                Container(
                  child: Text('You don\'t have Profile.',
                  style: TextStyle(
                      fontSize: 25
                    )
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => CreateProfile(),)
                      );
                    }, 
                    child: Text('Create Your Profile',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue.shade600),
                    ),
                  )
                )
              ],
            ),
          ),
        );
}

