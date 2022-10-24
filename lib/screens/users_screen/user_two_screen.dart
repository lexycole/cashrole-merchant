import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xcrowme/screens/users_screen/user_three_screen.dart';
import 'package:xcrowme/utils/colors.dart';
import 'package:xcrowme/utils/dimensions.dart';

class UserScreenTwo extends StatelessWidget {
  const UserScreenTwo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Get.back(),
        ),
          backgroundColor: AppColors.AppBannerColor,
          title: const Text('User Two'),
        ),
         body: Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // First Column
                Column(
                  children: [
                    SizedBox(
                      height: Dimensions.screenHeight * 0.05,
                    ),
                    // Withdraw Money Container
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UserScreenTwo()),
                        );
                      },
                      child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                          border: Border.all(color: AppColors.AppBannerColor, width:3),
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius20),
                            color: Colors.white,
                          ),
                          child: Container(
                            padding:EdgeInsets.only(top:10),
                            child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                          Icon(Icons.add_card_outlined, color: AppColors.AppBannerColor, size:40),
                                          SizedBox(height: Dimensions.height10),
                                           Text('Withdraw', 
                                              style: TextStyle(
                                                color: AppColors.AppBannerColor, 
                                                fontSize: 18,)
                                            ),
                                             Text('Money', 
                                              style: TextStyle(
                                                color: AppColors.AppBannerColor, 
                                                fontSize: 18,)
                                            )
                                          ]
                                        )
                                      ]
                                    )                              
                                  ),
                                )
                              ),
                            SizedBox(height: Dimensions.screenHeight * 0.02),
                          ],
                        ),

                // 02. Second Column
                Column(
                  children: [
                    SizedBox(
                      height: Dimensions.screenHeight * 0.05,
                    ),
                    // Create User Container
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UserThreeScreen ()),
                        );
                       },
                      child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                          border: Border.all(color: AppColors.AppBannerColor, width:3),
                            borderRadius: BorderRadius.circular(Dimensions.radius20),
                            color: Colors.white,
                          ),
                          child: Container(
                            padding:EdgeInsets.only(top:20),
                            child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                          Icon(Icons.person_outlined, color: AppColors.AppBannerColor, size:40),
                                          SizedBox(height: Dimensions.height10),
                                          Text('Store 2', 
                                              style: TextStyle(
                                                color: AppColors.AppBannerColor, 
                                                fontSize: 18,
                                                overflow: TextOverflow.visible,)
                                            )
                                        ]
                                      )
                                    ]
                                  )                              
                                ),
                          )
                     
                    ),
                    SizedBox(height: Dimensions.screenHeight * 0.02),
                    ],
                   )
                ],
              )
            )
        );
    }
}