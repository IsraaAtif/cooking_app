import 'package:flutter/material.dart';
import 'select_reminder_screen.dart';
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

  //  null 
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

              Row(
                children: List.generate(5, (index) {
                  return Expanded(
                    child: Container(
                      height: 12,
                      margin: EdgeInsets.only(right: index == 4 ? 0 : 6),
                      decoration: BoxDecoration(
                        color: index < 4
                            ? const Color(0xFF33995B)
                            : const Color(0xFFE6E6E6),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  );
                }),
              ),
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

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedServing = option['title'];
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 150),
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              option['title']!,
                              style: const TextStyle(
                                fontFamily: 'DM Sans',
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF1A1A1A),
                                height: 1.2,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              option['subtitle']!,
                              style: TextStyle(
                                fontFamily: 'DM Sans',
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF1A1A1A).withOpacity(0.7),
                                height: 1.4,
                              ),
                            ),
                          ],
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
      builder: (context) => const SelectReminderScreen(),
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