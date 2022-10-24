import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xcrowme/screens/properties_screen/index.dart';
import 'package:xcrowme/utils/colors.dart';
import 'package:xcrowme/utils/dimensions.dart';
import 'package:xcrowme/widgets/big_text.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Get.back(),
        ),
          backgroundColor: AppColors.AppBannerColor,
          title: const Text('Product'),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child:   GestureDetector(
                onTap: (){
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PropertiesScreen()),
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
                    text: "Set product cut percentage",
                    size: Dimensions.font20+Dimensions.font20/2,
                    color: Colors.white
                      )
                    )
                  )
                ),
          )
      );
  }
}