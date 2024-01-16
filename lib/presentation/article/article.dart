import 'package:flutter/material.dart';
import 'package:mindwell/theme/color.dart';

class ArticleScreen extends StatefulWidget {
  @override
  _ArticleScreenState createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  Widget _ArticleCardList(String imagePath, String title, String description,
      BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ArticleScreen()));
      },
      child: Container(
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
                height: 130,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryFontColor,
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        iconTheme:
            const IconThemeData(size: 30.0, color: AppColors.primaryFontColor),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 0),
                _ArticleCardList(
                  'assets/images/main/home/article-1.png',
                  'Practical Strategies for Dealing with Everyday Stress',
                  'Stress is an inevitable part of life, and finding effective ways to cope with it is crucial for our overall well-being. . .',
                  context,
                ),
                const SizedBox(height: 5),
                _ArticleCardList(
                  'assets/images/main/home/article-2.png',
                  'Recognizing the Signs and Overcoming Anxiety',
                  'Anxiety is a common and natural response to stress, but when it becomes overwhelming and persistent, it can interfere with. . .',
                  context,
                ),
                const SizedBox(height: 5),
                _ArticleCardList(
                  'assets/images/main/home/article-3.png',
                  'The Importance of Self-Care in Improving Your Mental Health',
                  'In the fast-paced world we live in, taking care of our mental health is essential for overall well-being. . .',
                  context,
                ),
                const SizedBox(height: 5),
                _ArticleCardList(
                  'assets/images/main/home/article-4.png',
                  'Overcoming Workplace Burnout: Tips and Tricks',
                  'In the demanding landscape of the modern workplace, burnout has become an all-too-common. . .',
                  context,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
