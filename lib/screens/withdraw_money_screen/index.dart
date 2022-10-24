import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xcrowme/utils/colors.dart';
import 'package:xcrowme/utils/dimensions.dart';
import 'package:xcrowme/widgets/app_text_field.dart';
import 'package:xcrowme/widgets/big_text.dart';

class WithdrawMoneyScreen extends StatelessWidget {
  const WithdrawMoneyScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      var passwordController = TextEditingController();
      var emailController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Get.back(),
        ),
          backgroundColor: AppColors.AppBannerColor,
          title: const Text('Withdraw Money'),
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
                      Text('Withdraw Money',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold
                          ),
                      ),
                    ]
                  )
                ),
                SizedBox(height: Dimensions.height20),
                // First Name
                AppTextField(hintText: 'Account Details', icon: Icons.email, textController: emailController,),
                SizedBox(height: Dimensions.height20),
                // Last Name
                AppTextField(hintText: 'Amount', icon: Icons.password, textController: passwordController,),
                SizedBox(height: Dimensions.height20),
                // OTP
                AppTextField(hintText: 'OTP', icon: Icons.phone, textController: passwordController,),
                SizedBox(height: Dimensions.screenHeight*0.05),

                // Sign In
                Container(
                  // width: Dimensions.screenWidth/2,
                  height: Dimensions.screenHeight/9,
                  margin: EdgeInsets.only(left: Dimensions.height20, right: Dimensions.height20),
                  decoration: BoxDecoration(
                    color: AppColors.bgBtnColor,
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                  ),
                  child: Center(
                    child: BigText(
                      text: "Withdraw",
                      size: Dimensions.font20+Dimensions.font20/2,
                      color: Colors.white
                      )
                  )
                ),
                SizedBox(height: Dimensions.screenHeight*0.05)
              ],
            )
          )
        )
    );
  }
}