import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthErrorPopup extends StatefulWidget {
  final String errorMessage; // Message from the server
  final VoidCallback onReturn; // Callback for the return button

  const AuthErrorPopup({
    super.key,
    required this.errorMessage,
    required this.onReturn,
  });

  @override
  AuthErrorPopupState createState() =>
      AuthErrorPopupState(); // Remove the leading underscore
}

class AuthErrorPopupState
    extends State<AuthErrorPopup> // Make the class name public
    with
        SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize AnimationController
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    // Define the shake animation
    _animation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0.0, end: 10.0), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 10.0, end: -10.0), weight: 1),
      TweenSequenceItem(tween: Tween(begin: -10.0, end: 5.0), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 5.0, end: 0.0), weight: 1),
    ]).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(_animation.value, 0), // Horizontal shake
          child: Dialog(
            backgroundColor: const Color(0xFF181818), // Background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r), // Border radius
            ),
            child: Padding(
              padding: EdgeInsets.all(20.w), // Internal padding
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Error message text
                  Text(
                    widget.errorMessage,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp, // Font size
                      fontWeight: FontWeight.w400, // Font weight
                      color: Colors.white, // Text color
                    ),
                  ),
                  SizedBox(height: 20.h), // Spacing between text and button

                  // Return button
                  ElevatedButton(
                    onPressed: widget.onReturn, // Callback for return button
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color(0xFF9747FF), // Button background color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10.r), // Border radius
                      ),
                      minimumSize:
                          Size(double.infinity, 50.h), // Full-width button
                    ),
                    child: Text(
                      'Return', // Button text
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.sp, // Font size
                        fontWeight: FontWeight.w400, // Font weight
                        color: Colors.white, // Text color
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
