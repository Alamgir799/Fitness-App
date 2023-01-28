import 'package:fitness/ui/views/bottom_nav_pages/bottom_nav_controller.dart';
import 'package:fitness/ui/views/bottom_nav_pages/category/blog_category.dart';
import 'package:fitness/ui/views/bottom_nav_pages/category/podcast_category.dart';
import 'package:fitness/ui/views/bottom_nav_pages/category/video_category.dart';
import 'package:fitness/ui/views/bottom_nav_pages/details_pages/blog_details_screen.dart';
import 'package:fitness/ui/views/bottom_nav_pages/details_pages/podcast_details_screen.dart';
import 'package:fitness/ui/views/bottom_nav_pages/details_pages/video_details_screen.dart';
import 'package:fitness/ui/views/favourite_screen.dart';
import 'package:fitness/ui/views/onbording_screen.dart';
import 'package:fitness/ui/views/splash_screen.dart';
import 'package:fitness/ui/views/auth/forget_screen.dart';
import 'package:fitness/ui/views/auth/sign_in.dart';
import 'package:fitness/ui/views/auth/sign_up.dart';
import 'package:get/get.dart';

const String splash = '/splash-screen';
const String onbording = '/onbording-screen';
const String login = '/login-screen';
const String signup = '/signup-screen';
const String forgot = '/forgot-screen';
const String bottomNav = '/bottomnav-screen';
const String blogDetails = '/blogdetails-screen';
const String videoDetails = '/videodetails-screen';
const String podcastDetails = '/podcastdetails-screen';
const String blogcategory = '/blogcategory-screen';
const String podcastcategory = '/podcastcategory-screen';
const String videocategory = '/videocategory-screen';
const String favourite = '/favourite-screen';

List<GetPage> getPages = [
  GetPage(
    name: splash,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: onbording,
    page: () => OnboardingScreen(),
  ),
  GetPage(
    name: login,
    page: () => LoginScreen(),
  ),
  GetPage(
    name: signup,
    page: () => SignUpScreen(),
  ),
  GetPage(
    name: forgot,
    page: () => ForgotScreen(),
  ),
  GetPage(
    name: bottomNav,
    page: () => BottomNavController(),
  ),
  GetPage(
    name: blogDetails,
    page: () => BlogDetailsScreen(),
  ),
  GetPage(
    name: videoDetails,
    page: () => VideoDetailsScreen(),
  ),
  GetPage(
    name: podcastDetails,
    page: () => PodcastDetails(),
  ),
  GetPage(
    name: blogcategory,
    page: () => BlogCategoryScreen(),
  ),
  GetPage(
    name: podcastcategory,
    page: () => PodcastCategoryScreen(),
  ),
  GetPage(
    name: videocategory,
    page: () => VideoCategoryScreen(),
  ),
  GetPage(
    name: favourite,
    page: () => FavouriteScreen(),
  ),
];
