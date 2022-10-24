import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xcrowme/screens/account_screen/accont_widget.dart';
import 'package:xcrowme/utils/colors.dart';
import 'package:xcrowme/utils/dimensions.dart';
import 'package:xcrowme/widgets/app_icon.dart';
import 'package:xcrowme/widgets/big_text.dart';

class AccountScreen extends StatelessWidget {
 AccountScreen({
   Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Get.back(),
        ),
        backgroundColor: const Color(0x1E1D2D),
        title: BigText(
          text: 'Profile', size:24, color: Colors.white,
        )
        // title: const Text('Onboarding'),
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: Dimensions.height20),
        child: Column(
          // Profile
          children: [
            AppIcon(icon: Icons.person,
            backgroundColor: AppColors.textColor,
            iconColor: Color.fromARGB(255, 19, 13, 13),
            iconSize:Dimensions.height45+Dimensions.height30,
            size:Dimensions.height15*10),
            SizedBox(height: Dimensions.height30),
            Expanded(
              child:SingleChildScrollView(
                child: Column(
                  children: [
              // Name
              AccountWidget(
                appIcon:AppIcon(icon: Icons.person,
                    backgroundColor: AppColors.bgBtnColor,
                    iconColor:  AppColors.bgBtnColor,
                    iconSize:Dimensions.height45+Dimensions.height30,
                    size:Dimensions.height10*5),
                    bigText: BigText(text:'Name', color:Colors.grey.shade500)
                ),
              SizedBox(height: Dimensions.height20),
              // Phone
              AccountWidget(
                appIcon:AppIcon(icon: Icons.store,
                    backgroundColor: AppColors.textColor,
                    iconColor: Colors.red,
                    iconSize:Dimensions.height45+Dimensions.height30,
                    size:Dimensions.height10*5),
                    bigText: BigText(text:'Phone',color:Colors.grey.shade500)
                ),
              SizedBox(height: Dimensions.height20),
              // Email
              AccountWidget(
                appIcon:AppIcon(icon: Icons.person,
                    backgroundColor: AppColors.iconColor,
                    iconColor: Colors.red,
                    iconSize:Dimensions.height45+Dimensions.height30,
                    size:Dimensions.height10*5),
                    bigText: BigText(text:'Email',color:Colors.grey.shade500)
                ),
              SizedBox(height: Dimensions.height20),
              // Address
              AccountWidget(
                appIcon:AppIcon(icon: Icons.person,
                    backgroundColor: AppColors.signColor,
                    iconColor: Colors.red,
                    iconSize:Dimensions.height45+Dimensions.height30,
                    size:Dimensions.height10*5),
                    bigText: BigText(text:'Address', color:Colors.grey.shade500 )
                ),
              SizedBox(height: Dimensions.height20),
              // Message
              AccountWidget(
                appIcon:AppIcon(icon: Icons.message_outlined,
                    backgroundColor: AppColors.signUpColor,
                    iconColor: Colors.red,
                    iconSize:Dimensions.height45+Dimensions.height30,
                    size:Dimensions.height10*5),
                    bigText: BigText(text:'message', color: Colors.grey.shade500)
              ),
              SizedBox(height: Dimensions.height20),
                    ]
                  )
                )
              )
          ]
        )
      )
    );
  }
}