
import 'package:barberhub_app/assets/assets.gen.dart';
import 'package:barberhub_app/config/theme_config.dart';
import 'package:barberhub_app/core/extensions/sized_box_ext.dart';
import 'package:barberhub_app/core/styles/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SectionHeaderWidget extends StatelessWidget {
  const SectionHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(Assets.icons.map.path, width: 15,),
                6.width,
                Text(
                  'Yogyakarta',
                  style: ThemeConfig.labelMedium.copyWith(
                    color: ThemeConfig.neutral0,
                    fontSize: 14
                  ),
                ),
              ],
            ),
            8.height,
            Text(
              'Joe Samanta',
              style: ThemeConfig.labelLarge.copyWith(
                color: ThemeConfig.neutral0,
                fontSize: 20
              ),
            ),
          ],
        ),
        Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(AppSizes.s100),
            image: const DecorationImage(
              image: NetworkImage(
                'https://i.pravatar.cc/300',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
