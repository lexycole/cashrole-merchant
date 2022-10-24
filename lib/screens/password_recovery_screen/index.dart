import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xcrowme/routes/route_helpers.dart';
import 'package:xcrowme/tabs/password_recovery_tab.dart';
import 'package:xcrowme/utils/colors.dart';
import 'package:xcrowme/utils/dimensions.dart';
import 'package:xcrowme/widgets/app_text_field.dart';


class PasswordRecoveryScreen extends StatelessWidget {
  const PasswordRecoveryScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

     // Textfield Controller
    var emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Get.toNamed(RouteHelper.getMerchantLoginScreen()),
        ),
        backgroundColor: AppColors.AppBannerColor,
        title: const Text('Password Recovery'),
      ),
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
                  Text('Password Recovery',
                      style: TextStyle(
                        fontSize: Dimensions.font20*3+Dimensions.font20/2,
                        fontWeight: FontWeight.bold
                      ),
                  ),
                   Text('Please enter your email address',
                      style: TextStyle(
                        fontSize: Dimensions.font20,
                        fontWeight: FontWeight.bold
                      ),
                  )
                ]
              )
            ),
            SizedBox(height: Dimensions.height20),
            // Email
            AppTextField(hintText: 'Email Address', icon: Icons.email, textController: emailController,),
           
            SizedBox(height: Dimensions.screenHeight*0.05),
            // Sign In button
            PasswordRecoveryTabs(),
          
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