import 'package:flutter/material.dart';

class MessengerHome extends StatefulWidget {
  const MessengerHome({super.key});

  @override
  State<MessengerHome> createState() => _MessengerHomeState();
}

class _MessengerHomeState extends State<MessengerHome> {
  final List<Map<String, dynamic>> users = [
    {
      "name": "Ali",
      "lastMessage": "Hey, how are you?",
      "time": "10:30 AM",
      "isOnline": true,
    },
    {
      "name": "Tamim",
      "lastMessage": "See you later!",
      "time": "Yesterday",
      "isOnline": false,
    },
    {
      "name": "Salama",
      "lastMessage": "Can we meet tomorrow?",
      "time": "12:45 PM",
      "isOnline": true,
    },
    {
      "name": "Omar",
      "lastMessage": "I sent the documents.",
      "time": "11:15 AM",
      "isOnline": false,
    },
    {
      "name": "Heba",
      "lastMessage": "Thanks for the help!",
      "time": "9:00 AM",
      "isOnline": true,
    },
    {
      "name": "Reem",
      "lastMessage": "Let's catch up soon.",
      "time": "Yesterday",
      "isOnline": true,
    },
    {
      "name": "Ali",
      "lastMessage": "Hey, how are you?",
      "time": "10:30 AM",
      "isOnline": true,
    },
    {
      "name": "Tamim",
      "lastMessage": "See you later!",
      "time": "Yesterday",
      "isOnline": false,
    },
    {
      "name": "Salama",
      "lastMessage": "Can we meet tomorrow?",
      "time": "12:45 PM",
      "isOnline": true,
    },
    {
      "name": "Omar",
      "lastMessage": "I sent the documents.",
      "time": "11:15 AM",
      "isOnline": false,
    },
    {
      "name": "Heba",
      "lastMessage": "Thanks for the help!",
      "time": "9:00 AM",
      "isOnline": true,
    },
    {
      "name": "Reem",
      "lastMessage": "Let's catch up soon.",
      "time": "Yesterday",
      "isOnline": true,
    }
    ,
    {
      "name": "Tamim",
      "lastMessage": "See you later!",
      "time": "Yesterday",
      "isOnline": false,
    },
    {
      "name": "Salama",
      "lastMessage": "Can we meet tomorrow?",
      "time": "12:45 PM",
      "isOnline": true,
    },
    {
      "name": "Omar",
      "lastMessage": "I sent the documents.",
      "time": "11:15 AM",
      "isOnline": false,
    },
    {
      "name": "Heba",
      "lastMessage": "Thanks for the help!",
      "time": "9:00 AM",
      "isOnline": true,
    },
    {
      "name": "Reem",
      "lastMessage": "Let's catch up soon.",
      "time": "Yesterday",
      "isOnline": true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue[500],
                    child: const Icon(Icons.person, color: Colors.white, size: 40),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Chats",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blue[900],
              child: const Icon(Icons.camera_alt, color: Colors.white),
            ),
            const SizedBox(width: 10),
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blue[900],
              child: const Icon(Icons.edit, color: Colors.white),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(1),
                filled: true,
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: "Search",
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder:
                    (context, index) => Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.blue[500],
                          child: Text(
                            users[index]["name"][0],
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(users[index]["name"]),
                  ],
                ),
                separatorBuilder: (context, index) => SizedBox(width: 20),
                itemCount: users.length,
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: users.length,
                separatorBuilder: (context, index) => const Divider(height: 1),
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue[500],
                    child: Text(
                      users[index]["name"][0],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  title: Text(
                    users[index]["name"],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text(
                    users[index]["lastMessage"],
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),
                  trailing: Text(
                    users[index]["time"],
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


