import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/app_nav_drawer.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  void _handleSend() {
    if (_formKey.currentState!.validate()) {
      // No backend for this lab — just confirm submission to the user.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Message sent! We\'ll get back to you soon.')),
      );
      _formKey.currentState!.reset();
      _nameController.clear();
      _emailController.clear();
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact Us')),
      drawer: const AppNavDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Get in Touch', style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: 6),
                const Text(
                  'Questions, feedback, or just want to say hi? Send us a message.',
                  style: TextStyle(color: AppColors.muted, fontSize: 14),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Name', hintText: 'Your name'),
                  validator: (v) => (v == null || v.trim().isEmpty) ? 'Name is required' : null,
                ),
                const SizedBox(height: 14),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(labelText: 'Email', hintText: 'you@example.com'),
                  validator: (v) => (v == null || v.trim().isEmpty) ? 'Email is required' : null,
                ),
                const SizedBox(height: 14),
                TextFormField(
                  controller: _messageController,
                  maxLines: 4,
                  decoration: const InputDecoration(labelText: 'Message', hintText: 'Write your message here'),
                  validator: (v) => (v == null || v.trim().isEmpty) ? 'Message is required' : null,
                ),
                const SizedBox(height: 20),
                ElevatedButton(onPressed: _handleSend, child: const Text('Send')),
                const SizedBox(height: 28),
                const Divider(),
                const SizedBox(height: 12),
                Text('Or reach us directly', style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 10),
                const _ContactLine(icon: Icons.email_outlined, text: 'team@example.com'),
                const SizedBox(height: 6),
                const _ContactLine(icon: Icons.language_outlined, text: 'github.com/your-team'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ContactLine extends StatelessWidget {
  final IconData icon;
  final String text;

  const _ContactLine({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: AppColors.primary),
        const SizedBox(width: 8),
        Text(text, style: const TextStyle(color: AppColors.ink, fontSize: 14)),
      ],
    );
  }
}
