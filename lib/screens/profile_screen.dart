import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// TODO:1. Deklarasikan variabel yang dibutuhkan
bool isSignedin = false;
String fullName = '';
String userName = '';
int favoriteCandiCount = 8;

class ProfileScreen extends State<ProfileScreen> {
  bool isSignedin = false;
  String fullName='';
  String userName='';
  int favoriteCandiCount=8;
  late Color iconColor;

  void signIn(){
    // setState((){
    // isSignedIn= true;
    // userName = 'budi';
    // fullName = 'Budi Santoso';
    // favoriteCandiCount=3;
    //});

    Navigator.pushNamed(context,'/signin');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.deepPurple,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              //TODO:2. Buat bagian ProfilHeader yang berisi gambar profil
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 200 - 50),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.deepPurple, width: 2),
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('imahes/placeholder_image.png'),
                        ),
                      ),
                      if (isSignedin)
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.deepPurple[50],
                          ),
                        ),
                    ],
                  ),
                ),
              )
              //TODO:3. Buat bagian ProfilInfo yang berisi info profil
              //TODO:4 Buat ProfileActions yang berisi TextButton sign in/out
            ],
          ),
        ),
      ],
    ));
  }
}
