import 'package:flutter/material.dart';
import 'package:text_e_role/app/app_colors.dart';


class UnloggedLayout extends StatelessWidget {
  final Widget? child;

  const UnloggedLayout({Key? key, this.child}) : super(key: key);

  Widget mainContent(Widget? child) {
    const double minHeight = 372;
    const double maxWidth = 600;

    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: minHeight,
        maxWidth: maxWidth,
      ),
      child: Center(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: AppColors.mainBG, 
            borderRadius: BorderRadius.circular(20),
          ),
          child: IntrinsicHeight(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    constraints: const BoxConstraints(
                      minHeight: minHeight,
                    ),
                    child: child ?? Container(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.bgTop, AppColors.bgBottom],
            begin: Alignment.topCenter,
            end: Alignment(0.0, 0.65),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: mainContent(child),
          ),
        ),
      ),
    );
  }
}