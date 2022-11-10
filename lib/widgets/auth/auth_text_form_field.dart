import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../theme/theme.dart';

class Auth_TextFormField extends StatelessWidget {
  final TextEditingController controller ;
  final bool obsecureText ;
  final Function validator ;
  final Widget prefex;
  final Widget suffix;
  final TextInputType keyboard;
  final String hintText;
  const Auth_TextFormField({

    required this.controller ,
    required this.obsecureText,
    required this.validator,
    required this.prefex,
    required this.suffix,
    required this.hintText,
    required this.keyboard ,

    Key? key,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.9,
      child: TextFormField(
        controller: controller,

        obscureText: obsecureText,
        cursorColor: Get.isDarkMode ? Colors.black : pinkClr,
        keyboardType: keyboard,
        validator: (value)=>validator(value),

        decoration: InputDecoration(
          errorStyle:TextStyle(color: Colors.red) ,
          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          fillColor: Colors.grey.shade200,
          prefixIcon: prefex ,
          suffixIcon: suffix ,

          hintText: hintText,
            filled: true,
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white,),
          borderRadius: BorderRadius.circular(30),
          ),
          errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(30)
          ),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(30)
          ),
          focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(30)
          ),
          disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(30)
          ),
        ),

      ),
    );

  }
}
