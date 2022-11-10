import 'package:bordered_text/bordered_text.dart';
import 'package:car_rental/routes/routes.dart';
import 'package:car_rental/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'dart:ui' as ui;

import '../../../widgets/text_utils.dart';

class User_Account_Screen extends StatelessWidget {
  User_Account_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = MediaQueryData.fromWindow(ui.window).padding;
    final heightt = size.height - padding.top;

    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              pinned: false,
              expandedHeight: MediaQuery.of(context).size.height * (.31),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/images/background.jpeg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .13,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(Routes.myBookingScreen);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text_Utils(
                                fontWeight: FontWeight.bold,
                                text: 'MY BOOKING',
                                color: Colors.grey.shade700,
                                isUndeLine: false,
                                fontsize: 16),
                            const Icon(Icons.arrow_forward_ios,
                                color: Colors.orange)
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 1,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .13,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text_Utils(
                              fontWeight: FontWeight.bold,
                              text: 'MY SUBSCRIPTIONS',
                              color: Colors.grey.shade700,
                              isUndeLine: false,
                              fontsize: 16),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.orange,
                          )
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 1,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .13,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
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
                                  padding: const EdgeInsets.all(8.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              Get.back();
                                            },
                                            child: const Icon(
                                              Icons.arrow_back,
                                              size: 25,
                                              color: Colors.orange,
                                            )),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        const Text_Utils(
                                            fontWeight: FontWeight.bold,
                                            text: 'PERSONAL INFORMATION',
                                            color: Colors.white,
                                            isUndeLine: false,
                                            fontsize: 25),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Text_Utils(
                                            fontWeight: FontWeight.bold,
                                            text: 'Name',
                                            color: Colors.orange,
                                            isUndeLine: false,
                                            fontsize: 12),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 50,
                                          child: TextFormField(
                                            enableInteractiveSelection: false,
                                            enabled: false,
                                            readOnly: true,
                                            initialValue:
                                                GetStorage().read("name") ==
                                                        null
                                                    ? "There isn't any name"
                                                    : GetStorage()
                                                        .read("name")
                                                        .toString(),
                                            obscureText: false,
                                            cursorColor: Colors.white,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                            keyboardType: TextInputType.text,
                                            validator: (value) {},
                                            decoration: const InputDecoration(
                                              errorStyle:
                                                  TextStyle(color: Colors.red),
                                              fillColor: mainColor,
                                              filled: true,
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              focusedErrorBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              disabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Text_Utils(
                                            fontWeight: FontWeight.bold,
                                            text: 'National ID',
                                            color: Colors.orange,
                                            isUndeLine: false,
                                            fontsize: 12),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 50,
                                          child: TextFormField(
                                            enableInteractiveSelection: false,
                                            enabled: false,
                                            readOnly: true,
                                            initialValue: GetStorage()
                                                        .read("nid") ==
                                                    null
                                                ? "There isn't any National ID"
                                                : GetStorage()
                                                    .read("nid")
                                                    .toString(),
                                            obscureText: false,
                                            cursorColor: Colors.white,
                                            keyboardType: TextInputType.text,
                                            validator: (value) {},
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                            decoration: const InputDecoration(
                                              errorStyle:
                                                  TextStyle(color: Colors.red),
                                              fillColor: mainColor,
                                              filled: true,
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              focusedErrorBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              disabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Text_Utils(
                                            fontWeight: FontWeight.bold,
                                            text: 'Mobile',
                                            color: Colors.orange,
                                            isUndeLine: false,
                                            fontsize: 12),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 50,
                                          child: TextFormField(
                                            enableInteractiveSelection: false,
                                            enabled: false,
                                            readOnly: true,
                                            initialValue:
                                                GetStorage().read("mobile") ==
                                                        null
                                                    ? "There isn't any mobile"
                                                    : GetStorage()
                                                        .read("mobile")
                                                        .toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                            obscureText: false,
                                            cursorColor: Colors.white,
                                            keyboardType: TextInputType.text,
                                            validator: (value) {},
                                            decoration: const InputDecoration(
                                              errorStyle:
                                                  TextStyle(color: Colors.red),
                                              fillColor: mainColor,
                                              filled: true,
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              focusedErrorBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              disabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Text_Utils(
                                            fontWeight: FontWeight.bold,
                                            text: 'Address',
                                            color: Colors.orange,
                                            isUndeLine: false,
                                            fontsize: 12),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 50,
                                          child: TextFormField(
                                            enableInteractiveSelection: false,
                                            enabled: false,
                                            readOnly: true,
                                            initialValue:
                                                GetStorage().read("address") ==
                                                        null
                                                    ? "There isn't any address"
                                                    : GetStorage()
                                                        .read("address")
                                                        .toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                            obscureText: false,
                                            cursorColor: Colors.white,
                                            keyboardType: TextInputType.text,
                                            validator: (value) {},
                                            decoration: const InputDecoration(
                                              errorStyle:
                                                  TextStyle(color: Colors.red),
                                              fillColor: mainColor,
                                              filled: true,
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              focusedErrorBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              disabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.lock,
                                                color: Colors.orange
                                                    .withOpacity(.9),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              BorderedText(
                                                strokeWidth: 3,
                                                strokeColor: Colors.white,
                                                child: const Text(
                                                  "CHANGE PASSWORD",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text_Utils(
                                    fontWeight: FontWeight.bold,
                                    text: 'PERSONAL INFORMATION',
                                    color: Colors.grey.shade700,
                                    isUndeLine: false,
                                    fontsize: 16),
                                const Icon(Icons.arrow_forward_ios,
                                    color: Colors.orange)
                              ],
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text_Utils(
                                      fontWeight: FontWeight.normal,
                                      text: GetStorage().read("name") == null
                                          ? "you havn't insert your name"
                                          : GetStorage()
                                              .read("name")
                                              .toString(),
                                      color: Colors.black,
                                      isUndeLine: false,
                                      fontsize: 13),
                                ]),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 1,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .13,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(Routes.vouchersScreen);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text_Utils(
                                fontWeight: FontWeight.bold,
                                text: 'VOUCHERS & BENEFITS',
                                color: Colors.grey.shade700,
                                isUndeLine: false,
                                fontsize: 16),
                            const Icon(Icons.arrow_forward_ios,
                                color: Colors.orange)
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 1,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text_Utils(
                              fontWeight: FontWeight.bold,
                              text: 'BOOKING PROFILES',
                              color: Colors.grey.shade700,
                              isUndeLine: false,
                              fontsize: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text_Utils(
                                  fontWeight: FontWeight.normal,
                                  text: "Eagle's Card 50821581",
                                  color: Colors.grey.shade700,
                                  isUndeLine: false,
                                  fontsize: 8),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Colors.orange)
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.table_chart_rounded,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text_Utils(
                                  fontWeight: FontWeight.bold,
                                  text: "ADD EXISTING EAGLE'S CARD AS PROFILE",
                                  color: mainColor,
                                  isUndeLine: false,
                                  fontsize: 8),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.card_travel_outlined,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text_Utils(
                                  fontWeight: FontWeight.bold,
                                  text: 'ADD CORPORATE RATE PROFILE',
                                  color: mainColor,
                                  isUndeLine: false,
                                  fontsize: 8),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.add,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text_Utils(
                                  fontWeight: FontWeight.bold,
                                  text: 'ADD PROFILE',
                                  color: mainColor,
                                  isUndeLine: false,
                                  fontsize: 8),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.message_rounded,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text_Utils(
                            fontWeight: FontWeight.bold,
                            text: 'HELP & CONTACT',
                            color: mainColor,
                            isUndeLine: false,
                            fontsize: 8),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.settings_sharp,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text_Utils(
                            fontWeight: FontWeight.bold,
                            text: 'SETTING',
                            color: mainColor,
                            isUndeLine: false,
                            fontsize: 8),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.power_settings_new_sharp,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text_Utils(
                            fontWeight: FontWeight.bold,
                            text: 'LOG OUT',
                            color: mainColor,
                            isUndeLine: false,
                            fontsize: 8),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.text_snippet_sharp,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text_Utils(
                            fontWeight: FontWeight.bold,
                            text: 'IMPRINT',
                            color: mainColor,
                            isUndeLine: false,
                            fontsize: 8),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.text_snippet_sharp,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text_Utils(
                            fontWeight: FontWeight.bold,
                            text: 'PRIVACY POLICY',
                            color: mainColor,
                            isUndeLine: false,
                            fontsize: 8),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.text_snippet_sharp,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text_Utils(
                            fontWeight: FontWeight.bold,
                            text: 'ANALIYTICS POLICY',
                            color: mainColor,
                            isUndeLine: false,
                            fontsize: 8),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  )
                ],
              )
            ]))
          ],
        ));
  }
}
