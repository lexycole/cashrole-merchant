import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xcrowme/routes/route_helpers.dart';
import 'package:xcrowme/utils/colors.dart';
import 'package:xcrowme/utils/dimensions.dart';
import 'package:xcrowme/widgets/app_text_field.dart';
import 'package:xcrowme/widgets/big_text.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Textfield Controller
    var passwordController = TextEditingController();
    var phoneController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height:Dimensions.screenHeight*0.05,),
            Container(
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 80,
                  backgroundImage:AssetImage(
                    "assets/logo.png",
                  )
                ),
              )
            ),
            
            Container(
              margin: EdgeInsets.only(left: Dimensions.width20),
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello',
                      style: TextStyle(
                        fontSize: Dimensions.font20*3+Dimensions.font20/2,
                        fontWeight: FontWeight.bold
                      ),
                  ),
                   Text('Sign into your account',
                      style: TextStyle(
                        fontSize: Dimensions.font20,
                        fontWeight: FontWeight.bold
                      ),
                  )
                ]
              )
            ),
            SizedBox(height: Dimensions.height20),
            // Phone
            AppTextField(hintText: 'Phone', icon: Icons.phone_outlined, textController: phoneController,),
            SizedBox(height: Dimensions.height20),
            // Password
            AppTextField(hintText: 'Password', icon: Icons.lock_outline_rounded, textController: passwordController,),
            SizedBox(height: Dimensions.height20),
            // Sign In to your account
            Row(
              children: [
                Expanded(
                  child:Container(
                      child:CheckboxListTile(
                        title: Text('Remember Me'),
                        value: false,
                        onChanged: (value) {},
                        controlAffinity: ListTileControlAffinity.leading,
                      )
                    )),
                RichText (
                  text: TextSpan(
                    text: "Forgot Password?",
                    style: TextStyle(
                      color:Colors.grey[500],
                      fontSize: Dimensions.font20
                      ),
                       children:[
                        TextSpan(
                          recognizer: TapGestureRecognizer()..onTap=()=>
                              Get.offNamed(RouteHelper.getPasswordResetScreen()),
                              text: ' Recover',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:AppColors.bgBtnColor,
                                fontSize: Dimensions.font20
                        ),
                      )
                    ]
                  )
                ),
                SizedBox(width: Dimensions.width20,)
              ]
            ),
            SizedBox(height: Dimensions.screenHeight*0.05),
            // Sign In button
            GestureDetector(
                onTap: (){
                  Get.offNamed(RouteHelper.getHomeScreen());
                },
              child: Container(
                width: Dimensions.screenWidth/10*9,
                height: Dimensions.screenHeight/10,
                decoration: BoxDecoration(
                  color: AppColors.bgBtnColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                ),
                child: Center(
                child: BigText(
                  text: "Sign In",
                  size: Dimensions.font20+Dimensions.font20/2,
                  color: Colors.white
                    )
                  )
                )
              ),
            SizedBox(height: Dimensions.screenHeight*0.05),
            RichText (
                  text: TextSpan(
                    text: "Not a member of xcrowme? ",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: Dimensions.font20
                      ),
                      children:[
                        TextSpan(
                          recognizer: 
                            TapGestureRecognizer()..onTap=()=>
                              Get.offNamed(RouteHelper.getSignUpScreen()),
                          text: ' Sign Up',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:AppColors.bgBtnColor,
                            fontSize: Dimensions.font20
                    ),
                  )
                ]
              )
            ),
            SizedBox(height: Dimensions.height20,),
          ],
        )
      )
    );
  }
}