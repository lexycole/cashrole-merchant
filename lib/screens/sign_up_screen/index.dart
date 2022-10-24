import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xcrowme/base/show_custom_messages.dart';
import 'package:xcrowme/models/sign_body_model.dart';
import 'package:xcrowme/routes/route_helpers.dart';
import 'package:xcrowme/utils/colors.dart';
import 'package:xcrowme/utils/dimensions.dart';
import 'package:xcrowme/widgets/app_text_field.dart';
import 'package:xcrowme/widgets/big_text.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var nameController = TextEditingController();
    var passwordController = TextEditingController();
    var phoneController = TextEditingController();

    void _registration(){
      String name = nameController.text.trim();
      String phone = phoneController.text.trim();
      String email = emailController.text.trim();
      String password = passwordController.text.trim();

      if (name.isEmpty) {
        showCustomSnackBar("Type in your name", title:"Name");
      } else if (phone.isEmpty) {
        showCustomSnackBar("Type in your phone number", title:"Phone Number");
      } else if (email.isEmpty) {
        showCustomSnackBar("Type in your email address", title:"Email address");
      } else if (!GetUtils.isEmail(email)) {
        showCustomSnackBar("Type in a valid email address", title:"Valid email address");
      } else if (password.isEmpty) {
        showCustomSnackBar("Type in your password", title:"password");
      } else if (password.length < 6) {
        showCustomSnackBar("Password can not be less than six characters", title:"Password");
      } else {
        showCustomSnackBar("All went well", title:"Perfect");
        SignUpBody signUpBody = SignUpBody(
          name: name, 
          phone: phone, 
          email: email,
          password: password);
          print(signUpBody.toString(),
          );
          // Get.offNamed(RouteHelper.getDashboardScreen());
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
       body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height:Dimensions.screenHeight*0.09,),
            Container(
              width: double.maxFinite,
              child: Center(
                child: CircleAvatar(
                  backgroundColor: AppColors.AppBannerColor,
                  radius: 60,
                  backgroundImage:AssetImage(
                    "assets/icon.png",
                  )
                ),
              )
            ),
            SizedBox(height:Dimensions.screenHeight*0.05,),
            // Email
            AppTextField(hintText: 'Email', icon: Icons.email_outlined, textController: emailController,),
            SizedBox(height: Dimensions.height20),
            // Name
            AppTextField(hintText: 'Name', icon: Icons.account_circle_outlined, textController: nameController,),
            SizedBox(height: Dimensions.height20),
            // Password
            AppTextField(hintText: 'Password', icon: Icons.lock_outline_rounded, textController: passwordController,),
            SizedBox(height: Dimensions.height20),
            // Phone
            AppTextField(hintText: 'Phone', icon: Icons.phone_outlined, textController: phoneController,),
            SizedBox(height: Dimensions.screenHeight*0.05),
            // Sign Up Button
            GestureDetector(
              onTap: (){
                _registration();
              },
              child: Container(
                width: Dimensions.screenWidth/10*9,
                height: Dimensions.screenHeight/10,
                decoration: BoxDecoration(
                  color: AppColors.bgBtnColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                ),
                child: Center (
                  child: BigText (
                    text: "Sign up",
                    size: Dimensions.font20+Dimensions.font20/2,
                    color: Colors.white
                      )
                    )
                )
            ),
            SizedBox(height: Dimensions.height10,),
            
            RichText(
              text: TextSpan(
                recognizer: 
                  TapGestureRecognizer()..onTap=()=>
                  Get.offNamed(RouteHelper.getSignInScreen()),
                text: "A member of xcrowme already? Log in",
                style: TextStyle(
                  color:Color.fromARGB(255, 0, 115, 177),
                  fontSize: Dimensions.font20
                  )
                )
              ),
              SizedBox(height: Dimensions.height10,),
          ],
        ),
      ),      
    );
  }
}