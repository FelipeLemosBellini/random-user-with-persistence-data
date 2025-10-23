import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const SimpleAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0xFF5D5D5D), width: 2),
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: Container(
                  height: 32,
                  width: 32,
                  margin: const EdgeInsets.only(left: 24),
                  padding: EdgeInsets.only(left: 6),
                  decoration: BoxDecoration(
                    color: Color(0xFFC4C2C2),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: Color(0xFF5D5D5D), width: 2),
                  ),
                  child: Icon(Icons.arrow_back_ios),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
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
