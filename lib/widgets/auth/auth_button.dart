import 'package:car_rental/widgets/text_utils.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({Key? key, required this.onpress, required this.Text})
      : super(key: key);
  final Function() onpress;

  final String Text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(


        onPressed: onpress,
        style: ElevatedButton.styleFrom(
          primary:  Colors.black87,
          minimumSize: const Size(250, 40),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
          )
        ),
        child: Text_Utils(
          color: Colors.white,
          fontsize: 20,
          fontWeight: FontWeight.bold,
          isUndeLine: false,
          text: Text,
        ));
  }
}
