import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xcrowme/routes/route_helpers.dart';
import 'package:xcrowme/screens/account_screen/index.dart';
import 'package:xcrowme/screens/create_user_screen/index.dart';
import 'package:xcrowme/screens/products_screen/index.dart';
import 'package:xcrowme/screens/store_screen/index.dart';
import 'package:xcrowme/screens/users_screen/user_two_screen.dart';
import 'package:xcrowme/screens/withdraw_screen/index.dart';
import 'package:xcrowme/utils/colors.dart';
import 'package:xcrowme/utils/dimensions.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

    @override
    State<DashboardScreen> createState() => _DashboardScreenState();
  }

  class _DashboardScreenState extends State<DashboardScreen> {

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        // Dashboard Application Bar
          appBar: AppBar(
            backgroundColor: AppColors.AppBannerColor,
            title: const Text('Dashboard'),
          ),
          // Dashboard Drawer
          drawer: Drawer(
            child: ListView(
            padding: EdgeInsets.zero,
            children: [
                  const DrawerHeader(
                    padding: EdgeInsets.only(top:10.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 5, 20, 68),
                    ),
                    child:Image(
                            image: AssetImage('assets/logo.png'),
                            height: 100,
                            width: 100,
                          ),
                  ),
                  ListView(
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        leading: const Icon(Icons.dashboard, 
                          color: Color.fromARGB(255, 5, 20, 68)),
                        title: const Text('Dashboard'),
                        onTap: () {
                            Get.offNamed(RouteHelper.getDashboardScreen());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.person,
                          color:Color.fromARGB(255, 5, 20, 68)),
                        title: const Text('Profile'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AccountScreen()),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.send, 
                          color:Color.fromARGB(255, 5, 20, 68)),
                        title: const Text('Send Money'),
                        onTap: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CreateUserScreen()),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.currency_exchange,
                          color:Color.fromARGB(255, 5, 20, 68)),
                        title: const Text('Exchange Money'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProductsScreen()),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.currency_bitcoin_sharp),
                        title: const Text('Bitcoin'),
                        onTap: () { 
                           Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => StoreScreen()),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.business,
                          color:Color.fromARGB(255, 5, 20, 68)),
                        title: const Text('Business'),
                        onTap: () {
                         Get.offNamed(RouteHelper.getBusinessScreen());
                        },
                      ),
                       ListTile(
                        leading: const Icon(Icons.notifications, 
                          color:Color.fromARGB(255, 5, 20, 68)),
                        title: const Text('Notification'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => UserScreenTwo()),
                          );
                         },
                      ),
                      ListTile(
                        leading: const Icon(Icons.feedback, 
                          color:Color.fromARGB(255, 5, 20, 68)
                        ),
                        title: const Text('Feedback'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => UserScreenTwo()),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.help,
                          color:Color.fromARGB(255, 5, 20, 68)),
                        title: const Text('Help'),
                        onTap: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => WithdrawScreen()),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.settings,
                          color:Color.fromARGB(255, 5, 20, 68)),
                        title: const Text('Settings'),
                        onTap: () {},
                      ),
                      Divider(),
                      ListTile(
                        leading: const Icon(
                          Icons.logout, 
                          color:Color.fromARGB(255, 5, 20, 68)
                          ),
                        title: const Text('Sign Out'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),  
                ]
              )
            ),

          // App Content
          body: Container(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                      GestureDetector(
                        onTap: () {},
                            child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.AppBannerColor, width:3),
                                borderRadius: BorderRadius.circular(Dimensions.radius20),
                                color: Colors.white,
                            ),
                            child: Container(
                              padding: const EdgeInsets.only(top:5.0),

                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                            Icon(Icons.attach_money, color: AppColors.AppBannerColor, size:30),
                                            SizedBox(height: Dimensions.height10),
                                            Text('Total', 
                                                style: TextStyle(
                                                  color: AppColors.AppBannerColor, 
                                                  fontSize: 18,
                                                  overflow: TextOverflow.visible,)
                                              ),
                                              Text('Money', 
                                                style: TextStyle(
                                                  color: AppColors.AppBannerColor, 
                                                  fontSize: 18,
                                                  overflow: TextOverflow.visible,)
                                              )
                                              ,
                                              Text('Sent', 
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
                
                Column(
                  children: [
                    GestureDetector(
                        onTap: () { },
                            child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                            border: Border.all(color: AppColors.AppBannerColor, width:3),
                              borderRadius: BorderRadius.circular(Dimensions.radius20),
                              color: Colors.white,
                            ),
                            child: Container(
                              padding: const EdgeInsets.only(top:5.0),
                              child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                            Icon(Icons.attach_money, color: AppColors.AppBannerColor, size:30),
                                            SizedBox(height: Dimensions.height10),
                                            Text('Total', 
                                                style: TextStyle(
                                                  color: AppColors.AppBannerColor, 
                                                  fontSize: 18,
                                                  overflow: TextOverflow.visible,)
                                              ),
                                              Text('money', 
                                                style: TextStyle(
                                                  color: AppColors.AppBannerColor, 
                                                  fontSize: 18,
                                                  overflow: TextOverflow.visible,)
                                              ),
                                              Text(' excanged', 
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
                Column(
                  children: [
                    GestureDetector(
                        onTap: () {},
                            child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                            border: Border.all(color: AppColors.AppBannerColor, width:3),
                              borderRadius: BorderRadius.circular(Dimensions.radius20),
                              color: Colors.white,
                            ),
                            child: Container(
                              padding: const EdgeInsets.only(top:5.0),
                              child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column (
                                      children: [
                                            Icon(Icons.attach_money, color: AppColors.AppBannerColor, size:30),
                                            SizedBox(height: Dimensions.height10),
                                            Text('Bitcoin', 
                                                style: TextStyle(
                                                  color: AppColors.AppBannerColor, 
                                                  fontSize: 18,
                                                  overflow: TextOverflow.visible,)
                                              ),
                                              Text('Transactions', 
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
                    ],
            ),

            )
          );
        }
      }