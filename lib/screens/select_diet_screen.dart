import 'package:flutter/material.dart';
import 'select_allergies_screen.dart';

class SelectDietScreen extends StatefulWidget {
  const SelectDietScreen({super.key});

  @override
  State<SelectDietScreen> createState() => _SelectDietScreenState();
}

class _SelectDietScreenState extends State<SelectDietScreen> {
  final List<String> diets = [
    'Classic',
    'Low Carb',
    'Keto',
    'Flexitarian',
    'Paleo',
    'Vegetarian',
    'Pescatarian',
    'Vegan',
  ];

  
  final Set<String> selectedDiets = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0),
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
              
              Row(
                children: List.generate(5, (index) {
                  return Expanded(
                    child: Container(
                      height: 12,
                      margin: EdgeInsets.only(right: index == 4 ? 0 : 6),
                      decoration: BoxDecoration(
                        color: index < 1 ? const Color(0xFF33995B) : const Color(0xFFE6E6E6),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 24),
              const Text(
                'Pick your diet',
                style: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1A1A1A),
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.separated(
                  itemCount: diets.length,
                  separatorBuilder: (context, index) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final diet = diets[index];
                    final isSelected = selectedDiets.contains(diet);

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isSelected) {
                            selectedDiets.remove(diet);
                          } else {
                            selectedDiets.add(diet);
                          }
                        });
                      },
                      child: Container(
                        width: double.infinity,
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
                          diet,
                          style: const TextStyle(
                            fontFamily: 'DM Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF1A1A1A),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 57,
                  child: ElevatedButton(
                    onPressed: () {
                      
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SelectAllergiesScreen(),
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