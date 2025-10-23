import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:random_user_data_persistence/core/ui/assets/app_assets.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Function() onTapDatabase;

  const HomeAppBar({super.key, required this.onTapDatabase});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0xFF5D5D5D), width: 2),
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Lista de Usuários",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 24),
                child: GestureDetector(
                  onTap: onTapDatabase,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFC4C2C2),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Color(0xFF5D5D5D), width: 2),
                    ),
                    padding: EdgeInsets.all(4),
                    child: SvgPicture.asset(
                      AppAssets.database,
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(64);
}
