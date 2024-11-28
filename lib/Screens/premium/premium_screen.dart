import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/main/main_screen.dart';
import 'package:food_delivery/Widgets/button_container_widgets.dart';
import 'package:food_delivery/theme/style.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Image.asset("assets/word_app_logo.png"),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "The best of your\n neighbourhood, \n delivery for less",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          _singlePremiumItemWidget(
            title: "Save an average of \$4 to 5 per order.",
            icon: const Icon(
              Icons.food_bank,
              color: primaryColorED6E1B,
              size: 30,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          _singlePremiumItemWidget(
            title:
                "Look for  Food Prime logo to find \n 1K eligible restaurants.",
            icon: const Icon(
              Icons.restaurant,
              color: primaryColorED6E1B,
              size: 30,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          _singlePremiumItemWidget(
            title:
                "Enjoy Zero delivery fees and reduced \n service fee on order \$12",
            icon: const Icon(
              Icons.shopping_cart,
              color: primaryColorED6E1B,
              size: 30,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          _singlePremiumItemWidget(
            title:
                "Free 1 month trial  \$9.99 monthly \n after easily cancel anytime",
            icon: const Icon(
              Icons.calendar_today,
              color: primaryColorED6E1B,
              size: 30,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 30,
          ),
          const ButtonContainerWidget(
            title: "Try FoodPrime free for 1 month",
          ),
           const SizedBox(height: 20,),
         Center(
              child: GestureDetector(onTap: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => const MainScreen()), (route) => false);
              },child: const Text("Skip", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),)),
            ),
            const SizedBox(height: 30,),
            RichText(
              
              text: const  TextSpan(
                text: "By tappping the button, I aggree to the ", style: TextStyle(color: Colors.black,),children: [
                  TextSpan(text:"Tearms", style: TextStyle(color: primaryColorED6E1B,),),
                  TextSpan(text:"and an automatic monthly charge of \$9.99 until I ", style: TextStyle(color: Colors.black,),),
                  TextSpan(text:"cancel.", style: TextStyle(color: primaryColorED6E1B,),),
                  TextSpan(text:"Cancel in account prior to any renewal to avoid charges.", style: TextStyle(color: Colors.black,),),
                ]
              )),
        ],
      ),
    ));
  }

  _singlePremiumItemWidget({Widget? icon, String? title}) {
    return Row(
      children: [
        icon!,
        const SizedBox(
          width: 10,
        ),
        Text(
          "$title",
          style: const TextStyle(fontSize: 14),
        ),
       
      ],
    );
  }
}
