import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xcrowme/routes/route_helpers.dart';
import 'package:xcrowme/utils/colors.dart';
import 'package:xcrowme/utils/dimensions.dart';
import 'package:xcrowme/widgets/app_text_field.dart';
import 'package:xcrowme/widgets/big_text.dart';

class RegisterMerchantScreen extends StatelessWidget {
  const RegisterMerchantScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      var passwordController = TextEditingController();
      var phoneController = TextEditingController();
    return Scaffold (
        appBar: AppBar(
          backgroundColor: AppColors.AppBannerColor,
          title: const Text('Merchant Registration'),
        ),
        body:SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height:Dimensions.screenHeight*0.05,),            
            Container(
              margin: EdgeInsets.only(left: Dimensions.width20),
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Register as Merchant',
                      style: TextStyle(
                        fontSize: Dimensions.font16*2+Dimensions.font16/1,
                        fontWeight: FontWeight.bold
                      ),
                  ),
                ]
              )
            ),
            SizedBox(height: Dimensions.height20),
            // Address
            AppTextField(hintText: 'Address', icon: Icons.add_location_outlined, textController: phoneController,),
            SizedBox(height: Dimensions.height20),
             // First Name
            AppTextField(hintText: 'First Name', icon: Icons.image, textController: phoneController,),
            SizedBox(height: Dimensions.height20),
             // Last Name
            AppTextField(hintText: 'Last Name', icon: Icons.phone, textController: phoneController,),
            SizedBox(height: Dimensions.height20),
             // Phone
            AppTextField(hintText: 'Any Id', icon: Icons.phone, textController: phoneController,),
            SizedBox(height: Dimensions.height20),
             // Phone
            AppTextField(hintText: 'Picture of Selected Id', icon: Icons.image, textController: phoneController,),
            SizedBox(height: Dimensions.height20),
            // Phone
            AppTextField(hintText: 'Email', icon: Icons.email, textController: phoneController,),
            SizedBox(height: Dimensions.height20),
             // Phone
            AppTextField(hintText: 'Phone Number', icon: Icons.phone, textController: phoneController,),
            SizedBox(height: Dimensions.height20),
            // Password
            AppTextField(hintText: 'Password', icon: Icons.password, textController: passwordController,),
            SizedBox(height: Dimensions.height20),
            // Merchant Sign In Button
            GestureDetector(
              onTap: () {
                Get.offNamed(RouteHelper.dashboardScreen);
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
                    text: "Register",
                    size: Dimensions.font20+Dimensions.font20/2,
                    color: Colors.white
                      )
                    )
                )
              ),
            SizedBox(height: Dimensions.screenHeight*0.05),
            RichText (
                  text: TextSpan(
                    text: "A merchant already? ",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: Dimensions.font20
                      ),
                      children:[
                        TextSpan(
                          recognizer: TapGestureRecognizer()..onTap=()=>
                              Get.offNamed(RouteHelper.getMerchantRegisterScreen()),
                              text: ' Log in',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:AppColors.bgBtnColor,
                                fontSize: Dimensions.font20
                        ),
                      )
                    ]
                  )
                ),
              SizedBox(height: Dimensions.height10,),
            ],
         )
        )
      );
    }
}