import 'package:flutter/material.dart';
import '../widgets/status_tab.dart';

class WhatsAppStatusScreen extends StatelessWidget {
  const WhatsAppStatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1, // STATUS tab is selected
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xFF075E54),
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {},
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 4.0,
            labelColor: Colors.white,
            unselectedLabelColor: Color(0xBBFFFFFF),
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [Tab(text: 'CHATS'), Tab(text: 'STATUS'), Tab(text: 'CALLS')],
          ),
        ),
        body: TabBarView(
          children: [
            const Center(child: Text('Chats Tab')),
            StatusTab(),
            const Center(child: Text('Calls Tab')),
          ],
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Edit status button (small)
            FloatingActionButton(
              mini: true,
              backgroundColor: Colors.grey[300],
              onPressed: () {},
              child: const Icon(Icons.edit, color: Colors.black87),
            ),
            const SizedBox(height: 16),
            // Camera button (larger)
            FloatingActionButton(
              backgroundColor: const Color(0xFF25D366),
              onPressed: () {},
              child: const Icon(Icons.camera_alt),
            ),
          ],
        ),
      ),
    );
  }
}
