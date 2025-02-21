import 'dart:io';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AccountPage extends ConsumerStatefulWidget {
  const AccountPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AccountPageState();
}

class _AccountPageState extends ConsumerState<AccountPage> {
  File? _imageFile;
  bool _isUploading = false;
  final Future<String?> user = UserStorage.getUserName();

  // Pick an image from the gallery
  Future<void> pickImage() async {
    try {
      if (Platform.isAndroid) {
        await requestPermission();
      }

      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        setState(() {
          _imageFile = File(image.path);
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error picking image: $e')),
      );
    }
  }

  // Upload the selected image to Supabase storage
  Future<void> uploadImage() async {
    if (_imageFile == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select an image first.')),
      );
      return;
    }

    setState(() {
      _isUploading = true;
    });

    try {
      final fileName = DateTime.now().millisecondsSinceEpoch.toString();
      final path = 'uploads/$fileName';

      await Supabase.instance.client.storage
          .from('images') // Replace 'images' with your bucket name
          .upload(path, _imageFile!);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Profile updated successfully! File: $path')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error uploading image: ${e.toString()}')),
      );
    } finally {
      setState(() {
        _isUploading = false;
      });
    }
  }

  Future<void> requestPermission() async {
    if (Platform.isAndroid) {
      if (await Permission.photos.isDenied ||
          await Permission.photos.isPermanentlyDenied) {
        await Permission.photos.request();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage:
                  _imageFile != null ? FileImage(_imageFile!) : null,
              child: _imageFile == null
                  ? const Icon(Icons.person, size: 50)
                  : null,
            ),
            const SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: pickImage,
            //   child: const Text('Pick Photo Profile'),
            // ),
            // ElevatedButton(
            //   onPressed: _isUploading ? null : uploadImage,
            //   child: _isUploading
            //       ? const CircularProgressIndicator()
            //       : const Text('Update Photo Profile'),
            // ),
            ElevatedButton(
              onPressed: () {
                context.go(LOGIN_PAGE_ROUTE);
              },
              child: const Text('Log Out'),
            )
          ],
        ),
      ),
    );
  }
}
