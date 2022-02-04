import 'package:flutter/material.dart';
import 'package:test_app/src/controllers/scheduleCreationController.dart';
import 'package:test_app/src/views/home.dart';
import 'package:get/get.dart';

void main() {
  Get.put(ScheduleCreationController(eventTitle: 'Samuel'), permanent: true);
  runApp(MaterialApp(
    home: Home(),
  ));
}
