import 'package:flutter/material.dart';
import '../widgets/primary_button.dart'; 

class SelectReminderScreen extends StatefulWidget {
  const SelectReminderScreen({super.key});

  @override
  State<SelectReminderScreen> createState() => _SelectReminderScreenState();
}

class _SelectReminderScreenState extends State<SelectReminderScreen> {
  bool isReminderEnabled = true;
  String selectedTime = 'at 10:00 AM';
  String selectedDay = 'on Sundays';

  final List<String> timeOptions = [
    'at 08:00 AM',
    'at 09:00 AM',
    'at 10:00 AM',
    'at 11:00 AM',
    'at 12:00 PM',
  ];

  final List<String> dayOptions = [
    'on Mondays',
    'on Tuesdays',
    'on Wednesdays',
    'on Thursdays',
    'on Fridays',
    'on Saturdays',
    'on Sundays',
  ];

  void _showNotificationPermissionDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        return Dialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.symmetric(horizontal: 52),
          child: Container(
            width: 273,
            decoration: BoxDecoration(
              color: const Color(0xFFF2F2F2).withOpacity(0.80),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                  child: Column(
                    children: const [
                      Text(
                        '"Mealtime" Would Like To Send You Notifications',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF000000),
                          height: 22 / 17,
                          letterSpacing: -0.41,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Notifications may include alerts, sounds, and icon badges. These can be configured in Settings.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF000000),
                          height: 18 / 13,
                          letterSpacing: -0.08,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  height: 0.5,
                  thickness: 0.5,
                  color: Color(0x5C3C3C43),
                ),
                SizedBox(
                  height: 44,
                  child: Row(
                    children: [
                      //  Don't Allow
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(dialogContext);
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(14),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Don’t Allow',
                            style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF007AFF),
                              letterSpacing: -0.41,
                            ),
                          ),
                        ),
                      ),
                      const VerticalDivider(
                        width: 0.5,
                        thickness: 0.5,
                        color: Color(0x5C3C3C43),
                      ),
                      // زر Allow
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(dialogContext);
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(14),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Allow',
                            style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF007AFF),
                              letterSpacing: -0.41,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

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
                        color: const Color(0xFF33995B),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 24),

              const Text(
                'Set a weekly reminder',
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

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Text(
                      'Remind me to make a meal plan',
                      style: TextStyle(
                        fontFamily: 'DM Sans',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF1A1A1A),
                        height: 1.4,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    height: 34,
                    child: Transform.scale(
                      scale: 1.0,
                      child: Switch(
                        value: isReminderEnabled,
                        activeColor: Colors.white,
                        activeTrackColor: const Color(0xFFF58700),
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: const Color(0xFFE6E6E6),
                        trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
                        onChanged: (bool value) {
                          setState(() {
                            isReminderEnabled = value;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: isReminderEnabled ? 1.0 : 0.4,
                child: IgnorePointer(
                  ignoring: !isReminderEnabled,
                  child: Column(
                    children: [
                      Container(
                        height: 57,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: const Color(0xFFE6E6E6),
                            width: 1,
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedTime,
                            isExpanded: true,
                            icon: const Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xFF1A1A1A),
                              size: 24,
                            ),
                            items: timeOptions.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: const TextStyle(
                                    fontFamily: 'DM Sans',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF1A1A1A),
                                    height: 1.4,
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              if (newValue != null) {
                                setState(() {
                                  selectedTime = newValue;
                                });
                              }
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      Container(
                        height: 57,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: const Color(0xFFE6E6E6),
                            width: 1,
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedDay,
                            isExpanded: true,
                            icon: const Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xFF1A1A1A),
                              size: 24,
                            ),
                            items: dayOptions.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: const TextStyle(
                                    fontFamily: 'DM Sans',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF1A1A1A),
                                    height: 1.4,
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              if (newValue != null) {
                                setState(() {
                                  selectedDay = newValue;
                                });
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const Spacer(),

              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: CustomButton(
                  text: 'Done',
                  height: 57,
                  onPressed: () {
                    _showNotificationPermissionDialog(context);
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