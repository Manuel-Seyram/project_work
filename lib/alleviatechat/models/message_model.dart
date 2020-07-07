import 'package:project_work/alleviatechat/models/user_model.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/greg.jpg',
);

// USERS
final User ug = User(
  id: 1,
  name: 'UG career and counselling',
  imageUrl: 'assets/images/greg.jpg',
);
final User drjames = User(
  id: 2,
  name: 'Dr. James',
  imageUrl: 'assets/images/james.jpg',
);
final User drjohn = User(
  id: 3,
  name: 'Dr. John',
  imageUrl: 'assets/images/john.jpg',
);
final User drolivia = User(
  id: 4,
  name: 'Dr. Olivia',
  imageUrl: 'assets/images/olivia.jpg',
);


// FAVORITE CONTACTS
List<User> favorites = [drolivia, drjohn, ug];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: drjames,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you want to talk about?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: drolivia,
    time: '4:30 PM',
    text: 'Okay',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: drjohn,
    time: '3:30 PM',
    text: 'Today',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: ug,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you want to talk about?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: drjames,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: drjames,
    time: '3:45 PM',
    text: 'Wow that is good progress.',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: drjames,
    time: '3:15 PM',
    text: 'You should come to my office for an appointment again.',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'I will try to be there doctor. what day?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: drjames,
    time: '2:00 PM',
    text: 'Is Friday okay?',
    isLiked: false,
    unread: true,
  ),
];
