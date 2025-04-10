import 'package:flutter/material.dart';


class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Chat UI')),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                  MessageBubble(
                    text: 'Nali tejenjim',
                    isSender: false, // Сообщение от получателя
                  ),
                  MessageBubble(
                    text: 'Erbet men burnum uly',
                    isSender: true, // Сообщение от отправителя
                  ),
                  MessageBubble(text: 
                  'Burnuna name boldy dos', isSender: false),
                  MessageBubble(text: 'Ay ysyrganyp bir desige sokdum olam cisdi', isSender: true),
                  MessageBubble(text: 'Ay borlo kartoska burun alada etmesene sen men akmak dostum', isSender: false),
                  MessageBubble(text: 'Garas sen bir burnuma at dakar yaly ederin seni entek nejis akyllysy', isSender: true),
                  MessageBubble(text: 'Onun yaly oyunlaryny massa et barda bolyamy akylly diysani', isSender: true)
                ],
              ),
            ),
            SizedBox(
              height:10,
            ),
            Row(children: [
              // Icon()
            ],)
          ],
        ),
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String text;
  final bool isSender;

  MessageBubble({required this.text, required this.isSender});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4.0),
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: isSender ? Colors.green[300] : Colors.grey[300],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSender ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}