import 'package:auto_size_text/auto_size_text.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:car_rental/routes/routes.dart';
import 'package:car_rental/theme/theme.dart';
import 'package:car_rental/widgets/auth/auth_text_form_field.dart';
import 'package:car_rental/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapping_sheet/snapping_sheet.dart';
import 'dart:ui' as ui;
import 'package:bordered_text/bordered_text.dart';

void main() {
  runApp(SnappingSheetExampleApp());
}

class SimpleSnappingSheet extends StatelessWidget {
  final ScrollController listViewController = new ScrollController();

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = MediaQueryData.fromWindow(ui.window).padding;
    final heightt = size.height - padding.top;
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
      initialSnappingPosition: SnappingPosition.pixels(
          positionPixels: MediaQuery.of(context).size.height * (.4)),
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
                  SizedBox(
                    height: 5,
                  ),
                  Text_Utils(
                      fontWeight: FontWeight.bold,
                      text: 'PICK-UP',
                      color: mainColor,
                      isUndeLine: false,
                      fontsize: 10),
                  TextFormField(
                    controller: searchController,
                    obscureText: false,
                    cursorColor: mainColor,
                    keyboardType: TextInputType.text,
                    validator: (value) {},
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      errorStyle: const TextStyle(color: Colors.red),
                      fillColor: Colors.white,
                      labelText: 'SEARCH FOR A CITY OR PLACE',
                      floatingLabelStyle: TextStyle(color: mainColor),
                      hintStyle: TextStyle(fontWeight: FontWeight.normal),
                      filled: true,
                      // suffixIcon: Icon(
                      //   Icons.info_outline,
                      //   color: mainColor,
                      // ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: mainColor,
                        ),
                      ),
                      errorBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: mainColor),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: mainColor),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(color: mainColor),
                      ),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(color: mainColor),
                      ),
                    ),
                  ),
                  const SizedBox(
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
                            child: const Icon(
                              Icons.done,
                              size: 18,
                              color: mainColor,
                            )),
                      ),
                      const Text_Utils(
                          fontWeight: FontWeight.normal,
                          text: " Return at pick-up location",
                          color: Colors.black,
                          isUndeLine: false,
                          fontsize: 14),
                    ],
                  ),
                  const SizedBox(
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
                      const SizedBox(
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
                            decoration: const InputDecoration(
                              errorStyle: const TextStyle(color: Colors.red),
                              fillColor: Colors.white,
                              floatingLabelStyle:
                                  const TextStyle(color: mainColor),
                              labelText: 'RETURN DATE',
                              hintStyle:
                                  const TextStyle(fontWeight: FontWeight.bold),
                              filled: true,
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: mainColor,
                                ),
                              ),
                              errorBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: mainColor),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: const BorderSide(color: mainColor),
                              ),
                              focusedErrorBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: mainColor),
                              ),
                              disabledBorder: UnderlineInputBorder(
                                borderSide: const BorderSide(color: mainColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.person_pin_rounded,
                        color: mainColor,
                      ),
                      Text_Utils(
                          fontWeight: FontWeight.normal,
                          text: 'Sixt Card 50821581',
                          color: Colors.black,
                          isUndeLine: false,
                          fontsize: 14),
                      Icon(Icons.arrow_drop_down, color: mainColor),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width + 100,
                    height: MediaQuery.of(context).size.width / 7,
                    child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet<void>(
                          shape: const RoundedRectangleBorder(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                topRight: Radius.circular(30.0)),
                          ),
                          isScrollControlled: true,
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: heightt,
                              width: double.infinity,
                              color: mainColor,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          InkWell(
                                              onTap: () {
                                                Get.back();
                                              },
                                              child: Icon(
                                                Icons.clear,
                                              )),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          InkWell(
                                              onTap: () {},
                                              child: Icon(
                                                Icons.filter_alt_outlined,
                                                color: Colors.black,
                                              )),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text_Utils(
                                              fontWeight: FontWeight.bold,
                                              text: 'FILTER',
                                              color: Colors.white,
                                              isUndeLine: false,
                                              fontsize: 13),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          InkWell(
                                              onTap: () {},
                                              child: Icon(
                                                Icons.sort,
                                                color: Colors.black,
                                              )),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text_Utils(
                                              fontWeight: FontWeight.bold,
                                              text: 'SORT',
                                              color: Colors.white,
                                              isUndeLine: false,
                                              fontsize: 15)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Divider(
                                        thickness: 1.5,
                                        color: Colors.white,
                                      ),
                                      ListView.separated(
                                        separatorBuilder: (__, _) => Divider(
                                          height: 5,
                                          thickness: 1.5,
                                          color: Colors.white,
                                        ),
                                        itemCount: 3,
                                        shrinkWrap: true,
                                        physics: ScrollPhysics(),
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return InkWell(
                                            onTap: () {
                                              showModalBottomSheet<void>(
                                                shape:
                                                    const RoundedRectangleBorder(
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  30.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  30.0)),
                                                ),
                                                isScrollControlled: true,
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return Container(
                                                    height: heightt,
                                                    width: double.infinity,
                                                    color: mainColor,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                InkWell(
                                                                    onTap: () {
                                                                      Get.back();
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .clear,
                                                                    )),
                                                                SizedBox(
                                                                  width: 5,
                                                                ),
                                                                Flexible(
                                                                  child:
                                                                      RichText(
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    strutStyle: StrutStyle(
                                                                        fontSize:
                                                                            12.0),
                                                                    text: TextSpan(
                                                                        style: TextStyle(
                                                                            color: Colors
                                                                                .black),
                                                                        text:
                                                                            'Time of rent by days | and the start and end distination '),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 15,
                                                                ),
                                                                Text_Utils(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    text:
                                                                        'CHANGE',
                                                                    color: Colors
                                                                        .black,
                                                                    isUndeLine:
                                                                        false,
                                                                    fontsize:
                                                                        15)
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 15,
                                                            ),
                                                            Row(
                                                              children: [
                                                                InkWell(
                                                                    onTap:
                                                                        () {},
                                                                    child: Icon(
                                                                      Icons
                                                                          .filter_alt_outlined,
                                                                      color: Colors
                                                                          .black,
                                                                    )),
                                                                SizedBox(
                                                                  width: 5,
                                                                ),
                                                                Text_Utils(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    text:
                                                                        'FILTER',
                                                                    color: Colors
                                                                        .white,
                                                                    isUndeLine:
                                                                        false,
                                                                    fontsize:
                                                                        13),
                                                                SizedBox(
                                                                  width: 5,
                                                                ),
                                                                InkWell(
                                                                    onTap:
                                                                        () {},
                                                                    child: Icon(
                                                                      Icons
                                                                          .sort,
                                                                      color: Colors
                                                                          .black,
                                                                    )),
                                                                SizedBox(
                                                                  width: 5,
                                                                ),
                                                                Text_Utils(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    text:
                                                                        'SORT',
                                                                    color: Colors
                                                                        .white,
                                                                    isUndeLine:
                                                                        false,
                                                                    fontsize:
                                                                        15)
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Divider(
                                                              thickness: 1.5,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            ListView.separated(
                                                              separatorBuilder:
                                                                  (__, _) =>
                                                                      Divider(
                                                                height: 5,
                                                                thickness: 1.5,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              itemCount: 6,
                                                              shrinkWrap: true,
                                                              physics:
                                                                  ScrollPhysics(),
                                                              itemBuilder:
                                                                  (BuildContext
                                                                          context,
                                                                      int index) {
                                                                return Container(
                                                                  height:
                                                                      heightt /
                                                                          (4.5),
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            MediaQuery.of(context).size.width /
                                                                                2,
                                                                        child:
                                                                            Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                              color: Colors.black,
                                                                              child: AutoSizeText(
                                                                                ' BMW M2 C6 ',
                                                                                textAlign: TextAlign.justify,
                                                                                style: TextStyle(
                                                                                  color: Colors.white,
                                                                                  fontSize: 20,
                                                                                  fontWeight: FontWeight.bold,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 3,
                                                                            ),
                                                                            AutoSizeText(
                                                                              'or similar | Sedan',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.bold,
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 5,
                                                                            ),
                                                                            Row(
                                                                              children: [
                                                                                Icon(
                                                                                  Icons.done,
                                                                                  size: 16,
                                                                                ),
                                                                                SizedBox(
                                                                                  width: 5,
                                                                                ),
                                                                                AutoSizeText(
                                                                                  'incl. 450 km',
                                                                                  style: TextStyle(
                                                                                    color: Colors.black,
                                                                                    fontSize: 10,
                                                                                    fontWeight: FontWeight.bold,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            SizedBox(
                                                                              height: 20,
                                                                            ),
                                                                            Row(
                                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                                              children: [
                                                                                BorderedText(
                                                                                  strokeWidth: 3,
                                                                                  strokeColor: Colors.white,
                                                                                  child: Text(
                                                                                    "\$",
                                                                                    style: TextStyle(
                                                                                      color: Colors.black,
                                                                                      fontSize: 12,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                BorderedText(
                                                                                  strokeWidth: 3,
                                                                                  strokeColor: Colors.white,
                                                                                  child: Text(
                                                                                    "58.",
                                                                                    style: TextStyle(
                                                                                      color: Colors.black,
                                                                                      fontSize: 20,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                BorderedText(
                                                                                  strokeWidth: 3,
                                                                                  strokeColor: Colors.white,
                                                                                  child: Text(
                                                                                    '.27 | day',
                                                                                    style: TextStyle(
                                                                                      color: Colors.black,
                                                                                      fontSize: 12,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            SizedBox(
                                                                              height: 10,
                                                                            ),
                                                                            AutoSizeText(
                                                                              '\$174.80 | total',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.bold,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Container(
                                                                                height: heightt / (4.5),
                                                                                width: MediaQuery.of(context).size.width / 2 - 16,
                                                                                child: Image.asset(
                                                                                  "assets/images/no2.png",
                                                                                ))
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            child: Container(
                                              height: heightt / (6.5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .location_city_outlined,
                                                        color: Colors.white,
                                                        size: 40,
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            1.4,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text_Utils(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                text:
                                                                    'City name | the stations in your way',
                                                                color: Colors
                                                                    .black,
                                                                isUndeLine:
                                                                    false,
                                                                fontsize: 15),
                                                            Flexible(
                                                              child: RichText(
                                                                maxLines: 3,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                strutStyle:
                                                                    StrutStyle(
                                                                        fontSize:
                                                                            12.0),
                                                                text: TextSpan(
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black),
                                                                    text:
                                                                        '(details about distance and time to arrive and others) days | and the start and end distination ime of rent by days | and the start and end distinationime of rent by days | and the start and end distinationime of rent by days | and the start and end distinationime of rent by days | and the start and end distination'),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .arrow_forward_ios_rounded,
                                                    color: Colors.black,
                                                    size: 25,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: const Text_Utils(
                          fontWeight: FontWeight.bold,
                          text: 'SHOW STATIONS',
                          color: Colors.white,
                          isUndeLine: false,
                          fontsize: 25),
                      style: ElevatedButton.styleFrom(
                          primary: mainColor,
                          textStyle: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                    ),
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
        child: Image.asset(
          "assets/images/background.jpeg",
          fit: BoxFit.cover,
        ));
  }
}

class GrabbingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius:
            const BorderRadius.vertical(top: const Radius.circular(20)),
        boxShadow: [
          BoxShadow(blurRadius: 25, color: mainColor.withOpacity(0.2)),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 100,
              height: 7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 30,
                alignment: Alignment.topLeft,
                child: const Text_Utils(
                    fontWeight: FontWeight.bold,
                    text: 'CARS',
                    color: Colors.white,
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
      title: ' ',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[700],
          elevation: 0,
          foregroundColor: mainColor,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        primarySwatch: Colors.grey,
      ),
    );
  }
}
