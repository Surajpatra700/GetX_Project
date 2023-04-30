import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX HomeScreen"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("GetX Dialog Alert"),
              subtitle: Text("GetX dailog alert with GetX"),
              onTap: () {
                Get.defaultDialog(
                  title: "Delete Chat",
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(20), 
                  middleText:
                      "Are you sure want to delete this chat ?", // middle text doesn't allow more than 3 lines of text therefore we use content.
                  confirm: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text("OK")),
                  cancel: TextButton(onPressed: () {}, child: Text("Cancel")),
                  content: Column(
                    children: [],
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("GetX Bottom Sheet"),
              subtitle: Text("GetX dailog alert with GetX"),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    color: Colors.grey.shade300,
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.light_mode),
                          title: Text('Light Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          Card(
            child: ListTile(
              title: Text("message".tr),
              subtitle: Text("name".tr),
            ),
          ),

          SizedBox(
            height: 50,
          ),
          
          Row(
            children: [
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale("en", "US"));
                  },
                  child: Text("English")),

              SizedBox(width: 30,),

              OutlinedButton(onPressed: () {
                Get.updateLocale(Locale("hi", "IN"));
              }, child: Text("Hindi")),
            ],
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: TextButton(
                onPressed: () {
                  //Get.to(ScreenOne(name: "Suraj",));
                  Get.toNamed("/one", arguments: ["Suraj"]);
                },
                child: Text("Navigate")),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar("Suraj Patra", "I am from CSE",
            icon: Icon(Icons.add), snackPosition: SnackPosition.BOTTOM);
      }),
    );
  }
}
