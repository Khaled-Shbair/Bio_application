import 'package:bio_app/helper.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyFunctions with Helper {
  Future<void> makePhoneCall(String phoneNumber, context) async {
    final Uri url = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      snackBar('Cannot be called...', context);
    }
  }

  Future<void> openWhatsAppChat(
      String phoneNumber, String text, context) async {
    String link = 'https://wa.me/+97$phoneNumber?text=$text';
    if (await canLaunchUrlString(link)) {
      await launchUrlString(
        link,
        mode: LaunchMode.externalNonBrowserApplication,
      );
    } else {
      snackBar('Number not found...', context);
    }
  }

  Future<void> openTelegramChat(String phoneNumber, context) async {
    String link = 'https://t.me/Khaled_Shbair_Pal';
    if (await canLaunchUrlString(link)) {
      await launchUrlString(
        link,
        mode: LaunchMode.externalNonBrowserApplication,
      );
    } else {
      snackBar('Number not found...', context);
    }
  }

  Future<void> openFacebookProfile(context) async {
    String link = 'https://www.facebook.com/KhaledShbair2022/';
    if (await canLaunchUrlString(link)) {
      await launchUrlString(
        link,
        mode: LaunchMode.externalNonBrowserApplication,
      );
    } else {
      snackBar('Number not found...', context);
    }
  }

  Future<void> openInstagramProfile(context) async {
    String link = 'https://www.instagram.com/khaled.shubair/';
    if (await canLaunchUrlString(link)) {
      await launchUrlString(
        link,
        mode: LaunchMode.externalNonBrowserApplication,
      );
    } else {
      snackBar('Number not found...', context);
    }
  }

  Future<void> sendMessageGmail(context) async {
    Uri url = Uri(
      path: 'khaled.shbair12@gmail.com',
      scheme: 'mailto',
    );
    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalNonBrowserApplication,
      );
    } else {
      snackBar('Number not found...', context);
    }
  }

  Future<void> sendSMS(String phone, context) async {
    final Uri url = Uri(
      scheme: 'sms',
      path: phone,
    );
    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalNonBrowserApplication,
      );
    } else {
      snackBar('Number not found...', context);
    }
  }
}
