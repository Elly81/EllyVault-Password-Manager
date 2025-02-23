import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help & Support'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Frequently Asked Questions (FAQs)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ExpansionTile(
              leading: Icon(Icons.question_answer),
              title: Text('How do I create an account?'),
              children: <Widget>[
                ListTile(
                  title: Text(
                    'To create an account, tap on the "Sign Up" button on the welcome screen. You will be prompted to enter your email address and create a strong master password. Remember, this master password is the key to accessing all your stored passwords, so keep it safe and don\'t share it with anyone.',
                  ),
                ),
              ],
            ),
            ExpansionTile(
              leading: Icon(Icons.lock),
              title: Text('I forgot my master password, what do I do?'),
              children: <Widget>[
                ListTile(
                  title: Text(
                    'Unfortunately, if you forget your master password, there is no way to recover your account or access your stored passwords. EllyVault prioritizes security and does not store your master password in any recoverable form. We recommend writing down your master password and storing it in a secure location, separate from your device.',
                  ),
                ),
              ],
            ),
            ExpansionTile(
              leading: Icon(Icons.security),
              title: Text('How secure is EllyVault?'),
              children: <Widget>[
                ListTile(
                  title: Text(
                    'EllyVault uses strong encryption algorithms to protect your passwords. Your master password is never transmitted or stored on our servers. All data is encrypted locally on your device before being synced, ensuring that only you can access your passwords.',
                  ),
                ),
              ],
            ),
            // Add more FAQs as needed
          ],
        ),
      ),
    );
  }
}