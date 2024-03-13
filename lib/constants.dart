import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:shortvid_mvp_final/controllers/auth_controller.dart';
import 'package:shortvid_mvp_final/views/screens/add_video_screen.dart';
import 'package:shortvid_mvp_final/views/screens/profile_screen.dart';
import 'package:shortvid_mvp_final/views/screens/search_screen.dart';
import 'package:shortvid_mvp_final/views/screens/video_screen.dart';

List pages = [
  VideoScreen(),
  SearchScreen(),
  const AddVideoScreen(),
  const Text('Messages Screen'), //+const
  ProfileScreen(uid: authController.user.uid),
];

//Цвета
const backgroundColor = Colors.black;
var buttonColor = Color.fromARGB(255, 187, 38, 73);
const borderColor = Colors.grey;

//FIREBASE
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

//CONTROLLER
var authController = AuthController.instance;
