import 'package:flutter/material.dart';

class Kaydedilenler extends StatefulWidget {
  const Kaydedilenler({super.key});

  @override
  State<Kaydedilenler> createState() => _KaydedilenlerState();
}

class _KaydedilenlerState extends State<Kaydedilenler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kaydedilen Evler'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return MessageTile(messageIndex: index+1);
        },
      ),
    );
  }
}

class MessageTile extends StatelessWidget {
  final int messageIndex;

  MessageTile({required this.messageIndex});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Öğrenci Evi $messageIndex'),
      subtitle: Text('1+0, 1+1, 2+1 öğrenci evleri'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MessageDetailPage(messageIndex: messageIndex),
          ),
        );
      },
    );
  }
}

class MessageDetailPage extends StatelessWidget {
  final int messageIndex;

  MessageDetailPage({required this.messageIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ev Detayı'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ev Detay Sayfası $messageIndex',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Ev detay bilgileri',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Image.asset("images/house_1_5/h1_full.jpg", width: 200)
          ],
        ),
      ),
    );
  }
}
