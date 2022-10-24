import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xcrowme/utils/colors.dart';
import 'package:xcrowme/utils/dimensions.dart';

class GlobalStoreLinkScreen extends StatelessWidget {
  
  const GlobalStoreLinkScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
       return Scaffold(
        appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Get.back(),
        ),
          backgroundColor: AppColors.AppBannerColor,
          title: const Text('Global Store Link'),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, 
            children:[
              Container(
                padding: EdgeInsets.all(10),
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.grey[400],
                  ),
                  child: Column(
                   children: [
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40,
                        backgroundImage: AssetImage(
                          "assets/logo.png",
                        )
                      ),
                    SizedBox(height: Dimensions.height30),
                    Center( 
                      child: Text("Link with access to all user store product under merchant",
                        style: TextStyle(  
                          color: Colors.white,
                          fontSize: Dimensions.font26)
                          )
                        ),
                      ]
                    )
                  ),
                ] 
              )
        )
    );
  }
}