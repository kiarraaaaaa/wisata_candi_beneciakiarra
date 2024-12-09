import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wisata_candi1/data/candi_data.dart';
import 'package:wisata_candi1/models/candi.dart';
import 'package:wisata_candi1/widgets/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _imageFile='';
  final picker = ImagePicker();

  Future<void> _getImage(ImageSource source) async{
    final pickedFile = await picker.pickImage(source: source);
    if(pickedFile != null) {
      setState(() {
        _imageFile = pickedFile.path;
      });
    }
  }
  void _showPicker() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min, // Set minimal height
          children: [
            ListTile(
              title: Text(
                'Image Source',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.photo_library),
              title: Text('Gallery'),
              onTap: () {
                Navigator.of(context).pop(); // Close the modal
                _getImage(ImageSource.gallery); // Open gallery
              },
            ),
            ListTile(
              leading: Icon(Icons.camera_alt),
              title: Text('Camera'),
              onTap: () {
                Navigator.of(context).pop(); // Close the modal
                _getImage(ImageSource.camera); // Open camera
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 1. Buat appbar dengan judul Wisata Candi
      appBar: AppBar(
        title: Text('widget.title'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // TODO: 2. Buat body dengan GridView.builder
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            _imageFile.isNotEmpty
                ? Image.file(
              File(_imageFile),
              height: 258,
              fit: BoxFit.cover,
            )
                :Container(
              color: Colors.grey,
              height: 258,
              width: double.infinity,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _showPicker,
              child: const Text('Take Picture'),
            ),
          ],
        ),
      ),
    );
  }
}