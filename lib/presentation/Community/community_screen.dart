import 'package:flutter/material.dart';
import 'package:mindwell/theme/color.dart';

class CommunityScreen extends StatefulWidget {
  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        iconTheme:
            const IconThemeData(size: 30.0, color: AppColors.primaryFontColor),
        actions: const [],
      ),
      body: Column(
        children: [
          _buildCategoriesRow(),
          Expanded(
            child: ListView(
              children: _buildCommunityCards(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/post-community');
        },
        foregroundColor: AppColors.primaryColor,
        backgroundColor: Color.fromARGB(255, 202, 223, 255),
        tooltip: 'Add',
        child: const Icon(Icons.edit),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _buildCategoriesRow() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildCategoryText('Tranding'),
          _buildCategoryText('News'),
          _buildCategoryText('Random'),
          _buildCategoryText('All'),
        ],
      ),
    );
  }

  Widget _buildCategoryText(String category) {
    return Text(
      category,
      style: const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  List<Map<String, dynamic>> communityData = [
    {
      'image': 'assets/images/main/community/profile_komunitas1.jpg',
      'title': 'Liliyana',
      'description':
          'I feel deeply saddened when I sense that my relationship with my parents might be influenced by my elder brother',
      'category': 'Familiy',
      'loveCount': 10,
      'commentCount': 5,
    },
    {
      'image': 'assets/images/main/community/profile_komunitas2.jpg',
      'title': 'Liliyana',
      'description':
          'I feel deeply saddened when I sense that my relationship with my parents might be influenced by my elder brother',
      'category': 'Self Care',
      'loveCount': 15,
      'commentCount': 8,
    },
    // Action
  ];

  List<Widget> _buildCommunityCards() {
    return communityData.map((data) {
      return _buildCommunityCard(data);
    }).toList();
  }

  Widget _buildCommunityCard(Map<String, dynamic> data) {
    return Card(
      surfaceTintColor: Colors.white,
      color: Colors.white,
      elevation: 1,
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(data['image']),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data['title'],
                        style: const TextStyle(
                          color: AppColors.primaryFontColor,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        data['category'],
                        style: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Text(
              data['description'],
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.0,
                color: AppColors.secondaryFontColor,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.favorite_border_rounded),
                    const SizedBox(width: 4.0),
                    Text(data['loveCount'].toString()),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.insert_comment_outlined),
                    const SizedBox(width: 4.0),
                    Text(data['commentCount'].toString()),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
