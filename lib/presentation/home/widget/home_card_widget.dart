import 'package:barberhub_app/assets/assets.gen.dart';
import 'package:barberhub_app/core/component/buttons.dart';
import 'package:barberhub_app/core/extensions/sized_box_ext.dart';
import 'package:barberhub_app/core/styles/app_colors.dart';
import 'package:barberhub_app/core/styles/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeCardWidget extends StatelessWidget {
  final VoidCallback onTap;
  const HomeCardWidget({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 225,
      decoration: BoxDecoration(
        color: AppColors.colorPrimary900,
        borderRadius: BorderRadius.circular(AppSizes.s8),
        image: DecorationImage(
          image: AssetImage(Assets.images.iconSlider.path),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
              top: 16,
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.s15,
                    vertical: AppSizes.s7,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.colorPrimary500,
                    borderRadius: BorderRadius.circular(AppSizes.s8),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      Assets.icons.icons2.path,
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
                AppSizes.s12.height,
                Button.filled(
                  onPressed: onTap,
                  label: 'Booking Now',
                  textColor: AppColors.colorPrimary900,
                  color: AppColors.colorNeutrals0,
                ),
    
              ],
            ),
          ),
          Image.asset(Assets.images.pictSlider.path),
        ],
      ),
    );
  }
}