import 'package:barberhub_app/assets/assets.gen.dart';
import 'package:barberhub_app/presentation/booking/page/booking_page.dart';
import 'package:barberhub_app/presentation/home/model/navigation_item_data.dart';
import 'package:barberhub_app/presentation/home/page/home_page.dart';
import 'package:barberhub_app/presentation/home/widget/custom_bottom_navigation_bar.dart';
import 'package:barberhub_app/presentation/profile/page/profile_page.dart';
import 'package:flutter/material.dart';


class BottomBarNavigation extends StatefulWidget {
  const BottomBarNavigation({super.key});

  @override
  State<BottomBarNavigation> createState() => _BottomBarNavigationState();
}

class _BottomBarNavigationState extends State<BottomBarNavigation> {
  int _selectedIndex = 0;

  late final List<NavigationItemData> _navigationItems;

  @override
  void initState() {
    super.initState();
    _navigationItems = [
      NavigationItemData(
        iconPath: Assets.icons.home.path,
        label: 'Home',
        page: const HomePage(),
      ),
      NavigationItemData(
        iconPath: Assets.icons.booking.path,
        label: 'Booking',
        page: const BookingPage(),
      ),
      NavigationItemData(
        iconPath: Assets.icons.user.path,
        label: 'Profile',
        page: const ProfilePage(),
      ),
    ];

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   final outletBloc = context.read<OutletBloc>();
    //   outletBloc.add(const OutletEvent.loadCached());
    //   outletBloc.add(const OutletEvent.fetchOutlets(showLoading: false));
    // });
  }

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navigationItems[_selectedIndex].page,
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        items: _navigationItems,
        onTap: _onTabTapped,
      ),
    );
  }
}
