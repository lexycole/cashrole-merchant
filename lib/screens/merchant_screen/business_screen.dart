import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xcrowme/utils/colors.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Get.back(),
        ),
        backgroundColor: AppColors.AppBannerColor,
        title: const Text('Business'),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(20),
              child: Column (
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  SizedBox(height: 20),
                  Center(
                  child: Container(
                        width: double.maxFinite,
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            // User Name
                            Padding (
                              padding: const EdgeInsets.only(left:10.0), 
                              child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Welcome,", style: TextStyle(fontSize: 26)),
                                      Text("Yemisi ", style: TextStyle(fontSize: 26,fontWeight:FontWeight.bold)),
                                    ],
                                  ),
                              ),
                            SizedBox(height: 5.0),
                            // Activate Business
                            Card(
                                elevation: 10.0,
                                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                child: Padding (
                                  padding: const EdgeInsets.all(30.0), 
                                  child:Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        SizedBox(height: 5.0),
                                        Text("Submit compliance details to accept live payments",
                                            style: TextStyle (
                                              fontSize: 16, 
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black
                                              )
                                            ),
                                        SizedBox(height: 10),
                                        Container(
                                          padding: const EdgeInsets.only(top:20.0),
                                          child: GestureDetector(
                                              onTap: () {
                                               },
                                              child: Container(
                                                width: 380,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: AppColors.bgBtnColor,
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Activate Business",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        )
                                      ]
                                    )
                          ),
                            ),
                            SizedBox(height: 5.0),
                            // Contact Support
                            Card(
                                elevation: 10.0,
                                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                child: Padding (
                                  padding: const EdgeInsets.all(30.0), 
                                  child:Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        SizedBox(height: 5.0),
                                        SizedBox(height: 5.0),
                                        Text("Find answers to your questions you might have or get in touch",
                                            style: TextStyle (
                                              fontSize: 16, 
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black
                                              )
                                            ),
                                        SizedBox(height: 10),
                                        Container(
                                          padding: const EdgeInsets.only(top:20.0),
                                          child: GestureDetector(
                                              onTap: () {
                                               },
                                              child: Container(
                                                width: 380,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: AppColors.bgBtnColor,
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Contact support",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        )
                                      ]
                                    )
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ] 
              )
            )
            ) 
          );
        }
      }