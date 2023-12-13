import 'package:flutter/material.dart';

class Mesajlar extends StatefulWidget {
  const Mesajlar({super.key});

  @override
  State<Mesajlar> createState() => _MesajlarState();
}

class _MesajlarState extends State<Mesajlar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kiralama Mesajları'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return MessageTile(messageIndex: index);
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
      title: Text('Ev Kiralama Talebi $messageIndex'),
      subtitle: Text('Merhaba, evi kiralayabilir miyim?'),
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
        title: Text('Mesaj Detayı'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ev Kiralama Talebi $messageIndex',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Merhaba, evi kiralayabilir miyim? Bu detay sayfası, kiralama talebinin detaylarını içermektedir.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
