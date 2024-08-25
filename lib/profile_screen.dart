import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Add settings action here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Picture and Info
              CircleAvatar(
                radius: 50,
                backgroundImage: const AssetImage(
                    'assets/images/IMG_5922.JPG'), // Replace with actual image URL
              ),
              SizedBox(height: 16),
              Text(
                'Chris Evans',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Teacher',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 20),

              // Followers, Following, Posts
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildStatItem('Followers', '325'),
                    _buildStatItem('Following', '246'),
                    _buildStatItem('Posts', '96'),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Options List
              _buildOptionItem(Icons.notifications, 'Notification'),
              _buildOptionItem(Icons.star_border, 'Interests'),
              _buildOptionItem(Icons.history, 'History'),
              _buildOptionItem(Icons.bookmark_border, 'Bookmarks and saves'),
              _buildOptionItem(Icons.tag, 'I was marked'),
              _buildOptionItem(Icons.policy, 'Privacy Policy'),

              // Log Out
              ListTile(
                leading: Icon(Icons.logout, color: Colors.red),
                title: Text('Log out', style: TextStyle(color: Colors.red)),
                onTap: () {
                  // Add log out action here
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build each stat item
  Widget _buildStatItem(String label, String count) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  // Helper method to build each option item
  Widget _buildOptionItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        // Add action here for each option
      },
    );
  }
}
