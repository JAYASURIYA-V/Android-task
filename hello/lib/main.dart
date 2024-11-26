import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xf2f8f4f4),
          appBar: AppBar(
            title: Text(
              'Home Page',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Color(0xffd493e0),
            centerTitle: true,
            elevation: 0,
          ),
          body: Column(
            children: [
              // Search Bar
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 2,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    ),
                  ),
                ),
              ),
              // Main Content
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Contacts Icon
                      GestureDetector(
                        onTap: () {
                          // Navigate to Contacts page or show message
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContactsPage()),
                          );
                        },
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://tse1.mm.bing.net/th?id=OIP.0CFLCUayUe0b6FhqZSI5aAHaFL&pid=Api&P=0&h=180"),
                        ),
                      ),
                      SizedBox(height: 20), // Space between icons
                      // Camera Icon
                      GestureDetector(
                        onTap: () {
                          // Navigate to Camera page or show message
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CameraPage()),
                          );
                        },
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://tse4.mm.bing.net/th?id=OIP.Gx6FhHM6vKrJh1log6awjgHaHa&pid=Api&P=0&h=180"),
                        ),
                      ),
                      SizedBox(height: 20), // Space between icons
                      // YouTube Icon
                      GestureDetector(
                        onTap: () {
                          // Navigate to YouTube page or show message
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WhatsappPage()),
                          );
                        },
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://tse4.mm.bing.net/th?id=OIP.95AioEK2mw9lEDZutjLCegHaHa&pid=Api&P=0&h=180"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

// Contacts Page
class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Contacts feature not implemented yet!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

// Camera Page
class CameraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Camera feature not implemented yet!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

// Whatsapp Page
class WhatsappPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://tse1.mm.bing.net/th?id=OIP.hbr47SG8Nl1CUsQBVLhz_AHaHa&pid=Api&P=0&h=180",
              ),
            ),
            actions: [
              Icon(Icons.qr_code, color: Colors.white),
              Icon(Icons.search, color: Colors.white),
              Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ],
            backgroundColor: Color(0xff075e54),
            title: Text(
              "Whatsapp",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                buildListTile("vijay", "How are you?",
                    "http://www.suntiros.com/wp-content/uploads/2017/11/Vijay-Beautiful-Photoshoots.jpg"),
                buildListTile("Suriya", "Are you Sleeping",
                    "https://tse3.mm.bing.net/th?id=OIP.g1f2Csf39oxlxAoDYmfqzAHaJ4&pid=Api&P=0&h=180"),
                buildListTile("Simbu", "yena da pandra",
                    "https://tse1.mm.bing.net/th?id=OIP.SaDScsyLxq2zgJeoby4qYQAAAA&pid=Api&P=0&h=180"),
                buildListTile("Ajeeth", "dont talk",
                    "https://tse3.mm.bing.net/th?id=OIP.Us8kaR8Hp8LB4zmFVkWoLAHaJ4&pid=Api&P=0&h=180"),
                buildListTile("Vigneshwaran", "yesterday you to boxing class ;",
                    "https://tse1.mm.bing.net/th?id=OIP.WKhDU9XmMmAxkigo8qzzPQHaE8&pid=Api&P=0&h=180"),
                buildListTile("Javid Hussian", "tomarrow exam or not",
                    "https://tse2.mm.bing.net/th?id=OIP.CTp7tLHUX7IesZ9ey8z3mQHaMP&pid=Api&P=0&h=180"),
                buildListTile("Renukadevi Sister", "hai",
                    "https://tse4.mm.bing.net/th?id=OIP.ddk3Go6DOqjTuVOjsT3FiAHaE7&pid=Api&P=0&h=180"),
                buildListTile("Prakash Uncle", "ya uncle,i will come to house",
                    "https://tse1.mm.bing.net/th?id=OIP.YEoK_ez379P-6YZOEGoecgHaHa&pid=Api&P=0&h=180"),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
            backgroundColor: Color(0xff075e54),
          ),
          bottomNavigationBar: BottomNavigationBar(items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.message_rounded),
              label: "Chats",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.update),
              label: "Status",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "Calls",
            ),
          ]),
        ),
      ),
    );
  }

  ListTile buildListTile(title, subtitle, img) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(img)),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      subtitle: Text(subtitle),
      trailing: Column(children: [
        Text("12/05/2024"),
        Icon(
          Icons.done_all,
          color: Colors.blue,
        )
      ]),
    );
  }
}
