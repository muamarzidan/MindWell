import 'package:flutter/material.dart';

import 'package:mindwell/theme/color.dart';



class AppBarPrimary extends StatefulWidget implements PreferredSizeWidget {
  final String username;
  final String description; // Teks kedua di bagian tengah
  final Function()? profileIconTap;
  final String profileIcon;
  final String? notificationIcon;

  const AppBarPrimary({
    Key? key,
    required this.username,
    required this.description,
    this.profileIconTap,
    required this.profileIcon,
    this.notificationIcon,
  }) : super(key: key);

  @override
  _AppBarPrimaryState createState() => _AppBarPrimaryState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarPrimaryState extends State<AppBarPrimary> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: widget.profileIcon.isNotEmpty
          ? IconButton(
              icon: ClipOval(
                child: Image.asset(
                  widget.profileIcon,
                  width: 40.0,
                  height: 40.0,
                  fit: BoxFit.cover,
                ),
              ),
              onPressed: widget.profileIconTap,
            )
          : null,
      title: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, ${widget.username}',
              style: const TextStyle(
                fontSize: 15,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: AppColors.secondaryColor,
              ),
            ),
            Text(
              widget.description,
              style: const TextStyle(
                fontSize: 15,
                fontFamily: 'Poppins',
                color: AppColors.descriptionColor,
              ),
            ),
          ],
        ),
      ),
      actions: [
        if (widget.notificationIcon != null &&
            widget.notificationIcon!.isNotEmpty)
          IconButton(
            icon: Image.asset(
              widget.notificationIcon!,
              width: 25.0,
              height: 25.0,
              ),
            onPressed: () {
              // Perform action for notification icon
            },
          ),
      ],
      // shape: const Border(
      //   bottom: BorderSide(
      //     color: Colors.black,
      //     width: 1,
      //   ),
      // ),
    );
  }
}

class AppBarSecondary extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onBackTap;

  const AppBarSecondary({
    Key? key,
    this.onBackTap,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: onBackTap ?? () => Navigator.of(context).pop(),
      ),
    );
  }
}
