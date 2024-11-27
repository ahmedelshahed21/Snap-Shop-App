import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:snap_shop/core/utils/helpers/clipboard_type.dart';
import 'package:snap_shop/core/utils/helpers/custom_snack_bar.dart';

void copyToClipboard(BuildContext context, String text, {ClipboardType? type}) {
  Clipboard.setData(ClipboardData(text: text));

  String message;
  switch (type) {
    case ClipboardType.email:
      message = 'Email address copied to clipboard!';
      break;
    case ClipboardType.phone:
      message = 'Phone number copied to clipboard!';
      break;
    case ClipboardType.url:
      message = 'Link copied to clipboard!';
      break;
    default:
      message = 'Text copied to clipboard!';
  }

  customSnackBar(context, message);
}
