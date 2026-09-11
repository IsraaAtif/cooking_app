import 'package:flutter/material.dart';

class MealPlanScreen extends StatefulWidget {
  const MealPlanScreen({super.key});

  @override
  State<MealPlanScreen> createState() => _MealPlanScreenState();
}

class _MealPlanScreenState extends State<MealPlanScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    ' Your personalized meal plan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1A1A1A),
                      height: 1.2,
                      letterSpacing: -1.6,
                    ),
                  ),

                  const SizedBox(height: 12),
                  const SizedBox(
                    width: 325,
                    child: Text(
                      'Plan your meals for the entire week in minutes. Build your first meal plan to get started!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'DM Sans',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF666666),
                        height: 1.4,
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),
                  SizedBox(
                    width: 344,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF58700),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 24,
                        ),
                      ),
                      child: const Text(
                        'Build Your First Meal Plan',
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
                ],
              ),
            ),

            const Spacer(),
            Container(
              height: 86,
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    color: Color(0xFFE6E6E6),
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildImageNavItem(
                    index: 0,
                    imagePath: 'assets/images/Vector.png',
                    label: 'MealPlan',
                    width: 54,
                    iconWidth: 24,
                    iconHeight: 24,
                  ),
                  _buildImageNavItem(
                    index: 1,
                    imagePath: 'assets/images/Vector2x.png',
                    label: 'Groceries',
                    width: 56,
                    iconWidth: 24,
                    iconHeight: 24,
                  ),
                  _buildIconNavItem(
                    index: 2,
                    icon: Icons.favorite_border_rounded,
                    label: 'Favorites',
                    width: 52,
                    iconWidth: 24,
                    iconHeight: 24,
                  ),
                  _buildIconNavItem(
                    index: 3,
                    icon: Icons.settings_outlined,
                    label: 'Settings',
                    width: 47,
                    iconWidth: 24,
                    iconHeight: 24,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildImageNavItem({
    required int index,
    required String imagePath,
    required String label,
    required double width,
    required double iconWidth,
    required double iconHeight,
  }) {
    final bool isSelected = _selectedIndex == index;
    final Color color = isSelected ? const Color(0xFFF58700) : const Color(0xFF999999);

    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: SizedBox(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: iconWidth,
              height: iconHeight,
              child: FittedBox(
                fit: BoxFit.contain,
                child: ImageIcon(
                  AssetImage(imagePath),
                  color: color,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontFamily: 'DM Sans',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: color,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildIconNavItem({
    required int index,
    required IconData icon,
    required String label,
    required double width,
    required double iconWidth,
    required double iconHeight,
  }) {
    final bool isSelected = _selectedIndex == index;
    final Color color = isSelected ? const Color(0xFFF58700) : const Color(0xFF999999);

    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: SizedBox(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: iconWidth,
              height: iconHeight,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Icon(
                  icon,
                  color: color,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontFamily: 'DM Sans',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: color,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}