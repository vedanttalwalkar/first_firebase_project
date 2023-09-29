// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:first_firebase_project/database.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 

  late List? list;

  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      
      theme: ThemeData.light().copyWith(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)),
      home: Scaffold(
        body: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            title: Text(list![index].toString()),
          ),
        ),
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(onPressed: () async {}),
      ),
    );
  }
}
