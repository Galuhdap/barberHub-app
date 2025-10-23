import 'package:barberhub_app/config/theme_config.dart';
import 'package:barberhub_app/core/styles/app_colors.dart';
import 'package:barberhub_app/core/styles/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../model/navigation_item_data.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final List<NavigationItemData> items;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.items,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: ThemeConfig.titleSmall.copyWith(
        fontSize: AppSizes.s12,
        color: Colors.red
      ),
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: AppColors.colorExtraColorShadow,
      unselectedItemColor: AppColors.colorNeutrals400,
      backgroundColor: AppColors.colorNeutrals0,
      elevation: 8,
      items: items.map((item) {
        final index = items.indexOf(item);
        final isSelected = index == currentIndex;

        return BottomNavigationBarItem(
          icon: SvgPicture.asset(
            item.iconPath,
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(
              isSelected ? AppColors.colorPrimary900 : AppColors.colorNeutrals400,
              BlendMode.srcIn,
            ),
          ),
          label: item.label,
          
        );
      }).toList(),
    );
  }
}
