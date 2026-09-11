import 'package:flutter/material.dart';
import 'select_reminder_screen.dart';
import '../widgets/primary_button.dart';
import '../widgets/step_progress.dart';
import '../widgets/option_card.dart';

class SelectServingsScreen extends StatefulWidget {
  const SelectServingsScreen({super.key});

  @override
  State<SelectServingsScreen> createState() => _SelectServingsScreenState();
}

class _SelectServingsScreenState extends State<SelectServingsScreen> {
  final List<Map<String, String>> servingsOptions = [
    {
      'title': '2 servings',
      'subtitle': 'for two, or one with leftovers',
    },
    {
      'title': '4 servings',
      'subtitle': 'for four, or two-three with leftovers',
    },
    {
      'title': '6 servings',
      'subtitle': 'for a family of 5+',
    },
  ];

  String? selectedServing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),

              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                icon: const Icon(
                  Icons.arrow_back,
                  color: Color(0xFF1A1A1A),
                  size: 24,
                ),
                onPressed: () => Navigator.pop(context),
              ),
              const SizedBox(height: 16),

              const StepProgressIndicator(currentStep: 4),
              const SizedBox(height: 24),

              const Text(
                'How many servings per meal?',
                style: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1A1A1A),
                  height: 1.2,
                  letterSpacing: -0.5,
                ),
              ),
              const SizedBox(height: 32),

              Expanded(
                child: ListView.separated(
                  itemCount: servingsOptions.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 14),
                  itemBuilder: (context, index) {
                    final option = servingsOptions[index];
                    final isSelected = selectedServing == option['title'];

                    return SelectableOptionCard(
                      title: option['title']!,
                      subtitle: option['subtitle'],
                      isSelected: isSelected,
                      onTap: () {
                        setState(() {
                          selectedServing = option['title'];
                        });
                      },
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: CustomButton(
                  text: 'Continue',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectReminderScreen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}