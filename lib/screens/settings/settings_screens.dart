import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('General settings'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.fullscreen),
              title: Text('Full Screen'),
              onTap: () {
                // Xử lý sự kiện khi người dùng chọn chế độ toàn màn hình
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification'),
              onTap: () {
                // Xử lý sự kiện khi người dùng chọn cài đặt thông báo
              },
            ),
            ListTile(
              leading: Icon(Icons.timer_outlined),
              title: Text('Reminder'),
              onTap: () {
                // Xử lý sự kiện khi người dùng chọn cài đặt thông báo
              },
            ),
            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text('Yoga saving tips'),
              onTap: () {
                // Xử lý sự kiện khi người dùng chọn cài đặt thông báo
              },
            ),
          ],
        ),
      ),
    );
  }
}
