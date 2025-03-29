import 'package:flutter/material.dart';

class Task_19 extends StatefulWidget {
  const Task_19({Key? key}) : super(key: key);

  @override
  _Task_19State createState() => _Task_19State();
}

class _Task_19State extends State<Task_19> {
  bool _isDrawerOpen = false;

  void _toggleDrawer() {
    setState(() {
      _isDrawerOpen = !_isDrawerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task_19'),
        backgroundColor: Color.fromARGB(255, 139, 70, 142), // Light Green for AppBar
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: _toggleDrawer,
          ),
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: _toggleDrawer,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 207, 112, 226), 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Open Drawer', style: TextStyle(fontSize: 20,
              color: Colors.black
              )),
            ),
          ),
          
          
          if (_isDrawerOpen)
            GestureDetector(
              onTap: _toggleDrawer,
              child: Container(
                color: const Color(0x66000000), 
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          
          
          if (_isDrawerOpen)
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              child: Container(
                width: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 128, 55, 150), Color.fromARGB(255, 194, 187, 210)], // Green Gradient for Drawer
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.white,
                              backgroundImage: const AssetImage('assets/salma.jpg'),
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Umme Salma Lamyea',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'lamyeasalma147@gmail.com',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(color: Colors.white38),
                      DrawerItem(icon: Icons.home, text: 'Home', onTap: _toggleDrawer),
                      DrawerItem(icon: Icons.settings, text: 'Settings', onTap: _toggleDrawer),
                      DrawerItem(icon: Icons.logout, text: 'Logout', onTap: _toggleDrawer),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextButton(
                          onPressed: _toggleDrawer,
                          child: const Text(
                            'Close Drawer',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const DrawerItem({required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Color(0xFF81D4FA)), 
      title: Text(text, style: const TextStyle(color: Color(0xFF81D4FA))), 
      onTap: onTap,
    );
  }
}
