import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../models/status_item.dart';
import 'status_list_item.dart';

class StatusTab extends StatelessWidget {
  StatusTab({Key? key}) : super(key: key);

  final List<StatusItem> recentUpdates = [
    StatusItem(
      name: 'Arbab Nomani',
      time: 'Today, 11:57 am',
      imagePath: 'assets/avatars/profile1.svg',
    ),
  ];

  final List<StatusItem> viewedUpdates = [
    StatusItem(
      name: 'Waqas Ilyas',
      time: '4 minutes ago',
      imagePath: 'assets/avatars/profile2.svg',
    ),
    StatusItem(
      name: 'Usama Ghani Khan',
      time: 'Today, 1:07 pm',
      imagePath: 'assets/avatars/profile3.svg',
    ),
    StatusItem(
      name: 'Farhaj',
      time: 'Today, 12:28 pm',
      imagePath: 'assets/avatars/profile4.svg',
    ),
    StatusItem(
      name: 'Syed Abdul Rafay',
      time: 'Today, 12:20 pm',
      imagePath: 'assets/avatars/profile5.svg',
    ),
    StatusItem(
      name: 'Nabil Iqbal',
      time: 'Today, 11:58 am',
      imagePath: 'assets/avatars/profile6.svg',
    ),
    StatusItem(
      name: 'Syed Shahid Hassan',
      time: 'Today, 11:39 am',
      imagePath: 'assets/avatars/profile7.svg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // My Status Section
          ListTile(
            leading: Stack(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: ClipOval(
                    child: SvgPicture.asset(
                      'assets/avatars/my_profile.svg',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: const Color(0xFF25D366),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: const Icon(Icons.add, color: Colors.white, size: 16),
                  ),
                ),
              ],
            ),
            title: const Text(
              'My status',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('Tap to add status update'),
          ),

          // Recent Updates Section
          const Padding(
            padding: EdgeInsets.only(left: 16, top: 8, bottom: 8),
            child: Text(
              'Recent updates',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: recentUpdates.length,
            itemBuilder: (context, index) {
              return StatusListItem(
                statusItem: recentUpdates[index],
                isSeen: false,
              );
            },
          ),

          // Viewed Updates Section
          const Padding(
            padding: EdgeInsets.only(left: 16, top: 8, bottom: 8),
            child: Text(
              'Viewed updates',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: viewedUpdates.length,
            itemBuilder: (context, index) {
              return StatusListItem(
                statusItem: viewedUpdates[index],
                isSeen: true,
              );
            },
          ),
        ],
      ),
    );
  }
}
