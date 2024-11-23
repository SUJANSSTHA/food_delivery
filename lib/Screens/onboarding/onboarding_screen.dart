import 'package:flutter/material.dart';
import 'package:food_delivery/theme/style.dart';
import '../../Widgets/button_container_widgets.dart';
import '../auth/login_page.dart';
import 'onboarding_entity.dart';

class OnBoardingscreen extends StatefulWidget {
  const OnBoardingscreen({super.key});

  @override
  State<OnBoardingscreen> createState() => _OnBoardingscreenState();
}

class _OnBoardingscreenState extends State<OnBoardingscreen> {
  List<OnboardingEntity> onBordingData = OnboardingEntity.onBordingData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: onBordingData.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 70),
              child: Column(
                children: [
                  // onBordingData
                  Image.asset("assets/word_app_logo.png"),
                  const SizedBox(
                    height: 60,
                  ),
                  Image.asset("assets/${onBordingData[index].image}"),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "${onBordingData[index].title}",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "${onBordingData[index].description}",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: index == 0 ? primaryColorED6E1B : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: index == 1 ? primaryColorED6E1B : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: index == 2 ? primaryColorED6E1B : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  index == 2
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: ButtonContainerWidget(
                            title: "Get Started",
                            hasIcon: true,
                            icon: Icons.arrow_forward_ios,
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()),
                                (route) => false,
                              );
                            },
                          ),
                        )
                      : Container()
                ],
              ),
            );
          }),
    );
  }
}
