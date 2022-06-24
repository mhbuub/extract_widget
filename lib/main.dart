import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Extract Widget"),
        ),
        body: ListView(
          children: [
            ChatItem(
              imageUrl: "https://picsum.photos/id/1/200/300",
              title: faker.person.name(),
              subtitle: "This is text",
            ),
            ChatItem(
              imageUrl: "https://picsum.photos/id/2/200/300",
              title: faker.person.name(),
              subtitle: "This is text",
            ),
            ChatItem(
              imageUrl: "https://picsum.photos/id/3/200/300",
              title: faker.person.name(),
              subtitle: "This is text",
            ),
            ChatItem(
              imageUrl: "https://picsum.photos/id/4/200/300",
              title: faker.person.name(),
              subtitle: "This is text",
            ),
          ],
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ChatItem(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text("09.07"),
    );
  }
}
