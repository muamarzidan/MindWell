import 'package:flutter/material.dart';
import 'package:mindwell/theme/color.dart';

class PackageScreen extends StatefulWidget {
  @override
  _PackageScreenState createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        iconTheme:
            const IconThemeData(size: 30.0, color: AppColors.primaryFontColor),
        actions: const [],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _PackageCard(
              title: 'Discovery Package',
              price: 'Rp.200.000',
              details:
                  'This package is suitable for those who want to gain an initial understanding of their mental health.',
              features: [
                _PackageFeature(
                    icon: Icons.check_circle,
                    text: '2 individual consultation sessions (60 minutes)'),
                _PackageFeature(
                    icon: Icons.check_circle,
                    text: 'Initial mental health evaluation'),
                _PackageFeature(
                    icon: Icons.check_circle, text: 'Simple action plan'),
              ],
            ),
            SizedBox(height: 16),
            _PackageCard(
              title: 'Empowerment Package',
              price: 'Rp.400.000',
              details:
                  'This package is suitable for those who want to gain an initial understanding of their mental health.',
              features: [
                _PackageFeature(
                    icon: Icons.check_circle,
                    text:
                        '5 individual consultation sessions (1 session 60 minutes)'),
                _PackageFeature(
                    icon: Icons.check_circle,
                    text: 'Initial mental health evaluation'),
                _PackageFeature(
                    icon: Icons.check_circle, text: 'Simple action plan'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _PackageCard extends StatelessWidget {
  final String title;
  final String price;
  final String details;
  final List<_PackageFeature> features;

  const _PackageCard({
    required this.title,
    required this.price,
    required this.details,
    required this.features,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      surfaceTintColor: Colors.white,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: BorderSide(
          width: 1,
          color: Colors.yellow.shade700,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 2.0,
              color: Colors.grey[300],
            ),
            const SizedBox(height: 10),
            Text(
              price,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              details,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 15),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children:
                  features.map((feature) => _FeatureItem(feature)).toList(),
            ),
            const SizedBox(height: 10.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      width: 2,
                      color: Color.fromARGB(255, 3, 142, 255),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 13),
                ),
                child: const Text(
                  'Buy Package',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PackageFeature {
  final IconData icon;
  final String text;
  final Color iconColor; 

  const _PackageFeature({
    required this.icon,
    required this.text,
    this.iconColor = Colors.green,
  });
}

class _FeatureItem extends StatelessWidget {
  final _PackageFeature feature;

  const _FeatureItem(this.feature);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          feature.icon,
          color: feature.iconColor,
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: Text(
            feature.text,
            style: const TextStyle(fontSize: 14.0),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
