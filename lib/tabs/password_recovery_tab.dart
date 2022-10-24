import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xcrowme/routes/route_helpers.dart';
import 'package:xcrowme/utils/dimensions.dart';
import 'package:xcrowme/widgets/big_text.dart';

class PasswordRecoveryTabs extends StatelessWidget {
  const PasswordRecoveryTabs({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context:context,
        builder: (BuildContext context) => AlertDialog(
          content: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(Icons.check_circle, size: 80, color: Colors.blue),
                          SizedBox(height: 10),
                          Text("Please check your email, followw the intrsuctions to reset your password. we have sent you a link to reset your password", 
                          textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.grey)),
                        ]
                      ),
                    ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Get.offNamed(RouteHelper.getSignInScreen()),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.blue,
                        onSurface: Colors.grey,
                      ),
                      child: Text('OK'),
                    ),
                  ],
        )
      ),
      child: BigText(
              text: "Submit",
              size: Dimensions.font20+Dimensions.font20/2,
              color: Colors.white
            )
        );
    }
}