import 'package:flutter/material.dart';
import 'package:random_user_data_persistence/core/ui/extensions/date_time_extension.dart';
import 'package:random_user_data_persistence/features/users/data/model/user_model.dart';

class ItemListUserWidget extends StatelessWidget {
  final UserModel user;

  const ItemListUserWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Row(
        children: [
          ClipOval(child: Image.network(user.picture.thumbnail)),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${user.name.first} - ${user.dob.date?.formatDate()}"),
              Text(user.email),
            ],
          ),
        ],
      ),
    );
  }
}
