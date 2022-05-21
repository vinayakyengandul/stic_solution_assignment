// Skip to content
// Search or jump to…
// Pull requests
// Issues
// Marketplace
// Explore
 
// @vinayakyengandul 
// greytrix
// /
// pocket-hrms
// Private
// Code
// Issues
// Pull requests
// Actions
// Projects
// Security
// Insights
// Settings
// pocket-hrms/plugin/pocket-employee-portal/plugin/leave_module/lib/src/views/leave_request_manual_attendance_entry.dart

// “Bhushan manual attendance
// Latest commit 56d5623 2 days ago
//  History
//  0 contributors
// 569 lines (559 sloc)  32.5 KB
   
// import 'package:core/core.dart';
// import 'package:flutter/material.dart';
// import 'package:greytrix_ui_kit/greytrix_ui_kit.dart';
// import 'package:employeeportal/employeeportal.dart';
// import 'package:leave_module/src/controllers/leave_request_manual_attendance_entry.dart';
// import 'package:syncfusion_flutter_datepicker/datepicker.dart';

// class LeaveRequestManualAttendanceEntryPage extends GetView<ManualAttendanceEntryController> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.filter_alt_outlined,color: Colors.white,size: 30,
//         ),
//         backgroundColor: Colors.blueAccent
//         , onPressed: () {
//         showModalBottomSheet(
//             context: context,
//             builder: (context) {
//               return Container(
//                   margin: EdgeInsets.all(10),
//                   padding: EdgeInsets.all(10),
//                   color: Colors.transparent,
//                   child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.min,
//                       children: <Widget>[
//                         GtDate(
//                           // isBlank.false,
//                           suffixDateIcon: Icon(Icons.date_range,color: Get.theme.textTheme.headline4.color,),
//                           labeltextStyle: TextStyle(color: Get.theme.textTheme.headline4.color),
//                           datetextStyle:TextStyle(color: Get.theme.textTheme.headline4.color),
//                           timetextStyle: TextStyle(color: Get.theme.textTheme.headline4.color),
//                           // prefixIcon: null,
//                           iconColor:Get.theme.textTheme.headline4.color ,
//                           selectedTextStyle: TextStyle(color: Get.theme.textTheme.headline4.color),
//                           themeData: ThemeData.dark().copyWith(
//                             colorScheme: ColorScheme.dark(
//                               primary: Colors.blue,//Get.theme.colorScheme.background,//Get.theme.chipTheme.backgroundColor,//Get.theme.cardTheme.color,//Get.context.theme.secondaryHeaderColor,,// Colors.deepPurple,
//                               onPrimary: Colors.white,
//                               surface: Get.theme.colorScheme.background,//Colors.pink,
//                               onSurface: Get.theme.textTheme.headline4.color,//Colors.yellow,
//                             ),
//                             dialogBackgroundColor: Get.theme.colorScheme.background,//Colors.blue[900],
//                             textButtonTheme: TextButtonThemeData(
//                               style: TextButton.styleFrom(
//                                 primary: Get.theme.textTheme.headline4.color,//Colors.red, // button text color
//                               ),
//                             ),
//                           ),
//                           datePickerEntryMode: DatePickerEntryMode.calendar,
//                           initialDate: DateTime.now(),
//                           type: GtDateTimeType.DATE,
//                           label: 'Date'.tr,
//                           firstDate: DateTime(1920),
//                           lastDate: DateTime(2100),
//                           dateTextEditingController: controller.fromDateController.value,
//                           onDateSubmitted: controller.onFromDateSubmitted,
//                         ),
//                         // GestureDetector(
//                         //   onTap: () => showDialog(
//                         //       context: context,
//                         //       builder: (BuildContext context) {
//                         //         return AlertDialog(
//                         //           insetPadding: EdgeInsets.symmetric(horizontal: 20),
//                         //           content: SingleChildScrollView(
//                         //             child: Column(
//                         //               children: [
//                         //                 Container(
//                         //                   width: MediaQuery.of(context).size.width - 50,
//                         //                   height: MediaQuery.of(context).size.width - 50,
//                         //                   child:  SfDateRangePicker(
//                         //
//                         //                     onSelectionChanged: (DateRangePickerSelectionChangedArgs args){
//                         //                       if (args.value is PickerDateRange) {
//                         //                         print('${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
//                         //                         // ignore: lines_longer_than_80_chars
//                         //                             ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}');
//                         //                       } else if (args.value is DateTime) {
//                         //                         print(args.value.toString());
//                         //                       } else if (args.value is List<DateTime>) {
//                         //                         print(args.value.length.toString());
//                         //                       } else {
//                         //                         print(args.value.length.toString());
//                         //                       }
//                         //                     },
//                         //
//                         //                     selectionMode: DateRangePickerSelectionMode.range,
//                         //                     initialSelectedRange: PickerDateRange(
//                         //                         DateTime.now(),
//                         //                         DateTime.now()),
//                         //                   ),
//                         //                 ),
//                         //               ],
//                         //             ),
//                         //           ),
//                         //         );
//                         //       }
//                         //     ),
//                         //
//                         //   child: AbsorbPointer(
//                         //     child: GtTextFormField(
//                         //       // boxDecoration: boxDecoration,
//                         //       // inputDecoration: inputDecoration,
//                         //       // fieldLabel: datefieldLabel,
//                         //       // labeltextStyle: datetextStyle ?? TextStyle(),
//                         //       isReadOnly: true,
//                         //       // isRequired: isRequired,
//                         //       onSaveHandler: (val) {
//                         //         // if (onSaveHandler != null) {
//                         //         //   onSaveHandler(initialDate, GtDateTimeType.DATE);
//                         //         // }
//                         //       }, fieldLabel: '',
//                         //       // textEditingController: dateTextEditingController,
//                         //       // textStyle: selectedTextStyle,
//                         //       // prefixIcon: prefixDateIcon,
//                         //       // chips: suffixDateIcon,
//                         //     ),
//                         //   ),
//                         // ),

//                         SizedBox(
//                           height: 10,
//                         ),

//                         SizedBox(
//                           height: 50,
//                           child: GtButton(
//                             buttonStyle: ButtonStyle(
//                               elevation: MaterialStateProperty.all(3.0),
//                               backgroundColor: MaterialStateProperty.all(Color(0xff0675ff)),// android button bg color
//                               foregroundColor: MaterialStateProperty.all(Colors.white),// android button text color
//                             ),
//                             text: 'Search'.tr,
//                             textStyle: TextStyle(color: Colors.white,fontSize: 14.0),// ios button text color
//                             color: Color(0xff0675ff), // ios button bg color
//                             onPressed: () => {
//                               Loader.showLoader(),
//                               controller.searchBtnPressed(),
//                               Navigator.of(context).pop(),
//                             },
//                           ),
//                         ),

//                       ])
//               );
//             });
//       },
//       ),
//         body: Container(
//           color: context.theme.colorScheme.background,
//           child: controller.obx(
//                   (state) {
//                 return Column(
//                   children: [
//                     Card(
//                       color: context.theme.primaryColor,
//                       margin: EdgeInsets.all(10),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Row(
//                         children: [
//                           Obx(() => SizedBox(
//                             height: 20,
//                             width: 35,
//                             child: Checkbox(value: controller.checkAll.value ,
//                               side: BorderSide(color: Colors.white),
//                               shape:  RoundedRectangleBorder(borderRadius: BorderRadius. all(Radius. circular(5.0))),
//                               activeColor: Colors.green,
//                               onChanged:(bool newValue){
//                                 controller.selectAllCheckBox(newValue);
//                               },
//                             ),
//                           )),
//                           Expanded(
//                             flex: 4,
//                             child: Container(
//                                 decoration: BoxDecoration(
//                                     border: Border(right: BorderSide(color: Colors.white))
//                                 ),
//                                 padding: EdgeInsets.only(left: 5,right: 10,bottom: 10,top: 10),
//                                 child: Row(
//                                   children: [
//                                     Expanded(child: GtText(text: "Code",textStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.white))),
//                                   ],
//                                 )),
//                           ),
//                           Expanded(
//                             flex: 8,
//                             child: Container(
//                                 padding: EdgeInsets.only(left: 5,right: 10,bottom: 10,top: 10),
//                                 child: Row(
//                                   children: [
//                                     Expanded(child: GtText(text:  "Employee Name",textStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.white))),
//                                   ],
//                                 )),
//                           ),
//                           Expanded(
//                             flex: 3,
//                             child: Container(
//                                 decoration: BoxDecoration(
//                                     border: Border(left: BorderSide(color: Colors.white)),
//                                 ),
//                                 padding: EdgeInsets.only(left: 5,right: 5,bottom: 10,top: 10),
//                                 child: Row(
//                                   children: [
//                                     Expanded(child: GtText(text: DateFormat('dd/MM/yyyy').format(controller.listDate.value) ,textStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 10),)),
//                                   ],
//                                 )),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Expanded(
//                       child: GtListPage(
//                         rowsCount: 4,
//                         backButtonColor: Get.theme.colorScheme.background,
//                         spaceBetweenKeyValue: true,
//                         mainCardMargin:
//                         const EdgeInsets.only(left: 3, bottom: 0, top: 0, right: 3),
//                         cardMarginEdgeInsets: const EdgeInsets.fromLTRB(0, 0, 0, 0),
//                         isLeadingShow: false,
//                         listItems:
//                         controller.data.value,
//                         viewtype: ViewType.list,
//                         gtTileRowMainAxisAlignment: MainAxisAlignment.center,
//                         gtTileRowCrossAxisAlignment: CrossAxisAlignment.center,
//                         // backNavigation: false,
//                         isSpaceInRecords: true,
//                         // isListView: true,
//                         mobileHeader: true,
//                         isleadingIconPosition: false,
//                         size: Get.size,
//                         listCustomWidgetType: GtListCustomWidgetType.LIST,
//                         currentListViewType: GtCurrentListViewType.LIST,
//                         listViewTableType: GTListViewTableType.STRIPED,
//                         primaryColor: Get.theme.appBarTheme.shadowColor,
//                         backgroundcolor: Get.context.theme.colorScheme
//                             .background, //Get.context.theme.secondaryHeaderColor,
//                         cardColor: Get.theme.cardTheme.color,
//                         itemDatawidget: (i, e) => Card(
//                           margin: EdgeInsets.all(3),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           // margin: EdgeInsets.all(5.0),
//                           child: Row(
//                             children: [
//                              SizedBox(
//                               height: 20,
//                               width: 35,
//                               child: Checkbox(value: e["userDetails"]["isSelected"],
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius. all(Radius. circular(5.0))),
//                                 side: BorderSide(color: e["userDetails"]["shiftAssigned"] ?  Get.theme.textTheme.headline4.color : Get.theme.disabledColor ),
//                                 activeColor: Colors.green,
//                                 onChanged: e["userDetails"]["shiftAssigned"] ? (bool newValue){
//                                   controller.selectRecordCheckBox(newValue,i);
//                                 } : null,
//                               ),
//                             ),
//                               Expanded(
//                                 flex: 4,
//                                 child: Container(
//                                     decoration: BoxDecoration(
//                                         border: Border(right: BorderSide(color: Get.theme.textTheme.headline4.color))
//                                     ),
//                                     padding: EdgeInsets.only(left: 5,right: 10,bottom: 10,top: 10),
//                                     child: Row(
//                                       children: [
//                                         Expanded(child: GtText(text: e["userDetails"]["Code"].toString(),textStyle: TextStyle(color: Get.theme.textTheme.headline4.color))),
//                                       ],
//                                     )),
//                               ),
//                               Expanded(
//                                 flex: 8,
//                                 child: Container(
//                                     padding: EdgeInsets.only(left: 5,right: 10,bottom: 10,top: 10),
//                                     child: Row(
//                                       children: [
//                                         Expanded(child: GtText(text:  e["userDetails"]["FName"].toString() + " " + e["userDetails"]["LName"].toString(), textStyle: TextStyle(color: Get.theme.textTheme.headline4.color),)),
//                                       ],
//                                     )),
//                               ),
//                               Expanded(
//                                 flex: 3,
//                                 child: Container(
//                                     decoration: BoxDecoration(
//                                         color: returnColor(e["monthDetails"][controller.listDate.value.day.toString()]),
//                                         borderRadius: BorderRadius.only (bottomRight:  Radius.circular(12),topRight:  Radius.circular(12))
//                                     ),
//                                     padding: EdgeInsets.only(left: 5,right: 10,bottom: 10,top: 10),
//                                     child: Row(
//                                       children: [
//                                         Expanded(child: GtText(text: returnString(e["monthDetails"][controller.listDate.value.day.toString()].toString()),textStyle: TextStyle(color: Colors.white,fontSize: 12),)),
//                                       ],
//                                     )),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     Card(
//                       margin: EdgeInsets.all(5),
//                       child: Container(
//                         padding: EdgeInsets.all(10),
//                         height: MediaQuery.of(context).size.height > 700 ? 250 : 100 ,
//                         child: SingleChildScrollView(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 padding: EdgeInsets.all(5),
//                                 child:  Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     GtText(text: " Date : ${ DateFormat('dd/MM/yyyy').format(controller.currentDate.value)}",textStyle: TextStyle(color: Get.theme.textTheme.headline4.color, fontWeight: FontWeight.w700,),),
//                                     GtText(text: "", textStyle: TextStyle(color: Get.theme.textTheme.headline4.color, fontWeight: FontWeight.w500),)
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 padding: EdgeInsets.all(5),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                   children: [
//                                     GtText(text: "Shift Time (24Hr)",textStyle: TextStyle(color: Get.theme.textTheme.headline4.color, fontWeight: FontWeight.w500),),
//                                     GtText(text: "Types of Leave", textStyle: TextStyle(color: Get.theme.textTheme.headline4.color, fontWeight: FontWeight.w500),)
//                                   ],
//                                 ),
//                               ),
//                               Row(
//                                 children: [
//                                   Expanded(
//                                     child: Column(
//                                       children: [
//                                         Wrap(
//                                           crossAxisAlignment: WrapCrossAlignment.center,
//                                           children: [
//                                           Container(width: 40,height: 40, margin: EdgeInsets.all(3), child: GtTextFormField(
//                                             textEditingController: controller.textFormFromHour.value,
//                                             textInputType: TextInputType.number,
//                                             fieldLabel: "",
//                                             textStyle: TextStyle(color: Get
//                                                 .theme
//                                                 .textTheme
//                                                 .headline1
//                                                 .color),
//                                             boxDecoration: BoxDecoration(
//                                                 borderRadius: BorderRadius.circular(4.0),
//                                                 border: Border.all(color: Get
//                                                     .theme
//                                                     .textTheme
//                                                     .headline1
//                                                     .color,)
//                                             ),
//                                             inputDecoration:
//                                             InputDecoration(
//                                               contentPadding:
//                                               EdgeInsets.only(
//                                                   bottom: 10,
//                                                   right: 10,
//                                                   left: 10,
//                                                   top: 5),

//                                             ),)),
//                                           Container(width: 40,height: 40, margin: EdgeInsets.all(3),
//                                               child: GtTextFormField(
//                                                 textEditingController: controller.textFormFromMin.value,
//                                                 textInputType: TextInputType.number,
//                                                 fieldLabel: "",
//                                                 textStyle: TextStyle(color: Get
//                                                     .theme
//                                                     .textTheme
//                                                     .headline1
//                                                     .color),
//                                                 boxDecoration: BoxDecoration(
//                                                     borderRadius: BorderRadius.circular(4.0),
//                                                     border: Border.all(color: Get
//                                                         .theme
//                                                         .textTheme
//                                                         .headline1
//                                                         .color,)
//                                                 ),
//                                                 inputDecoration:
//                                                 InputDecoration(
//                                                   contentPadding:
//                                                   EdgeInsets.only(
//                                                       bottom: 10,
//                                                       right: 10,
//                                                       left: 10,
//                                                       top: 5),

//                                                 ),)
//                                           ),

//                                           ],
//                                         ),
//                                         GtText(text: "-",textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 10, color:  Get
//                                             .theme
//                                             .textTheme
//                                             .headline1
//                                             .color),),
//                                         Wrap(
//                                           children: [
//                                             Container(width: 40,height: 40, margin: EdgeInsets.all(3), child: GtTextFormField(
//                                               textEditingController: controller.textFormToHour.value,
//                                               fieldLabel: "",
//                                               textStyle: TextStyle(color: Get
//                                                   .theme
//                                                   .textTheme
//                                                   .headline1
//                                                   .color),
//                                               textInputType: TextInputType.number,
//                                               boxDecoration: BoxDecoration(
//                                                   borderRadius: BorderRadius.circular(4.0),
//                                                   border: Border.all(color: Get
//                                                       .theme
//                                                       .textTheme
//                                                       .headline1
//                                                       .color,)
//                                               ),
//                                               inputDecoration:
//                                               InputDecoration(
//                                                 contentPadding:
//                                                 EdgeInsets.only(
//                                                     bottom: 10,
//                                                     right: 10,
//                                                     left: 10,
//                                                     top: 5),

//                                               ),)),
//                                             Container(width: 40,height: 40, margin: EdgeInsets.all(3),
//                                                 child: GtTextFormField(
//                                                   textEditingController: controller.textFormToMin.value,
//                                                   textInputType: TextInputType.number,
//                                                   fieldLabel: "",
//                                                   textStyle: TextStyle(color: Get
//                                                       .theme
//                                                       .textTheme
//                                                       .headline1
//                                                       .color),
//                                                   boxDecoration: BoxDecoration(
//                                                       borderRadius: BorderRadius.circular(4.0),
//                                                       border: Border.all(color: Get
//                                                           .theme
//                                                           .textTheme
//                                                           .headline1
//                                                           .color,)
//                                                   ),
//                                                   inputDecoration:
//                                                   InputDecoration(
//                                                     contentPadding:
//                                                     EdgeInsets.only(
//                                                         bottom: 10,
//                                                         right: 10,
//                                                         left: 10,
//                                                         top: 5),

//                                                   ),)
//                                             ),
//                                           ],
//                                         )
//                                       ],
//                                     )
//                                   ),
//                                   Expanded(
//                                     child: Obx(() => GtDropdownFormField(
//                                         textStyle: TextStyle(color: Get.theme.textTheme.headline4.color),
//                                         valueTextStyle: TextStyle(color: Get.theme.textTheme.headline4.color),
//                                         iconData: Icons.arrow_drop_down,
//                                         inputDecoration: InputDecoration(
//                                           filled: true,
//                                           fillColor: Colors.white10,
//                                           contentPadding: EdgeInsets.only(
//                                               bottom: 7,
//                                               right: 7,
//                                               left: 10,
//                                               top: 7),
//                                           labelStyle: TextStyle(
//                                               color: Get.theme.textTheme
//                                                   .headline1.color),
//                                           border: OutlineInputBorder(
//                                               borderRadius: BorderRadius.circular(10.0),
//                                               borderSide: BorderSide(
//                                                   color: Get.theme.textTheme
//                                                       .headline1.color)),
//                                           floatingLabelBehavior:
//                                           FloatingLabelBehavior.always,
//                                         ),
//                                         dropdownValue: controller.dropdownValue.value,
//                                         items: controller.leaveTypes,
//                                         isRequired: true,
//                                         onChangedhandler: (dynamic value) {
//                                           controller.changeDropDownValue(value);
//                                         }
//                                     ),
//                                   ),
//                                   )
//                                 ],
//                               ),
//                               Container(padding: EdgeInsets.all(5), child: GtText(text: controller.isShiftshow.value ? controller.data.value[controller.indexShiftShow.value]["userDetails"]["todayShift"] : "",textStyle: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),)),
//                               SizedBox(
//                                 height: 50,
//                                 child: Align(
//                                   alignment: Alignment.center,
//                                   child: GtButton(
//                                     buttonStyle: ButtonStyle(
//                                       elevation: MaterialStateProperty.all(3.0),
//                                       backgroundColor: MaterialStateProperty.all(Color(0xff0675ff)),// android button bg color
//                                       foregroundColor: MaterialStateProperty.all(Colors.white),// android button text color
//                                     ),
//                                     text: 'Update'.tr,
//                                     textStyle: TextStyle(color: Colors.white,fontSize: 14.0),// ios button text color
//                                     color: Color(0xff0675ff), // ios button bg color
//                                     onPressed: () => {
//                                       controller.updateBtnPressed(),
//                                     },
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 );
//               },
//               onLoading: Center(child: CircularProgressIndicator()),
//               onError: (error) {
//                 return onError.onErrorView(error, context);
//               }),
//         ));
//   }
//   String returnString(val){
//     if(val.toString().toUpperCase() == "A"){
//       return "Absent";
//     }else if(val.toString().toUpperCase() == "P"){
//       return "Present";
//     }else if(val.toString().toUpperCase() == "W"){
//       return "Week Off";
//     }else if(val.toString().toUpperCase() == "H_" || val.toString().toUpperCase() == "H" ){
//       return "Holiday";
//     }else if(val.toString().toUpperCase() == "" || val.toString().toLowerCase() == null || val.toString().toLowerCase() == "null"){
//       return "";
//     }else{
//       return val;
//     }
//   }
//   Color returnColor(val){
//     if(val.toString().toUpperCase() == "A"){
//       return Colors.red;
//     }else if(val.toString().toUpperCase() == "P"){
//       return Colors.green[200];
//     }else if(val.toString().toUpperCase() == "W"){
//       return Colors.grey[300];
//     }else if(val.toString().toUpperCase() == "H_" || val.toString().toUpperCase() == "H" ){
//       return Colors.pink[100];
//     }else if(val.toString().toUpperCase() == "" || val.toString().toLowerCase() == null || val.toString().toLowerCase() == "null"){
//       return null;
//     }else{
//       return Colors.orange[100];
//     }
//   }
// }