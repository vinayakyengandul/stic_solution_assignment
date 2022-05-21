import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin {
  Map<String, dynamic> data = new Map<String, dynamic>();
  Rx<List<Map<dynamic, dynamic>>> productData =
      new Rx<List<Map<String, dynamic>>>([]);
  Rx<TextEditingController> searchText =
      new Rx<TextEditingController>(TextEditingController(text: ""));
  late Timer timer;
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  @override
  void onInit() async {
    var android = new AndroidInitializationSettings('@mipmap/ic_launcher');
    var iOS = new IOSInitializationSettings();
    var initSetttings = new InitializationSettings(android: android, iOS: iOS);
    flutterLocalNotificationsPlugin.initialize(initSetttings,);
    data = {
      "products": [
        {
          "name": "mango",
          "description": "this is seasonal fruit",
          "quantity": "200"
        },
        {
          "name": "watermelon",
          "description": "this is fruit",
          "quantity": "20"
        },
        {"name": "grapes", "description": "this is fruit", "quantity": "200"},
        {"name": "pizza", "description": "this is junk food", "quantity": "1"},
        {"name": "donut", "description": "this is junk food", "quantity": "11"},
        {"name": "papaya", "description": "this is fruit", "quantity": "2"},
        {"name": "blue-berry", "description": "this is fruit", "quantity": "0"},
        {
          "name": "strawberry",
          "description": "this is fruit",
          "quantity": "209"
        },
        {
          "name": "cucumber",
          "description": "this is cucumber healthy",
          "quantity": "10"
        },
        {"name": "potato", "description": "this is vegetable", "quantity": "2"},
        {
          "name": "beans",
          "description": "this is vegetable",
          "quantity": "266"
        },
        {"name": "garlic", "description": "this is garlic m", "quantity": "5"},
        {
          "name": "pumpkin",
          "description": "this is vegetable",
          "quantity": "1"
        },
        {"name": "mint", "description": "this is mint fl", "quantity": "211"},
        {"name": "spinach", "description": "this is good", "quantity": "2"},
        {
          "name": "corn",
          "description": "this is super taste",
          "quantity": "29"
        },
        {
          "name": "cauliflower",
          "description": "this is vegetable",
          "quantity": "20"
        },
        {
          "name": "mirchi",
          "description": "this is vegetable",
          "quantity": "24"
        },
        {
          "name": "sweet potato",
          "description": "this is sweet",
          "quantity": "23"
        },
        {"name": "salad", "description": "Good in taste", "quantity": "11"},
      ]
    };
    timer = Timer.periodic(Duration(minutes: 1), (Timer t) => checkNewList());
    apiData();
    super.onInit();
  }

  apiData() async {
    productData.value = data["products"];
    productData.value = productData.value
        .where((element) =>
            element["name"].toString().contains(searchText.value.text) ||
            element["description"].toString().contains(searchText.value.text))
        .toList();
    change("sucess", status: RxStatus.success());
  }

  checkNewList() {
    if (productData.value.length > 0) {
      print("Call");
      var rng = Random();
      var rInt = rng.nextInt(productData.value.length);
      print(rInt);
      productData.value[rInt]["quantity"] =
          (int.parse(productData.value[rInt]["quantity"]) + 1).toString();
      showNotification("Only " +  productData.value[rInt]["quantity"] + " " + productData.value[rInt]["name"] + " available now");
      change("sucess", status: RxStatus.success());
    }
  }

  showNotification(val) async {
    var android = new AndroidNotificationDetails(
        'channel id', 'channel NAME',channelDescription: 'CHANNEL DESCRIPTION',
        priority: Priority.high, importance: Importance.max);
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android: android, iOS: iOS);
    await flutterLocalNotificationsPlugin.show(
        0, 'New Update', '${val}', platform,
        payload: 'AndroidCoding.in');
  }

  onSearch() {
    apiData();
  }
}
