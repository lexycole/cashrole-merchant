import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xcrowme/routes/route_helpers.dart';
import 'package:xcrowme/utils/colors.dart';

  class HomeScreen extends StatefulWidget {
    const HomeScreen({Key? key}) : super(key: key);

    @override
    State<HomeScreen> createState() => _HomeScreenState();
  }

  class _HomeScreenState extends State<HomeScreen> {

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: Container(
            padding: const EdgeInsets.all(20),
              child: Column (
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  SizedBox(height: 20),
                  Center(
                    child:Container(
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
                            // User Profile Card
                            Card(
                                elevation: 10.0,
                                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                child: Padding (
                                  padding: const EdgeInsets.all(30.0), 
                                  child:Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        SizedBox(height: 5.0),
                                        CircleAvatar(
                                          radius: 40,
                                          backgroundColor: AppColors.bgBtnColor,
                                          child: Icon(Icons.person,
                                              color: Colors.white, size: 30),
                                          ),
                                        SizedBox(height: 10),
                                        Text("Mrs Yemisi Olawande", style: TextStyle(fontSize: 18)),
                                        SizedBox(height: 5.0),
                                        Text("SignIn 2022 * Victoria Island, Lagos",
                                            style: TextStyle (
                                              fontSize: 18, 
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black
                                              )
                                            ),
                                        SizedBox(height: 10),
                                        Container(
                                          padding: const EdgeInsets.only(top:20.0),
                                          child: GestureDetector(
                                              onTap: () {
                                                Get.toNamed(RouteHelper.getMerchantRegisterScreen());
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
                                                    "Become a merchant",
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
          );
        }
      }