import 'package:flutter/material.dart';

import 'package:mindwell/theme/color.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget _cardList(String imagePath, String title, String description) {
    return Container(
      width: 200,
      height: 200,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 160, 160, 160).withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              width: 180,
              height: 120,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: AppColors.secondaryColor,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.descriptionColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _wideCardList(String imagePath, String title, String description) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.secondaryColor,
              ),
            ),
            const SizedBox(height: 5),
            RichText(
              text: TextSpan(
                text: description,
                style: const TextStyle(
                  fontSize: 14,
                  color: AppColors.descriptionColor,
                ),
                children: const [
                  TextSpan(
                    text: ' Read More',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.primaryColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20.0,
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromARGB(93, 125, 177, 255),
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromARGB(93, 125, 177, 255),
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  hintText: 'Search Psychologist',
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: AppColors.backgroundComponentColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 75,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/main/home/brain.png',
                            width: 30,
                            height: 30,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Check your mental health',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'By doing this test you will know the current state of your mental',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.descriptionColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 25,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/main-testMentalHealth',
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: const Text(
                          'Start',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Recommendations for you',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: AppColors.secondaryColor,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Action
                          },
                          child: const Text(
                            'See More',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.fromLTRB(5, 10, 0, 10),
                      child: Row(
                        children: [
                          _cardList(
                            'assets/images/main/recommendation/comfort.png',
                            'Burn Out',
                            'Helps reduce stress ',
                          ),
                          _cardList(
                            'assets/images/main/recommendation/comfort.png',
                            'Happiness',
                            'Increase affection',
                          ),
                          _cardList(
                            'assets/images/main/recommendation/comfort.png',
                            'Comfortable home',
                            'Home Increases happiness',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Articles You Need',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: AppColors.secondaryColor,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Action
                          },
                          child: const Text(
                            'See More',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    _wideCardList(
                      'assets/images/main/home/article-1.png',
                      'Practical Strategies for Dealing with Everyday Stress',
                      'Stress is an inevitable part of life, and finding effective ways to cope with it is crucial for our overall well-being. . .',
                    ),
                    const SizedBox(height: 5),
                    _wideCardList(
                      'assets/images/main/home/article-2.png',
                      'Recognizing the Signs and Overcoming Anxiety',
                      'Anxiety is a common and natural response to stress, but when it becomes overwhelming and persistent, it can interfere with. . .',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// const SizedBox(height: 20),
//             Container(
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(5.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         const Text(
//                           'Meditation',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal,
//                             color: AppColors.secondaryColor,
//                           ),
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             // Action
//                           },
//                           child: const Text(
//                             'See More',
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: AppColors.primaryColor,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 5),
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       padding: const EdgeInsets.fromLTRB(5, 10, 0, 10),
//                       child: Row(
//                         children: [
//                           _cardList(
//                             'assets/images/main/recommendation/comfort.png',
//                             'Everything has limit',
//                             'Helps reduce stress',
//                           ),
//                           _cardList(
//                             'assets/images/main/recommendation/comfort.png',
//                             'Happiness',
//                             'Increase affection',
//                           ),
//                           _cardList(
//                             'assets/images/main/recommendation/comfort.png',
//                             'Konsentrasi',
//                             'Provide support for mental',
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             Container(
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(5.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         const Text(
//                           'Meditation',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal,
//                             color: AppColors.secondaryColor,
//                           ),
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             // Action
//                           },
//                           child: const Text(
//                             'See More',
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: AppColors.primaryColor,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 5),
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       padding: const EdgeInsets.fromLTRB(5, 10, 0, 10),
//                       child: Row(
//                         children: [
//                           _cardList(
//                             'assets/images/main/recommendation/comfort.png',
//                             'Everything has limit',
//                             'Helps reduce stress',
//                           ),
//                           _cardList(
//                             'assets/images/main/recommendation/comfort.png',
//                             'Happiness',
//                             'Increase affection',
//                           ),
//                           _cardList(
//                             'assets/images/main/recommendation/comfort.png',
//                             'Konsentrasi',
//                             'Provide support for mental',
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),