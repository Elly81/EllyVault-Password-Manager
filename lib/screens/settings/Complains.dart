import 'package:flutter/material.dart';

class ComplainsPage extends StatefulWidget {
  const ComplainsPage({super.key});

  @override
  State<ComplainsPage> createState() => _ComplainsPageState();
}

class _ComplainsPageState extends State<ComplainsPage> {
  final _formKey = GlobalKey<FormState>();
  final _complaintController = TextEditingController();

  @override
  void dispose() {
    _complaintController.dispose();
    super.dispose();
  }

  void _submitComplaint() {
    if (_formKey.currentState!.validate()) {
      // TODO: Send complaint data to your backend or support system.
      // You can use a package like `http` to make network requests.
      // For example:
      // final response = await http.post(
      //   Uri.parse('https://your-api-endpoint/complaints'),
      //   body: {'complaint': _complaintController.text},
      // );
      // if (response.statusCode == 200) {
      //   // Complaint submitted successfully
      // } else {
      //   // Handle error
      // }

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Complaint submitted')),
      );
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Submit a Complaint'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _complaintController,
                maxLines: 5,
                decoration: const InputDecoration(
                  hintText: 'Describe your issue in detail',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your complaint';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _submitComplaint,
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}