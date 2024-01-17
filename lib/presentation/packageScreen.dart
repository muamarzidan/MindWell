import 'package:flutter/material.dart';

class PackageScreen extends StatefulWidget {
  @override
  _PackageScreenState createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Package Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _PackageCard(
              title: 'Package 1',
              price: 'Rp.200.000',
              details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero.',
              features: [
                _PackageFeature(icon: Icons.star, text: 'Feature 1'),
                _PackageFeature(icon: Icons.favorite, text: 'Feature 2'),
              ],
            ),
            const SizedBox(height: 16),
            _PackageCard(
              title: 'Package 2',
              price: 'Rp.300.000',
              details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero.',
              features: [
                _PackageFeature(icon: Icons.access_time, text: 'Feature 3'),
                _PackageFeature(icon: Icons.done, text: 'Feature 4'),
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
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              height: 2.0,
              color: Colors.grey[300],
            ),
            const SizedBox(height: 8.0),
            Text(
              price,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              details,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: features.map((feature) => _FeatureItem(feature)).toList(),
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

  const _PackageFeature({
    required this.icon,
    required this.text,
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
          color: Colors.blue,
        ),
        const SizedBox(width: 8.0),
        Text(
          feature.text,
          style: const TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}