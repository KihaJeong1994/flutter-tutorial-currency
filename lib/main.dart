import 'package:flutter/material.dart';
import 'package:toonflix/widgets/Button.dart';

import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818), // use custom color
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20, // add horizontal, or vertival padding
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(
                              height: 80,
                            ),
                            const Text(
                              'Hey, Selena',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              'Welcome back',
                              style: TextStyle(
                                color: Colors.white
                                    .withOpacity(0.8), // 1: whilte 0: black
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '\$ 5 194 382',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Button(
                        text: 'Transfer',
                        textColor: Colors.black,
                        bgColor: Colors.amber,
                      ),
                      Button(
                        text: 'Request',
                        textColor: Colors.white,
                        bgColor: Color.fromARGB(255, 56, 55, 52),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Wallets',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CurrencyCard(
                    name: 'Euro',
                    amount: '6 428',
                    code: 'EUR',
                    icon: Icons.euro,
                    isInverted: false,
                    order: 0,
                  ),
                  const CurrencyCard(
                    name: 'Bitcoin',
                    amount: '9 445',
                    code: 'BRC',
                    icon: Icons.currency_bitcoin,
                    isInverted: true,
                    order: 1,
                  ),
                  const CurrencyCard(
                    name: 'Dollor',
                    amount: '7 931',
                    code: 'USD',
                    icon: Icons.attach_money,
                    isInverted: false,
                    order: 2,
                  ),
                  const CurrencyCard(
                    name: 'Franc',
                    amount: '1 007',
                    code: 'FRC',
                    icon: Icons.currency_franc,
                    isInverted: true,
                    order: 3,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
