import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import '../widgets/my_icon.dart';
import '../units/helper.dart';
import '../Functions.dart';

class BioScreen extends StatelessWidget with Helper {
  BioScreen({super.key});

  final MyFunctions _myFunctions = MyFunctions();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200.h,
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                clipBehavior: Clip.antiAlias,
                children: [
                  Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: Image.asset(
                      'assets/images/cover_image.jpg',
                      height: 150.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  CircleAvatar(
                    radius: 60.r,
                    backgroundColor: Colors.blue,
                    child: CircleAvatar(
                      radius: 56.r,
                      backgroundImage:
                          const AssetImage('assets/images/image_profile.png'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'Khaled Shbair',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 24.sp,
                color: Colors.black,
              ),
            ),
            Text(
              'Mobile Application Developer - Flutter',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w300,
                fontSize: 18.sp,
              ),
            ),
            SizedBox(height: 15.h),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [
                  MyIcon(
                    colors: [
                      Colors.green.shade800,
                      Colors.green.shade500,
                    ],
                    icon: FontAwesomeIcons.phone,
                    text: 'Call me',
                    onTap: () =>
                        _myFunctions.makePhoneCall('0599724037', context),
                  ),
                  MyIcon(
                    colors: [
                      Colors.blue.shade800,
                      Colors.blue.shade500,
                    ],
                    icon: FontAwesomeIcons.commentSms,
                    text: 'Sent me sms',
                    size: 24.h,
                    onTap: () => _myFunctions.sendSMS('0599724037', context),
                  ),
                  MyIcon(
                    colors: const [
                      Color(0XFF229ED9),
                      Color(0XFF2AABEE),
                    ],
                    icon: FontAwesomeIcons.telegram,
                    size: 24.h,
                    text: 'Telegram',
                    onTap: () =>
                        _myFunctions.openTelegramChat('0599724037', context),
                  ),
                  MyIcon(
                    colors: const [
                      Color(0XFF14D244),
                      Color(0XFF25D366),
                    ],
                    icon: FontAwesomeIcons.whatsapp,
                    size: 24.h,
                    text: 'WhatsApp',
                    onTap: () => _myFunctions.openWhatsAppChat(
                        '0599724037', 'مرحبا خالد', context),
                  ),
                  MyIcon(
                    colors: const [
                      Color(0XFF4267B2),
                      Color(0XFF3156B0),
                    ],
                    icon: FontAwesomeIcons.facebook,
                    text: 'Facebook',
                    size: 24.h,
                    onTap: () => _myFunctions.openFacebookProfile(context),
                  ),
                  MyIcon(
                    colors: const [
                      Color(0XFF405DE6),
                      Color(0XFF5B51D8),
                      Color(0XFF833AB4),
                      Color(0XFFC13584),
                      Color(0XFFE1306C),
                      Color(0XFFFD1D1D),
                      Color(0XFFF56040),
                      Color(0XFFF77737),
                      Color(0XFFFCAF45),
                      Color(0XFFFFDC80),
                    ],
                    icon: FontAwesomeIcons.instagram,
                    text: 'Instagram',
                    size: 24.h,
                    onTap: () => _myFunctions.openInstagramProfile(context),
                  ),
                  MyIcon(
                    colors: const [
                      Color(0XFF4285F4),
                      Color(0XFFDB4437),
                      Color(0XFFF4B400),
                      Color(0XFF0F9D58),
                    ],
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 14.r,
                      child: SvgPicture.asset(
                        'assets/icons/gmail.svg',
                        height: 22.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    text: 'Gmail',
                    onTap: () => _myFunctions.sendMessageGmail(context),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(bottom: 10.h),
              child: Text(
                'Flutter - 2023',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
