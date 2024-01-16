import 'package:flutter/material.dart';
import 'package:mindwell/theme/color.dart';

class ArticleDetailScreen extends StatefulWidget {
  @override
  _ArticleDetailScreenState createState() => _ArticleDetailScreenState();
}

class _ArticleDetailScreenState extends State<ArticleDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(size: 30.0, color: AppColors.primaryFontColor),
        actions: const [
          
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'The Importance of Self-Care in Improving Your Mental Health',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Image.asset(
            'assets/images/main/article/article-1.png',
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          const Text(
            'Stress is an inevitable part of life, and finding effective ways to cope with it is crucial for our overall well-being. Everyday stressors, whether they come from work, relationships, or daily responsibilities, can take a toll on our mental health. However, implementing practical strategies can help us navigate and manage these challenges more effectively.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16.0,
              color: AppColors.secondaryFontColor,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            '1. Mindful Breathing:',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryFontColor,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'One of the simplest yet powerful strategies for dealing with stress is mindful breathing. Taking a few minutes each day to focus on your breath can help calm the mind and reduce tension. Practice deep, slow breaths, inhaling through the nose and exhaling through the mouth, to promote relaxation.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16.0,
              color: AppColors.secondaryFontColor,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            '2. ime Management:',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryFontColor,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'Effective time management can significantly reduce stress. Prioritize tasks, create a to-do list, and break larger projects into smaller, more manageable steps. By organizing your time, you gain a sense of control and accomplishment, mitigating the feeling of being overwhelmed.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16.0,
              color: AppColors.secondaryFontColor,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            '3. Regular Physical Activity:',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryFontColor,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'Effective time management can significantly reduce stress. Prioritize tasks, create a to-do list, and break larger projects into smaller, more manageable steps. By organizing your time, you gain a sense of control and accomplishment, mitigating the feeling of being overwhelmed.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16.0,
              color: AppColors.secondaryFontColor,
            ),
          ),
        ],
      ),
      ),
    );
  }
}