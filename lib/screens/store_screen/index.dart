import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xcrowme/screens/users_screen/user_one_screen.dart';
import 'package:xcrowme/utils/colors.dart';
import 'package:xcrowme/utils/dimensions.dart';
import 'package:xcrowme/widgets/big_text.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Get.back(),
        ),
          backgroundColor: AppColors.AppBannerColor,
          title: const Text('Store'),
        ),
        body: SizedBox(
          height: 410,
          child: Card(
            child: Column(
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ListTile(
                              title: BigText(
                                text: "Product 34Gad4",
                                size: Dimensions.font16+Dimensions.font16/2,
                                color: AppColors.AppBannerColor
                              ),
                              leading: Icon(
                                Icons.contact_mail,
                                color: AppColors.AppBannerColor,
                              ),
                            ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Icon( Icons.edit_note, color: AppColors.bgBtnColor,size:35
                    ),
                    ),
                  ],
                  
                ),
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ListTile(
                              title: BigText(
                                text: "Product 34Gad4",
                                size: Dimensions.font16+Dimensions.font16/2,
                                color: AppColors.AppBannerColor
                              ),
                              leading: Icon(
                                Icons.contact_mail,
                                color: AppColors.AppBannerColor,
                              ),
                            ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Icon( Icons.edit_note, color: AppColors.bgBtnColor,size:35
                    ),
                    ),
                  ],
                  
                ),
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ListTile(
                              title: BigText(
                                text: "Product 34Gad4",
                                size: Dimensions.font16+Dimensions.font16/2,
                                color: AppColors.AppBannerColor
                              ),
                              leading: Icon(
                                Icons.contact_mail,
                                color: AppColors.AppBannerColor,
                              ),
                            ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Icon( Icons.edit_note, color: AppColors.bgBtnColor,size:35
                    ),
                    ),
                  ],
                  
                ),
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ListTile(
                              title: BigText(
                                text: "Product 34Gad4",
                                size: Dimensions.font16+Dimensions.font16/2,
                                color: AppColors.AppBannerColor
                              ),
                              leading: Icon(
                                Icons.contact_mail,
                                color: AppColors.AppBannerColor,
                              ),
                            ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Icon( Icons.edit_note, color: AppColors.bgBtnColor,size:35
                    ),
                    ),
                  ],
                ),
                  SizedBox(height: Dimensions.screenHeight*0.05),
                  GestureDetector(
                onTap: (){
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserOneScreen()),
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
                    text: "Create Product",
                    size: Dimensions.font20+Dimensions.font20/2,
                    color: Colors.white
                      )
                    )
                  )
                ),
              ],
            ),
          ),
        )
    );
  }
}