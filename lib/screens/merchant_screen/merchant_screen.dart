import 'package:flutter/material.dart';
import 'package:xcrowme/screens/create_user_screen/index.dart';
import 'package:xcrowme/screens/global_store_link/index.dart';
import 'package:xcrowme/screens/properties_screen/index.dart';
import 'package:xcrowme/screens/withdraw_screen/index.dart';
import 'package:xcrowme/utils/colors.dart';
import 'package:xcrowme/utils/dimensions.dart';
import 'package:get/get.dart';

class MerchantScreen extends StatelessWidget {
  const MerchantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.AppBannerColor,
          title: const Text('Merchant'),
        ),
        body: Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: Dimensions.screenHeight * 0.05,
                    ),
                    // Global Store Link Container
                    GestureDetector(
                      onTap: () {
                        Get.to(() => GlobalStoreLinkScreen(),
                            transition: Transition.fade);
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
                            padding:EdgeInsets.only(top:20),
                            child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      // Center(
                                          Icon(Icons.store, color: AppColors.AppBannerColor, size:40),
                                          SizedBox(height: Dimensions.height10),
                                          Text('Global Store', 
                                              style: TextStyle(
                                                color: AppColors.AppBannerColor, 
                                                fontSize: 18,
                                                overflow: TextOverflow.visible,)
                                            )
                                     // )
                                  ]
                                )
                              ]
                            )                              
                          ),
                        )
                      ),
                    SizedBox(height: Dimensions.screenHeight * 0.02),
                    // Properties Container
                    GestureDetector(
                      onTap: () {
                        Get.to(() => PropertiesScreen(),
                            transition: Transition.fade);
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
                                          Icon(Icons.house_outlined, color: AppColors.AppBannerColor, size:40),
                                          SizedBox(height: Dimensions.height10),
                                          Text('Properties', 
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
                        Get.to(() => CreateUserScreen(),
                            transition: Transition.fade);
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
                                          Text('Create User', 
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
                    // Withdraw Container
                    GestureDetector(
                      onTap: () {
                        Get.to(() => WithdrawScreen(),
                            transition: Transition.fade);
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
                                          Icon(Icons.credit_score_outlined, color: AppColors.AppBannerColor, size:40),
                                          SizedBox(height: Dimensions.height10),
                                          Text('Withdraw', 
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
                      ],
                    )
                  ],
              )
            )
        );
      }
    }