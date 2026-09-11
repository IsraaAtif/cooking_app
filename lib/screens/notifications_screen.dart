import 'package:flutter/material.dart';
import '../widgets/primary_button.dart'; 

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  bool isReminderEnabled = true;
  String selectedTime = 'at 10:00 am';
  String selectedDay = 'on Sundays';

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
              color: const Color(0xFFF2F2F2).withValues(alpha: 0.80),
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
                      // زر Don't Allow (يغلق النافذة فقط)
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(dialogContext); 
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: const Size(104.5, 44),
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

                      
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(dialogContext); 
                            
                            // Navigator.pop(context);
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: const Size(104.5, 44),
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Set a weekly reminder',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 32),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Remind me to make a meal plan',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                  Switch(
                    value: isReminderEnabled,
                    activeColor: const Color(0xFFE07A5F),
                    onChanged: (value) {
                      setState(() {
                        isReminderEnabled = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F7F7),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedTime,
                    isExpanded: true,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: <String>['at 10:00 am', 'at 02:00 pm', 'at 08:00 pm']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: isReminderEnabled
                        ? (newValue) {
                            setState(() {
                              selectedTime = newValue!;
                            });
                          }
                        : null,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F7F7),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedDay,
                    isExpanded: true,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: <String>['on Sundays', 'on Mondays', 'on Fridays']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: isReminderEnabled
                        ? (newValue) {
                            setState(() {
                              selectedDay = newValue!;
                            });
                          }
                        : null,
                  ),
                ),
              ),

              const Spacer(),

              CustomButton(
                text: 'Done',
                height: 52,
                onPressed: () {
                  
                  _showNotificationPermissionDialog(context);
                },
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}