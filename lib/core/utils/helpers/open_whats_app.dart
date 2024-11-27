import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openWhatsApp(String phoneNumber) async {
  final whatsappUrl = Uri.parse("https://wa.me/$phoneNumber");

  if (await canLaunchUrl(whatsappUrl)) {
    await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
  } else {
    debugPrint("Could not launch WhatsApp");
  }
}










