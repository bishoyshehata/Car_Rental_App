  import 'package:auto_size_text/auto_size_text.dart';
  import 'package:bordered_text/bordered_text.dart';
  import 'package:car_rental/theme/theme.dart';
  import 'package:car_rental/widgets/text_utils.dart';
  import 'package:flutter/material.dart';
  import 'package:get/get.dart';
  import 'package:snapping_sheet/snapping_sheet.dart';
  import 'dart:ui' as ui;

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
                    const SizedBox(
                      height: 5,
                    ),
                    const Text_Utils(
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
                        errorStyle: TextStyle(color: Colors.red),
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
                                errorStyle: TextStyle(color: Colors.red),
                                fillColor: Colors.white,
                                floatingLabelStyle:
                                    TextStyle(color: mainColor),
                                labelText: 'RETURN DATE',
                                hintStyle:
                                    TextStyle(fontWeight: FontWeight.bold),
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
                            shape:
                            const RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.only(
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
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.orange , Colors.yellow
                                    ],
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsets.all(8.0),
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
                                                child: const Icon(
                                                  Icons
                                                      .clear,
                                                )),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Flexible(
                                              child:
                                              RichText(
                                                overflow:
                                                TextOverflow
                                                    .ellipsis,
                                                strutStyle: const StrutStyle(
                                                    fontSize:
                                                    12.0),
                                                text: const TextSpan(
                                                    style: TextStyle(
                                                        color: Colors
                                                            .black),
                                                    text:
                                                    'Time of rent by days | and the start and end distination '),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            const Text_Utils(
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
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            InkWell(
                                                onTap:
                                                    () {},
                                                child: const Icon(
                                                  Icons
                                                      .filter_alt_outlined,
                                                  color: Colors
                                                      .black,
                                                )),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Text_Utils(
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
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            InkWell(
                                                onTap:
                                                    () {},
                                                child: const Icon(
                                                  Icons
                                                      .sort,
                                                  color: Colors
                                                      .black,
                                                )),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Text_Utils(
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
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const Divider(
                                          thickness: 1.5,
                                          color:
                                          Colors.white,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),

                                        ListView.separated(
                                          separatorBuilder:
                                              (__, _) =>
                                          const Divider(
                                            height: 5,
                                            thickness: 1.5,
                                            color: Colors
                                                .white,
                                          ),
                                          itemCount: 6,
                                          shrinkWrap: true,
                                          physics:
                                          const ScrollPhysics(),
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
                                                          child: const AutoSizeText(
                                                            ' BMW M2 C6 ',
                                                            textAlign: TextAlign.justify,
                                                            style: TextStyle(
                                                              color: Colors.white,
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ),

                                                        const SizedBox(
                                                          height: 3,
                                                        ),
                                                        const AutoSizeText(
                                                          'or similar | Sedan',
                                                          style: const TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          children: [
                                                            const Icon(
                                                              Icons.done,
                                                              size: 16,
                                                            ),
                                                            const SizedBox(
                                                              width: 5,
                                                            ),
                                                            const AutoSizeText(
                                                              'incl. 450 km',
                                                              style: const TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 10,
                                                                fontWeight: FontWeight.bold,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                          height: 20,
                                                        ),
                                                        Row(
                                                          crossAxisAlignment: CrossAxisAlignment.end,
                                                          children: [
                                                            BorderedText(
                                                              strokeWidth: 3,
                                                              strokeColor: Colors.white,
                                                              child: const Text(
                                                                "\$",
                                                                style: const TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 12,
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                            BorderedText(
                                                              strokeWidth: 3,
                                                              strokeColor: Colors.white,
                                                              child: const Text(
                                                                "58.",
                                                                style: const TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 20,
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                            BorderedText(
                                                              strokeWidth: 3,
                                                              strokeColor: Colors.white,
                                                              child: const Text(
                                                                '.27 | day',
                                                                style: const TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 12,
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        const AutoSizeText(
                                                          '\$174.80 | total',
                                                          style: const TextStyle(
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
          gradient: LinearGradient(
            colors: [
               Colors.orange , Colors.yellow
            ],
          ),
          borderRadius:
              const BorderRadius.vertical(top: Radius.circular(20)),
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
