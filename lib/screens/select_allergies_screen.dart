import 'package:flutter/material.dart';

import 'select_dislikes_screen.dart';

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

              // زر الرجوع للشاشة الأولى
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                icon: const Icon(Icons.arrow_back, color: Color(0xFF1A1A1A), size: 24),
                onPressed: () => Navigator.pop(context),
              ),
              const SizedBox(height: 16),

             
              Row(
                children: List.generate(5, (index) {
                  return Expanded(
                    child: Container(
                      height: 12,
                      margin: EdgeInsets.only(right: index == 4 ? 0 : 6),
                      decoration: BoxDecoration(
                        color: index < 2 ? const Color(0xFF33995B) : const Color(0xFFE6E6E6),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 24),

              // العنوان الرئيسي
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

              //  Continue 
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 57,
                  child: ElevatedButton(
                    onPressed: () {
                      // الأمر المسؤول عن الانتقال إلى الشاشة الثالثة
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SelectDislikesScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF58700),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        fontFamily: 'DM Sans',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF1A1A1A),
                        height: 1.4,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}