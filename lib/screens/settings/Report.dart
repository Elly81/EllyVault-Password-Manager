import 'package:flutter/material.dart';

class ReportIssuePage extends StatefulWidget {
  const ReportIssuePage({super.key});

  @override
  State<ReportIssuePage> createState() => _ReportIssuePageState();
}

class _ReportIssuePageState extends State<ReportIssuePage> {
  final _formKey = GlobalKey<FormState>();
  final _issueTypeController = TextEditingController();
  final _issueDescriptionController = TextEditingController();

  @override
  void dispose() {
    _issueTypeController.dispose();
    _issueDescriptionController.dispose();
    super.dispose();
  }

  void _submitReport() {
    if (_formKey.currentState!.validate()) {
      // TODO: Send report data to your backend or issue tracking system.
      // You can use a package like `http` to make network requests.
      // For example:
      // final response = await http.post(
      //   Uri.parse('https://your-api-endpoint/reports'),
      //   body: {
      //     'issueType': _issueTypeController.text,
      //     'description': _issueDescriptionController.text,
      //   },
      // );
      // if (response.statusCode == 200) {
      //   // Report submitted successfully
      // } else {
      //   // Handle error
      // }

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Report submitted')),
      );
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report an Issue'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _issueTypeController,
                decoration: const InputDecoration(
                  hintText: 'Issue Type (e.g., Bug, Feature Request)',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the issue type';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _issueDescriptionController,
                maxLines: 5,
                decoration: const InputDecoration(
                  hintText: 'Describe the issue in detail',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please provide a description of the issue';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _submitReport,
                child: const Text('Submit Report'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}