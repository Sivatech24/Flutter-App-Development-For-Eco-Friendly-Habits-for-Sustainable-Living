import 'package:flutter/material.dart';

void main() {
  runApp(EcoTrackerApp());
}

class EcoTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sustainable Living',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: EcoTrackerHomePage(),
    );
  }
}

class EcoTrackerHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sustainable Living'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text(
              'Daily tips',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:16.0),
            DailyTipcard(
              tipTitle:'Reduce, Reuse, Recycle',
              tipDescription:
                'Remember the mantre:Reduce, Reuse, Recycle.Minimize the waste by using reusable items and rcycling whenever possible.',
            ),
            SizedBox(height: 16.0),
            DailyTipcard(
              tipTitle: 'conserve water',
              tipDescription:
                'turn off the tape while brushing the teeth, fix leaks, and consider installing water sve devices to conserve water.'
            ),
            SizedBox(height: 16.0),
            Text(
              'Articles',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView(
                children: [
                  ArticleCard(
                    articleTitle: 'Top Eco-Friendly product of 2024',
                    articleDescription:
                      'Discover the latest eco-friendly products that can help to more sustainbly',
                  ),
                  ArticleCard(
                    articleTitle: '10 ways to reduce your Carbon Footprint',
                    articleDescription:
                      'Learn esy steps that reduce your carbon footprint and live more sustainbly',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DailyTipcard extends StatelessWidget {
  final String tipTitle;
  final String tipDescription;

  const DailyTipcard({
    Key? key,
    required this.tipTitle,
    required this.tipDescription,
  }):super(key: key);
  @override
  Widget build(BuildContext context){
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tipTitle,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:8.0),
            Text(
              tipDescription,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

class ArticleCard extends StatelessWidget {
  final String articleTitle;
  final String articleDescription;

  const ArticleCard({
    Key? key,
    required this.articleTitle,
    required this.articleDescription,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      elevation: 4.0,
      child: ListTile(
        title: Text(
          articleTitle,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(articleDescription),
        onTap:() {
          // add navigation
        },
      ),
    );
  }
}