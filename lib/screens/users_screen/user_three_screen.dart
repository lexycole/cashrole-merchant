import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xcrowme/utils/colors.dart';
import 'package:xcrowme/utils/dimensions.dart';
import 'package:xcrowme/widgets/big_text.dart';

class UserThreeScreen extends StatelessWidget {
  const UserThreeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Get.back(),
        ),
          backgroundColor: AppColors.AppBannerColor,
          title: const Text('User Three'),
        ),
         body: Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.store_outlined, 
                    color: AppColors.bgBtnColor, 
                    size:90),
                   BigText(
                      text: "STORE",
                      size: Dimensions.font16+Dimensions.font16/2,
                      color: AppColors.AppBannerColor
                    )
                ],
              ),
              Column(
                children: [
                  Icon(Icons.store_outlined, color: AppColors.bgBtnColor, size:90),
               
                  BigText(
                      text: "STORE",
                      size: Dimensions.font16+Dimensions.font16/2,
                      color: AppColors.AppBannerColor
                    )
                ],
              ),
              Column(
                children: [
                  Icon(Icons.store_outlined, color:AppColors.bgBtnColor, size:90),
                  BigText(
                      text: "STORE",
                      size: Dimensions.font16+Dimensions.font16/2,
                      color: AppColors.AppBannerColor
                    )
                ],
              ),
            ],
          ),
        ),
    );
  }
}