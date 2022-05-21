import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:stic_soft_assignment/controller.dart';

class HomePage extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          automaticallyImplyLeading: false,
          elevation: 0.0,
          title: Container(
            color: Colors.white,
            child: Obx(() => TextField(
              controller: controller.searchText.value,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                hintText: 'Enter a search',
              ),
              onChanged: (data){
                controller.onSearch();
              },
            )),
          ),
        ),
        body: controller.obx(
            (state) => Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Card(
                        color: context.theme.primaryColor,
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          right:
                                              BorderSide(color: Colors.white))),
                                  padding: EdgeInsets.only(
                                      left: 5, right: 10, bottom: 10, top: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Text("Title",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white))),
                                    ],
                                  )),
                            ),
                            Expanded(
                              flex: 8,
                              child: Container(
                                  padding: EdgeInsets.only(
                                      left: 5, right: 10, bottom: 10, top: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Text("Description",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white))),
                                    ],
                                  )),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(color: Colors.white)),
                                  ),
                                  padding: EdgeInsets.only(
                                      left: 5, right: 5, bottom: 10, top: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Text(
                                        "Qty",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 10),
                                      )),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              if(controller.productData.value.length > 0)
                              ...controller.productData.value
                                  .asMap()
                                  .entries
                                  .map((e) => Card(
                                        margin: EdgeInsets.all(10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 4,
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      // border: Border(right: BorderSide(color: Get.theme.textTheme.headline4.color))
                                                      ),
                                                  padding: EdgeInsets.only(
                                                      left: 5,
                                                      right: 10,
                                                      bottom: 10,
                                                      top: 10),
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                          child: Text(
                                                              e.value["name"]
                                                                  .toString(),
                                                              style: TextStyle(
                                                                  color: Get
                                                                      .theme
                                                                      .textTheme
                                                                      .headline4!
                                                                      .color))),
                                                    ],
                                                  )),
                                            ),
                                            Expanded(
                                              flex: 8,
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      // border: Border(right: BorderSide(color: Get.theme.textTheme.headline4.color))
                                                      ),
                                                  padding: EdgeInsets.only(
                                                      left: 5,
                                                      right: 10,
                                                      bottom: 10,
                                                      top: 10),
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                          child: Text(
                                                              e.value["description"]
                                                                  .toString(),
                                                              style: TextStyle(
                                                                  color: Get
                                                                      .theme
                                                                      .textTheme
                                                                      .headline4!
                                                                      .color))),
                                                    ],
                                                  )),
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      // border: Border(right: BorderSide(color: Get.theme.textTheme.headline4.color))
                                                      ),
                                                  padding: EdgeInsets.only(
                                                      left: 5,
                                                      right: 10,
                                                      bottom: 10,
                                                      top: 10),
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                          child: Text(
                                                              e.value["quantity"]
                                                                  .toString(),
                                                              style: TextStyle(
                                                                  color: Get
                                                                      .theme
                                                                      .textTheme
                                                                      .headline4!
                                                                      .color))),
                                                    ],
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ))
                            
                            else
                             Container(
                               child: Center(child: Text("No Records Found",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                ) )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            onLoading: Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )),
      ),
    );
  }

  Widget returnTitleMenu(
    String text,
  ) {
    return ListTile(
      title: Container(
        padding: EdgeInsets.only(left: 10, bottom: 15),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Color(0xFFF5B5CF)))),
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xFF262F71)),
        ),
      ),
    );
  }
}
