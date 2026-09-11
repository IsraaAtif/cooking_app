import 'package:flutter/material.dart';
import 'select_servings_screen.dart';
import '../widgets/primary_button.dart';
import '../widgets/step_progress.dart';

class SelectDislikesScreen extends StatefulWidget {
  const SelectDislikesScreen({super.key});

  @override
  State<SelectDislikesScreen> createState() => _SelectDislikesScreenState();
}

class _SelectDislikesScreenState extends State<SelectDislikesScreen> {
  final List<String> dislikesList = [
    'Avocado',
    'Beets',
    'Bell Peppers',
    'Brussels Sprouts',
    'Cauliflower',
    'Eggplant',
    'Mushrooms',
    'Olives',
    'Quinoa',
    'Tofu',
    'Turnips',
  ];

  final Set<String> selectedDislikes = {};

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

              const StepProgressIndicator(currentStep: 3),
              const SizedBox(height: 24),

              const Text(
                'How about dislikes?',
                style: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1A1A1A),
                  height: 1.2,
                  letterSpacing: -0.5,
                ),
              ),
              const SizedBox(height: 24),

              Expanded(
                child: SingleChildScrollView(
                  child: Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: dislikesList.map((item) {
                      final isSelected = selectedDislikes.contains(item);
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isSelected) {
                              selectedDislikes.remove(item);
                            } else {
                              selectedDislikes.add(item);
                            }
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 150),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 14,
                          ),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? const Color(0xFFFFE4C2)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: isSelected
                                  ? const Color(0xFFF58700)
                                  : const Color(0xFFE6E6E6),
                              width: 1,
                            ),
                          ),
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontFamily: 'DM Sans',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF1A1A1A),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
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
                        builder: (context) => const SelectServingsScreen(),
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