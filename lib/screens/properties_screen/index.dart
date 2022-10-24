import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xcrowme/utils/colors.dart';
import 'package:xcrowme/utils/dimensions.dart';

class PropertiesScreen extends StatelessWidget {
  const PropertiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Get.back(),
        ),
          backgroundColor: AppColors.AppBannerColor,
          title: const Text('Properties'),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              Center(
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 80,
                    backgroundImage:AssetImage(
                      "assets/logo.png",
                    )
                  ),
                ),
              Container(
                padding: EdgeInsets.all(15),
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.grey[400],
                  ),
                  child: Center(
                    child:Text("Set fallback / Difficult Product Percentage Cut.",
                      style: TextStyle(  
                        color: Colors.white,
                        fontSize: Dimensions.font26)
                      )
                    ),
                  )
                ]
            )
          )
      );
    }
}