import 'package:flutter/material.dart';

class Rich_Text extends StatelessWidget {
   Rich_Text({Key? key, required this.text, required this.fontsize, required this.fontWeight, required this.color}) : super(key: key);

  final String text;
   final double fontsize;
   final FontWeight fontWeight;
   final Color color ;
  @override
  Widget build(BuildContext context) {
    return RichText(
      overflow: TextOverflow.clip,
      textAlign: TextAlign.end,
      textDirection: TextDirection.rtl,
      softWrap: true,
      maxLines: 3,

      textScaleFactor: 1,
      text: TextSpan(children:<TextSpan>[
          TextSpan(
              text: text, style:TextStyle(
              color: color,
              fontSize: fontsize,
              fontWeight: fontWeight,

          ),
          ),
        ],
      ),
    );

  }
}
