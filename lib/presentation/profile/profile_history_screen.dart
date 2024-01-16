import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                        border: Border.all(
                          color: Colors.white,
                          width: 4,
                        ),
                        gradient: RadialGradient(
                          colors: [
                            Colors.white,
                            Colors.grey.shade200,
                          ],
                          stops: [0.0, 1.0],
                        ),
                      ),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('assets/images/human.png'),
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Profile User',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ProfileTextFieldWidget(
                    label: 'Name',
                    hint: 'Enter your name',
                  ),
                  ProfileTextFieldWidget(
                    label: 'Department',
                    hint: 'Enter your department',
                  ),
                  ProfileTextFieldWidget(
                    label: 'Designation',
                    hint: 'Enter your designation',
                  ),
                  ProfileListWidget(
                    iconColor: Colors.red,
                    title: 'Logout',
                    onPress: () {},
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileTextFieldWidget extends StatelessWidget {
  const ProfileTextFieldWidget({
    Key? key,
    required this.label,
    required this.hint,
  }) : super(key: key);

  final String label;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          border: OutlineInputBorder(),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 16.0,
          ),
        ),
      ),
    );
  }
}

class ProfileListWidget extends StatelessWidget {
  const ProfileListWidget({
    Key? key,
    required this.iconColor,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  final Color iconColor;
  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      leading: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: iconColor.withOpacity(0.1),
        ),
        child: Icon(
          Icons.person,
          color: iconColor,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
      onTap: onPress,
    );
  }
}
