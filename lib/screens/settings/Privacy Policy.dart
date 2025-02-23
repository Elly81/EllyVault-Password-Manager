import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          '''
Effective Date: [01/07/2024]

At EllyVault, we prioritize the security and privacy of your sensitive data. This policy outlines our practices regarding the collection, use, storage, and protection of your information when you use our password manager.

Information We Collect

We do not collect or store any of the following:

Your Passwords: EllyVault employs strong encryption techniques to secure your passwords locally on your device. We never transmit or store your passwords on our servers.
Personal Identifiable Information (PII): We do not collect your name, email address, or any other PII.
Usage Data: We do not track or collect data on how you use the EllyVault app.

Data Security

Encryption: Your passwords and other sensitive data are encrypted using industry-standard AES-256 encryption before being stored on your device.
Master Password: Access to your encrypted data is protected by your unique master password, which is never stored or transmitted by EllyVault.
Device Security: The security of your data also depends on the security of your device. We recommend using strong device passcodes and keeping your device software up to date.

Third-Party Services

EllyVault does not share your data with any third-party services.

Changes to this Policy

We may update this privacy policy from time to time. Any changes will be posted on this page with a revised effective date.

          ''',
        ),
      ),
    );
  }
}