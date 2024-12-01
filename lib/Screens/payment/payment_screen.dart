import 'package:flutter/material.dart';
import 'package:food_delivery/Widgets/button_container_widgets.dart';
import 'package:food_delivery/Widgets/form_container_widget.dart';
import 'package:food_delivery/theme/style.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: whiteColor,
          centerTitle: true,
          title: const Text(
            "Payment",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Select Payment Method",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  // Expanded(
                  //     child: Container(
                  //   height: 90,
                  //   decoration: BoxDecoration(
                  //       border: Border.all(
                  //     width: 1,
                  //   )),
                  //   child: Center(child: Image.asset("assets/master_card.png")),
                  // )),
                  _paymet(image: "assets/master_card.png"),
                  const SizedBox(
                    width: 10,
                  ),

                  _paymet(image: "assets/visa.png"),
                  const SizedBox(
                    width: 10,
                  ),

                  _paymet(image: "assets/paypal.png"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Card Number",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const FormContainerWidget(
                hintText: "Enter your card number",
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Expiration date",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const FormContainerWidget(
                hintText: "MM/YY/DD",
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Security code",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const FormContainerWidget(
                hintText: "Enter your security code",
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonContainerWidget(
                title: "Order now",
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          backgroundColor: lightGreyColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            width: double.infinity,
                            height: 380,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 30,
                                ),
                                Image.asset("assets/order_successful.png"),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Order has been \n successful.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "You can track the delivery in the\n Order section",
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                ButtonContainerWidget(
                                  title: "Continue Shopping",
                                  width: 200,
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            ),
                          ),
                        );
                      });
                },
              ),
            ],
          ),
        ));
  }

  _paymet({required String image}) {
    return Expanded(
        child: Container(
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Image.asset(image),
    ));
  }
}
