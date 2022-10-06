import 'package:dialog_alert/dialog_alert.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/theme.dart';
import '../text_utils.dart';

class CheckWidget extends StatelessWidget {
  CheckWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.done,
                size: 35,
                color: pinkClr,
              )),
        ),
        SizedBox(
          width: 10,
        ),
        Text_Utils(
            fontWeight: FontWeight.normal,
            text: "I accept ",
            color: Get.isDarkMode ? Colors.white : Colors.black,
            isUndeLine: false,
            fontsize: 16),
        InkWell(
          onTap: ()  {
            showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) {
                  return SingleChildScrollView(
                    child: AlertDialog(
                      contentPadding: EdgeInsets.only(left: 25, right: 25),
                      title: Center(child: Text("terms & conditions")),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))),
                      content: Container(
                        height: 350,
                        width: MediaQuery.of(context).size.width,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                  'Name of requestor:'
                              ),
                              Text(
                                'Description:',
                              ),
                              Text(
                                'Help_Description',
                              ),
                              Text(
                                'Type of help needed: ',
                              )
                            ],
                          ),
                        ),
                      ),
                      actions: <Widget>[
                        Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.20,
                            child: RaisedButton(
                              child: new Text(
                                'OK',
                                style: TextStyle(color: Colors.white),
                              ),
                              color: mainColor,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        )
                      ],
                    ),
                  );
                });
          },
          child: const Text_Utils(
              fontWeight: FontWeight.normal,
              text: "terms & conditions",
              color: Colors.orange,
              isUndeLine: true,
              fontsize: 16),
        )
      ],
    );
  }
}
