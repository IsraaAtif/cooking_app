import 'package:flutter/material.dart';
import 'select_dislikes_screen.dart';
import '../widgets/primary_button.dart';
import '../widgets/step_progress.dart';

class SelectAllergiesScreen extends StatefulWidget {
  const SelectAllergiesScreen({super.key});

  @override
  State<SelectAllergiesScreen> createState() => _SelectAllergiesScreenState();
}

class _SelectAllergiesScreenState extends State<SelectAllergiesScreen> {
  final List<String> allergies = [
    'Gluten',
    'Tree Nut',
    'Peanut',
    'Mustard',
    'Sesame',
    'Nightshade',
    'Soy',
    'Sulfite',
  ];

  final Set<String> selectedAllergies = {};

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
                icon: const Icon(Icons.arrow_back, color: Color(0xFF1A1A1A), size: 24),
                onPressed: () => Navigator.pop(context),
              ),
              const SizedBox(height: 16),

              const StepProgressIndicator(currentStep: 2),
              const SizedBox(height: 24),

              const Text(
                'Any allergies?',
                style: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1A1A1A),
                  height: 1.2,
                  letterSpacing: -0.5,
                ),
              ),
              const SizedBox(height: 20),

              Expanded(
                child: SingleChildScrollView(
                  child: Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: allergies.map((allergy) {
                      final isSelected = selectedAllergies.contains(allergy);

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isSelected) {
                              selectedAllergies.remove(allergy);
                            } else {
                              selectedAllergies.add(allergy);
                            }
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 150),
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                          decoration: BoxDecoration(
                            color: isSelected ? const Color(0xFFFFE4C2) : Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: isSelected ? const Color(0xFFF58700) : const Color(0xFFCCCCCC),
                              width: 1,
                            ),
                          ),
                          child: Text(
                            allergy,
                            style: const TextStyle(
                              fontFamily: 'DM Sans',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF1A1A1A),
                              height: 1.4,
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
                        builder: (context) => const SelectDislikesScreen(),
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