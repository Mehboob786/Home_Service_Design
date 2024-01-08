import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSettingsGray900,
      activeIcon: ImageConstant.imgSettingsGray900,
      title: "lbl_personal".tr,
      type: BottomBarEnum.Personal,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavBookings,
      activeIcon: ImageConstant.imgNavBookings,
      title: "lbl_bookings".tr,
      type: BottomBarEnum.Bookings,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavProfile,
      activeIcon: ImageConstant.imgNavProfile,
      title: "lbl_profile".tr,
      type: BottomBarEnum.Profile,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 374.h,
          child: Divider(),
        ),
        Container(
          height: 56.v,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary,
          ),
          child: Obx(
            () => BottomNavigationBar(
              backgroundColor: Colors.transparent,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedFontSize: 0,
              elevation: 0,
              currentIndex: selectedIndex.value,
              type: BottomNavigationBarType.fixed,
              items: List.generate(bottomMenuList.length, (index) {
                return BottomNavigationBarItem(
                  icon: Container(
                    decoration: AppDecoration.fillOnPrimary,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: bottomMenuList[index].icon,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          color: appTheme.gray900,
                          margin: EdgeInsets.only(top: 10.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 7.v),
                          child: Text(
                            bottomMenuList[index].title ?? "",
                            style:
                                CustomTextStyles.bodySmallSFProDisplay.copyWith(
                              color: appTheme.gray900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  activeIcon: Container(
                    decoration: AppDecoration.fillOnPrimary,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: bottomMenuList[index].activeIcon,
                          height: 24.v,
                          width: 23.h,
                          color: appTheme.gray900,
                          margin: EdgeInsets.only(top: 8.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 7.v),
                          child: Text(
                            bottomMenuList[index].title ?? "",
                            style:
                                CustomTextStyles.bodySmallSFProDisplay.copyWith(
                              color: appTheme.gray900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  label: '',
                );
              }),
              onTap: (index) {
                selectedIndex.value = index;
                onChanged?.call(bottomMenuList[index].type);
              },
            ),
          ),
        ),
      ],
    );
  }
}

enum BottomBarEnum {
  Home,
  Personal,
  Bookings,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
