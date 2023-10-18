import 'package:flutter/material.dart';
import 'package:ikchatbot/ikchatbot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final chatBotConfig = IkChatBotConfig(
      // ... (Your existing configuration settings)
      // Add keywords and responses
      //SMTP Rating to your mail Settings
      ratingIconYes: const Icon(Icons.star),
      ratingIconNo: const Icon(Icons.star_border),
      ratingIconColor: Colors.black,
      ratingBackgroundColor: Colors.white,
      ratingButtonText: 'Submit Rating',
      thankyouText: 'Thanks for your rating!',
      ratingText: 'Rate your experience:',
      ratingTitle: 'Thank you for using the chatbot!',
      body: 'This is a test email sent from Flutter and Dart.',
      subject: 'Test Rating',
      recipient: 'recipient@example.com',
      isSecure: false,
      senderName: 'AHMED',
      smtpUsername: 'test@gmail.com',
      smtpPassword: '0000',
      smtpServer: 'stmp.gmail.com',
      smtpPort: 587,
      //Settings to your system Configurations
      sendIcon: const Icon(Icons.send, color: Colors.black),
      userIcon: const Icon(Icons.account_circle, color: Colors.white),
      botIcon: const Icon(Icons.android, color: Colors.white),
      botChatColor: Color.fromARGB(255, 104, 0, 101),
      delayBot: 100,
      closingTime: 1,
      delayResponse: 1,
      userChatColor: const Color.fromARGB(255, 103, 0, 0),
      waitingTime: 1,
      backgroundColor: Colors.white,
      backgroundImage:
      'https://i.pinimg.com/736x/d2/bf/d3/d2bfd3ea45910c01255ae022181148c4.jpg',
      backgroundAssetimage: "lib/assets/bg.jpeg",
      initialGreeting:
      "Hello! \nWelcome to IkChatBot.\nHow can I assist you today?",
      defaultResponse: "Sorry, I didn't understand your response.",
      inactivityMessage: "Is there anything else you need help with?",
      closingMessage: "This conversation will now close.",
      inputHint: 'Send a message',
      waitingText: 'Please wait...',
      useAsset: true,
      keywords: ['hello', 'help', 'goodbye','1','2','3','4'],
      responses: [
        'Hello there! How can I assist you?',
        'Sure, I can help with that. What do you need?',
        'Goodbye! If you have more questions, feel free to ask.',
        '10','20','30','4010'
      ],
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(chatBotConfig: chatBotConfig),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final IkChatBotConfig chatBotConfig;

  const MyHomePage({Key? key, required this.chatBotConfig}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final bool _chatIsOpened = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Chatbot MS'),
        ),
        // floatingActionButton: FloatingActionButton(onPressed: () {
        //   if(_chatIsOpened =  false) {
        //     setState(() {
        //     _chatIsOpened = true;
        //     });
        //   }else {
        //     setState(() {
        //       _chatIsOpened = false;
        //     });
        //   }
        //
        // },
        // child: Icon(Icons.chat),),
        body: _chatIsOpened
            ? const Center(
          child: Text('Welcome to my app,'),
        )
            : ikchatbot(config: widget.chatBotConfig));
  }
}