import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xcrowme/screens/global_store_link/index.dart';
import 'package:xcrowme/utils/colors.dart';
import 'package:xcrowme/utils/dimensions.dart';
import 'package:xcrowme/widgets/app_text_field.dart';
import 'package:xcrowme/widgets/big_text.dart';

class CreateUserScreen extends StatelessWidget {
  const CreateUserScreen({ Key? key }) : super(key: key);

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
          title: const Text('Create User'),

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
                      Text('Create User',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold
                          ),
                      ),
                    ]
                  )
                ),
                SizedBox(height: Dimensions.height20),
                // First Name
                AppTextField(hintText: 'First Name', icon: Icons.email, textController: emailController,),
                SizedBox(height: Dimensions.height20),
                // Last Name
                AppTextField(hintText: 'Last Name', icon: Icons.password, textController: passwordController,),
                SizedBox(height: Dimensions.height20),
                // Email address
                AppTextField(hintText: 'Email Address', icon: Icons.phone, textController: passwordController,),
                SizedBox(height: Dimensions.height20),
                // Phone Number
                AppTextField(hintText: 'Phone Number', icon: Icons.phone, textController: passwordController,),
                SizedBox(height: Dimensions.height20),
                 // Negotiation on percentage Cut
                AppTextField(hintText: 'Percentage Cut', icon: Icons.phone, textController: passwordController,),
                // SizedBox(height: Dimensions.height20),
                SizedBox(height: Dimensions.screenHeight*0.05),
                // Sign In
               GestureDetector(
                onTap: (){
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GlobalStoreLinkScreen()),
                 );
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
                    text: "Create User",
                    size: Dimensions.font20+Dimensions.font20/2,
                    color: Colors.white
                      )
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