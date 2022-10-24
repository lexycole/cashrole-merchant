import 'package:get/get.dart';
import 'package:xcrowme/screens/home_screen/index.dart';
import 'package:xcrowme/screens/merchant_screen/business_screen.dart';
import 'package:xcrowme/screens/merchant_screen/dashboard_screen.dart';
import 'package:xcrowme/screens/merchant_screen/merchant_login_screen.dart';
import 'package:xcrowme/screens/merchant_screen/merchant_register_screen.dart';
import 'package:xcrowme/screens/onboarding_screen/index.dart';
import 'package:xcrowme/screens/password_recovery_screen/index.dart';
import 'package:xcrowme/screens/sign_in_screen/index.dart';
import 'package:xcrowme/screens/sign_up_screen/index.dart';
import 'package:xcrowme/screens/splash_screen/index.dart';

class RouteHelper {

  static const String initial ="/";
  static const String onboardingScreen = "/onboarding-screen";
  static const String signupScreen = "/signup-screen";
  static const String signinScreen = "/signin-screen";
  static const String homeScreen = "/home-screen";
  static const String passwordRecoveryScreen = "/password-recovery-screen";

  // Merchant Screens
  static const String merchantRegisterScreen = "/merchant-register-screen";
  static const String merchantLoginScreen = "/merchant-login-screen";
  static const String dashboardScreen = "/dashboard-screen";
  static const String businessScreen = "/business-screen";


  static String getInitial()=>'$initial';
  static String getOnboardingScreen()=>'$onboardingScreen';
  static String getSignUpScreen()=>'$signupScreen';
  static String getSignInScreen()=>'$signinScreen';
  static String getHomeScreen()=>'$homeScreen';
  static String getPasswordResetScreen()=>'$passwordRecoveryScreen';
  // Merchant Screens
  static String getMerchantRegisterScreen()=>'$merchantRegisterScreen';
  static String getMerchantLoginScreen()=>'$merchantLoginScreen';
  static String getDashboardScreen()=>'$dashboardScreen';
  static String getBusinessScreen()=>'$businessScreen';
  

  static List<GetPage> routes=[
    // Splash Screen
    GetPage( name:initial, page: ()=> SplashScreen()),
    // Onboarding Screen
    GetPage(name: onboardingScreen, page:() {
      return OnboardingScreen();
    },
    transition: Transition.fadeIn),
    // SignUp Screen
    GetPage(name: signupScreen, page:() {
      return SignUpScreen();
    },
    transition: Transition.fadeIn),
    // SignIn Screen
    GetPage(name: signinScreen, page:() {
      return SignInScreen();
    },
    transition: Transition.fadeIn),
    // Home Screen
    GetPage(name:homeScreen, page:() {
      return HomeScreen();
    }, transition: Transition.fadeIn),
    // Merchant Register Screen
    GetPage(name:merchantRegisterScreen, page:() {
      return RegisterMerchantScreen();
    }, transition: Transition.fadeIn),
    // Merchant Login Screen
    GetPage(name:merchantLoginScreen, page:() {
      return MerchantLoginScreen();
    }, transition: Transition.fadeIn),
    // Dashboard Screen
    GetPage(name: dashboardScreen, page:() {
      return DashboardScreen();},
    transition: Transition.fadeIn),
    // Business Screen
    GetPage(name: businessScreen, page:() {
      return BusinessScreen();}
      ,transition: Transition.fadeIn),
      GetPage(name: passwordRecoveryScreen, page:() {
      return PasswordRecoveryScreen();}
      ,transition: Transition.fadeIn),
  ];

}