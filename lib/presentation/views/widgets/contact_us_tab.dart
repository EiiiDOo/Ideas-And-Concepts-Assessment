import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideas_and_concepts_assessment_task/config/localization/translations_keys.dart';
import 'package:ideas_and_concepts_assessment_task/config/theme/app_colors.dart';
import 'package:ideas_and_concepts_assessment_task/domain/entities/contact_entity.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/views/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_icon.dart';

class ContactUsTab extends StatefulWidget {
  const ContactUsTab({super.key});

  @override
  State<ContactUsTab> createState() => _ContactUsTabState();
}

class _ContactUsTabState extends State<ContactUsTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          itemCount: _contactItems.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final contact = _contactItems[index];
            return CustomListTile(
              title: contact.title,
              leading: CustomIcon(
                iconData: contact.icon,
                iconColor: AppColors.black,
              ),
              trailing: CustomIcon(
                iconData: Icons.arrow_forward_ios,
                iconColor: AppColors.black,
                color: Colors.transparent,
              ),
              onTap: () =>
                  _openLink(webUrl: contact.webUrl, appUrl: contact.webUrl),
            );
          },
        ),
      ],
    );
  }
}

final List<ContactEntity> _contactItems = [
  ContactEntity(
    title: TranslationKeys.customerService.tr,
    icon: Icons.headset_mic_outlined,
    appUrl: 'tel:+966123456789',
    webUrl: 'tel:+966123456789',
  ),
  ContactEntity(
    title: TranslationKeys.website.tr,
    icon: Icons.language,
    webUrl: 'https://i-c.com.sa/',
  ),
  ContactEntity(
    title: TranslationKeys.facebook.tr,
    icon: Icons.facebook,
    appUrl: 'fb://facewebmodal/f?href=https://facebook.com/icpage',
    webUrl: 'https://facebook.com/icpage',
  ),
  ContactEntity(
    title: TranslationKeys.whatsapp.tr,
    icon: Icons.message_sharp,
    appUrl: 'whatsapp://send?phone=+966123456789',
    webUrl: 'https://wa.me/966123456789',
  ),
  ContactEntity(
    title: TranslationKeys.instagram.tr,
    icon: Icons.camera_alt_outlined,
    appUrl: 'instagram://user?username=ic_official',
    webUrl: 'https://instagram.com/ic_official',
  ),
];

Future<void> _openLink({String? appUrl, required String webUrl}) async {
  final Uri webUri = Uri.parse(webUrl);
  if (appUrl == null) {
    await launchUrl(webUri, mode: LaunchMode.externalApplication);
  } else {
    final Uri appUri = Uri.parse(appUrl);
    // Try to launch the app URL
    if (await canLaunchUrl(appUri)) {
      await launchUrl(appUri, mode: LaunchMode.externalApplication);
    } else {
      // Fallback to web
      await launchUrl(webUri, mode: LaunchMode.externalApplication);
    }
  }
}
