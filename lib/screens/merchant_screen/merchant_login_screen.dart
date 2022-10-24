import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xcrowme/routes/route_helpers.dart';
import 'package:xcrowme/utils/colors.dart';
import 'package:xcrowme/utils/dimensions.dart';
import 'package:xcrowme/widgets/app_text_field.dart';
import 'package:xcrowme/widgets/big_text.dart';

class MerchantLoginScreen extends StatelessWidget {
  const MerchantLoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      var passwordController = TextEditingController();
      var phoneController = TextEditingController();
    return Scaffold (
        appBar: AppBar(
          backgroundColor: AppColors.AppBannerColor,
          title: const Text('Login As Merchant'),
        ),
        body: Center(
          child:SingleChildScrollView(
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
                      Text('Welcome back, Merchant',
                          style: TextStyle(
                            fontSize: 24,
                            // Dimensions.font16*3+Dimensions.font16/2,
                            fontWeight: FontWeight.bold
                          ),
                      ),
                    ]
                  )
                ),
                SizedBox(height: Dimensions.height20),
                // Phone
                AppTextField(hintText: 'Email', icon: Icons.email_outlined, textController: phoneController,),
                SizedBox(height: Dimensions.height20),
                // Password
                AppTextField(hintText: 'Password', icon: Icons.lock_outlined, textController: passwordController,),
                SizedBox(height: Dimensions.screenHeight*0.05),
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
                      )
                    ),
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
                              text: ' Register',
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
                // Merchant Login Button
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
                        text: "Login",
                        size: Dimensions.font20+Dimensions.font20/2,
                        color: Colors.white
                          )
                        )
                    )
                  ),
                SizedBox(height: Dimensions.screenHeight*0.05),
                RichText (
                  text: TextSpan(
                    text: "Not a merchant ? ",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: Dimensions.font20
                      ),
                      children:[
                        TextSpan(
                          recognizer: TapGestureRecognizer()..onTap=()=>
                              Get.offNamed(RouteHelper.getMerchantRegisterScreen()),
                              text: ' Register',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:AppColors.bgBtnColor,
                                fontSize: Dimensions.font20
                        ),
                      )
                    ]
                  )
                ),
              ],
            )
          )
        )
      );
  }
}