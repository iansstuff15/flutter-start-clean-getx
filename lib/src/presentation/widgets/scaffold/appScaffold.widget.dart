import 'package:clean_architecture_getx_starter/src/config/constants/colors/colors.config.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/sizes.config.dart';
import 'package:clean_architecture_getx_starter/src/presentation/styles/text/text.styles.dart';
import 'package:clean_architecture_getx_starter/src/presentation/widgets/scaffold/appBar/appbar.scaffold.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppScaffold extends StatefulWidget {
  Widget? child;
  Color? backgroundColor;
  bool? showAppBar;
  bool? showMenu;
  bool? showBackButton;
  String? title;
  Widget? bottomNavigationBar;
  AppScaffold(
      {this.child,
      this.backgroundColor,
      this.showAppBar = false,
      this.showBackButton = false,
      this.showMenu = false,
      this.title,
      this.bottomNavigationBar});
  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: widget.bottomNavigationBar ?? null,
      appBar: widget.showAppBar!
          ? AppBar(
              backgroundColor: AppColors.scaffoldBackground,
              title: Text(
                widget.title ?? "",
                style: textStyles.appBarTextStyle,
              ),
              shadowColor: Colors.transparent,
            )
          : null,
      backgroundColor: widget.backgroundColor != null
          ? widget.backgroundColor
          : AppColors.scaffoldBackground,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.mediumSmall,
                      vertical: AppSizes.small),
                  child: widget.child!))),
    );
  }
}
