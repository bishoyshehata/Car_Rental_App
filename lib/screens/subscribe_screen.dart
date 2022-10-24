import 'package:auto_size_text/auto_size_text.dart';
import 'package:car_rental/theme/theme.dart';
import 'package:car_rental/widgets/rich_text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../widgets/text_utils.dart';

class Subscribe_Screen extends StatelessWidget {
  const Subscribe_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.white,
          pinned: false,
          expandedHeight: MediaQuery.of(context).size.height * (2 / 5),
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              "assets/images/background.jpeg",
              fit: BoxFit.fill,
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  alignment:Alignment.center ,
                  child: AutoSizeText(
                    'WHY CHOOSE EAGEL LIMOUSINE CAR SUBSCRIBTION?',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text_Utils(isUndeLine: false,
                    fontWeight: FontWeight.bold,
                    text: "NO PURCHASING COSTS",
                    color: Colors.grey.shade700,
                    fontsize: 14),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.done,
                      color: Colors.grey.shade700,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    (
                      Text_Utils(
                        isUndeLine: false,
                          fontWeight: FontWeight.bold,
                          text: "No down payment",
                          color: Colors.grey.shade700,
                          fontsize: 12)
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.done,
                      color: Colors.grey.shade700,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    (
                       Text_Utils(
                        isUndeLine: false,
                          fontWeight: FontWeight.bold,
                          text: "No financing charges",
                          color: Colors.grey.shade700,
                          fontsize: 12)
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.done,
                      color: Colors.grey.shade700,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    (
                     Text_Utils(
                        isUndeLine: false,
                          fontWeight: FontWeight.bold,
                          text: "No vehicle depreciation",
                          color: Colors.grey.shade700,
                          fontsize: 12)
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text_Utils(
                  isUndeLine: false,
                    fontWeight: FontWeight.bold,
                    text: "STAY FLEXIBLE",
                    color: Colors.grey.shade700,
                    fontsize: 14),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.done,
                      color: Colors.grey.shade700,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text_Utils(
                      isUndeLine: false,
                        fontWeight: FontWeight.bold,
                        text: "Available now",
                        color: Colors.grey.shade700,
                        fontsize: 12)
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.done,
                      color: Colors.grey.shade700,
                    ),
                    const SizedBox(
                      width: 5,
                    ),

                    Flexible(
                      child: RichText(
                        maxLines: 2,
                        overflow:
                        TextOverflow.ellipsis,
                        strutStyle:
                        const StrutStyle(
                            fontSize:
                            14.0),
                        text: const TextSpan(
                            style: TextStyle(
                                color:kCOlor1,fontWeight: FontWeight.bold),
                            text:
                            'Possibility of pausing the subsciption for up to 3 months'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.done,
                      color: Colors.grey.shade700,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    (
                      Text_Utils(
                        isUndeLine: false,
                          fontWeight: FontWeight.bold,
                          text: "Cancel on a monthly basis",
                          color: Colors.grey.shade700,
                          fontsize: 12)
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text_Utils(
                  isUndeLine: false,
                    fontWeight: FontWeight.bold,
                    text: "FULLY CUTOMIZABLE",
                    color: Colors.grey.shade700,
                    fontsize: 14),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.done,
                      color: Colors.grey.shade700,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    (

                        Flexible(
                    child: RichText(
                    maxLines: 2,
                    overflow:
                    TextOverflow.ellipsis,
                    strutStyle:
                    const StrutStyle(
                        fontSize:
                        14.0),
      text: const TextSpan(
          style: TextStyle(
              color:kCOlor1,fontWeight: FontWeight.bold),
          text:
          'Variety of coverage options for bset protection'),
    ),
    )
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.done,
                      color: Colors.grey.shade700,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    (

                        Flexible(
                    child: RichText(
                    maxLines: 2,
                    overflow:
                    TextOverflow.ellipsis,
                    strutStyle:
                    const StrutStyle(
                        fontSize:
                        14.0),
      text: const TextSpan(
          style: TextStyle(
              color:kCOlor1,fontWeight: FontWeight.bold),
          text:
          'Flexible mileage packages for your needs'),
    ),
    )
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.done,
                      color: Colors.grey.shade700,
                    ),
                    const SizedBox(
                      width: 5,
                    ),

                        Flexible(
                    child: RichText(
                    maxLines: 2,
                    overflow:
                    TextOverflow.ellipsis,
                    strutStyle:
                    const StrutStyle(
                        fontSize:
                        14.0),
      text: const TextSpan(
          style: TextStyle(
              color:kCOlor1,fontWeight: FontWeight.bold),
          text:
          'Choose your ride: from economy sedan to luxury SUV'),
    ),
    )

                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.emoji_emotions_outlined,
                      size: 60,
                      color: mainColor,
                    )),
                const SizedBox(
                  height: 8,
                ),
            Container(
              alignment: Alignment.center,
              child:const Text_Utils(
                    fontWeight: FontWeight.bold,
                    text: 'We are glad',
                    color:mainColor,
                    isUndeLine: false,
                    fontsize: 14),), const SizedBox(
                  height: 5,
                ),

                Container(
                      alignment: Alignment.center,
                     child:const AutoSizeText(

                    'Fortunately Eagles limousine is available in your country ',
                    style: TextStyle(fontSize: 12,color: mainColor,fontWeight: FontWeight.bold
                    ),
                  textAlign: TextAlign.center,
                     ),
                ),
              ],
            ),
          )
        ]))
      ],
    )
    );
  }
}
