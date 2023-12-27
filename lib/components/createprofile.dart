import 'package:flutter/material.dart';
import 'package:nation_guide_etr/helpers/dbHelper.dart';
import 'package:nation_guide_etr/models/profile.dart';
import 'package:nation_guide_etr/screens/profile.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({Key? key}) : super(key: key);

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();

    final nameController = TextEditingController();
    final addressController = TextEditingController();
    final phoneController = TextEditingController();
    final emailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextFormField(
                controller: addressController,
                decoration: InputDecoration(labelText: 'Address'),
              ),
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(labelText: 'Phone'),
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                child: ElevatedButton(
                  onPressed: () {
                    DbHelper.insertProfile(
                      Profile(
                        name: nameController.text, 
                        address: addressController.text, 
                        phone: int.parse(phoneController.text), 
                        email: emailController.text)
                    );
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));
                  },
                  child: Text(
                    'Create',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue.shade600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
