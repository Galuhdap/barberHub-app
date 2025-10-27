import 'package:barberhub_app/assets/assets.gen.dart';
import 'package:barberhub_app/config/theme_config.dart';
import 'package:barberhub_app/core/component/buttons.dart';
import 'package:barberhub_app/core/extensions/sized_box_ext.dart';
import 'package:barberhub_app/core/styles/app_colors.dart';
import 'package:barberhub_app/core/styles/app_sizes.dart';
import 'package:barberhub_app/presentation/home/widget/home_card_widget.dart';
import 'package:barberhub_app/presentation/home/widget/section_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 18, right: 18),
        child: Column(
          children: [
            SectionHeaderWidget(),
            AppSizes.s18.height,
            HomeCardWidget(onTap: () {}),
            AppSizes.s24.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.colorBlueGrey100,
                      hintText: 'Search barber’s, haircut service',
                      hintStyle: ThemeConfig.bodyMedium.copyWith(
                        color: AppColors.colorBlueGrey400,
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Iconsax.search_normal_1_copy, color: AppColors.colorBlueGrey500,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSizes.s10),
                        borderSide: BorderSide(
                          color: AppColors.colorExtraColor300,
                          width: AppSizes.s2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: AppSizes.s1,
                        ),
                        borderRadius: BorderRadius.circular(AppSizes.s10),
                      ),
                      contentPadding: AppSizes.symmetricPadding(
                        horizontal: AppSizes.s16,
                        vertical: AppSizes.s17,
                      ),
                    ),

                    onChanged: (text) {
                      //  print('Text changed: $text');
                    },
                    onSubmitted: (text) {
                      // print('Text submitted: $text');
                    },
                  ),
                ),
                AppSizes.s12.width,
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: AppColors.colorPrimary900,
                    borderRadius: BorderRadius.circular(AppSizes.s8),
                  ),
                  child: Center(
                    child: Icon(
                      Iconsax.search_normal_1_copy,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
