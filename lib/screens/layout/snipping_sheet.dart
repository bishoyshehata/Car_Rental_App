import 'package:car_rental/theme/theme.dart';
import 'package:car_rental/widgets/auth/auth_text_form_field.dart';
import 'package:car_rental/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapping_sheet/snapping_sheet.dart';

void main() {
  runApp(SnappingSheetExampleApp());
}

class SimpleSnappingSheet extends StatelessWidget {
  final ScrollController listViewController = new ScrollController();

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SnappingSheet(
      // Mappp=============================================================
      child: Background(),

      lockOverflowDrag: true,
      snappingPositions: const [
        SnappingPosition.factor(
          positionFactor: 0,
          snappingCurve: Curves.bounceOut,
          snappingDuration: Duration(seconds: 1),
          grabbingContentOffset: GrabbingContentOffset.top,
        ),
        SnappingPosition.factor(
          snappingCurve: Curves.bounceOut,
          snappingDuration: Duration(milliseconds: 1750),
          positionFactor: .5,
        ),
      ],

      // ============================== Content of sheet ====
      grabbing: GrabbingWidget(),
      grabbingHeight: 75,
      sheetBelow: SnappingSheetContent(
        draggable: false,
        childScrollController: listViewController,
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, top: 2),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: searchController,
                    obscureText: false,
                    cursorColor: mainColor,
                    keyboardType: TextInputType.text,
                    validator: (value) {},
                    decoration: InputDecoration(
                      errorStyle: TextStyle(color: Colors.red),
                      fillColor: Colors.white,
                      hintText: 'SEARCH FOR A CITY OR PLACE',
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                      filled: true,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: mainColor,
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: mainColor),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: mainColor),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: mainColor),
                      ),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: mainColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: mainColor)),
                            child: Icon(
                              Icons.done,
                              size: 18,
                              color: mainColor,
                            )),
                      ),
                      Text_Utils(
                          fontWeight: FontWeight.normal,
                          text: " Return at pick-up location",
                          color: Colors.black,
                          isUndeLine: false,
                          fontsize: 14),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: TextFormField(
                            controller: searchController,
                            obscureText: false,
                            cursorColor: mainColor,
                            keyboardType: TextInputType.text,
                            validator: (value) {},
                            decoration: const InputDecoration(
                              errorStyle: TextStyle(color: Colors.red),
                              fillColor: Colors.white,
                              floatingLabelStyle: TextStyle(color: mainColor),
                              labelText: 'PICK-UP DATE',
                              hintStyle:
                                  TextStyle(fontWeight: FontWeight.normal),
                              filled: true,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: mainColor,
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: mainColor),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: mainColor),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: mainColor),
                              ),
                              disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: mainColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: TextFormField(
                            controller: searchController,
                            obscureText: false,
                            cursorColor: mainColor,
                            keyboardType: TextInputType.text,
                            validator: (value) {},
                            decoration: InputDecoration(
                              errorStyle: TextStyle(color: Colors.red),
                              fillColor: Colors.white,
                              floatingLabelStyle: TextStyle(color: mainColor),
                              labelText: 'RETURN DATE',
                              hintStyle: TextStyle(fontWeight: FontWeight.bold),
                              filled: true,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: mainColor,
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: mainColor),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: mainColor),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: mainColor),
                              ),
                              disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: mainColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(Icons.person_pin_rounded, color: mainColor,),
                      Text_Utils(
                          fontWeight: FontWeight.normal,
                          text: 'Sixt Card 50821581',
                          color: Colors.black,
                          isUndeLine: false,
                          fontsize: 14),
                      Icon(Icons.arrow_drop_down, color: mainColor),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text_Utils(
                          fontWeight: FontWeight.bold,
                          text: 'SHOW OFFERS',
                          color:Colors.white,
                          isUndeLine:false,
                          fontsize: 25),
                        style:ElevatedButton.styleFrom(
                            primary: mainColor,
                            padding: EdgeInsets.symmetric(horizontal: 103, vertical: 16),
                            textStyle: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Widgets below are just helper widgets for this example

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child:Image.asset("assets/images/background.jpeg",fit: BoxFit.cover,)
    );
  }
}

class GrabbingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(blurRadius: 25, color: mainColor.withOpacity(0.2)),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 100,
              height: 7,
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 30,
                alignment: Alignment.topLeft,
                child: Text_Utils(
                    fontWeight: FontWeight.normal,
                    text: 'CARS',
                    color: mainColor,
                    isUndeLine: false,
                    fontsize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SnappingSheetExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Snapping Sheet Examples',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[700],
          elevation: 0,
          foregroundColor: mainColor,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        primarySwatch: Colors.grey,
      ),
    );
  }
}
