import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../models/status_item.dart';

class StatusListItem extends StatelessWidget {
  final StatusItem statusItem;
  final bool isSeen;

  const StatusListItem({
    Key? key,
    required this.statusItem,
    this.isSeen = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSeen ? Colors.grey : const Color(0xFF25D366),
            width: 2,
          ),
        ),
        child: CircleAvatar(
          radius: 23,
          backgroundColor: Colors.white,
          child: ClipOval(
            child: SvgPicture.asset(
              statusItem.imagePath,
              width: 46,
              height: 46,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      title: Text(
        statusItem.name,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(statusItem.time),
    );
  }
}
