import 'package:flutter/material.dart';

import 'package:mindwell/theme/color.dart';



class AppBarPrimary extends StatefulWidget implements PreferredSizeWidget {
  final String username;
  final String description;
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
  GlobalKey _avatarKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () => _showPopupMenu(),
          child: ClipOval(
            child: SizedBox(
              width: 1,
              height: 1,
              child: Image.asset(
                'assets/images/logo/logo_base_profile.png',
                key: _avatarKey, // Tambahkan kunci di sini
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        title: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello,  ${widget.username}',
                style: const TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryFontColor,
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
                Navigator.pushNamed(context, '/notification');
              },
            ),
        ],
      ),
    );
  }

  void _showPopupMenu() async {
    final RenderBox overlay = Overlay.of(context)!.context.findRenderObject() as RenderBox;

    await showMenu(
      context: context,
      position: RelativeRect.fromRect(
        _getRectFromKey(_avatarKey),
        Offset.zero & overlay.size,
      ),
      items: [
        PopupMenuItem(
          child: ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            leading: const Icon(Icons.file_download),
            title: const Text('Download'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              Navigator.pop(context);
              // Add action for 'Logout'
            },
          ),
        ),
      ],
    );
  }

  Rect _getRectFromKey(GlobalKey key) {
    final RenderBox renderBox = key.currentContext!.findRenderObject() as RenderBox;
    return renderBox.localToGlobal(Offset.zero) & renderBox.size;
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
