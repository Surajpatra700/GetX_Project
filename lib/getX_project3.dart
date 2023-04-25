import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectThree extends StatefulWidget {
  const ProjectThree({super.key});

  @override
  State<ProjectThree> createState() => _ProjectThreeState();
}

class _ProjectThreeState extends State<ProjectThree> {
  // List<String> name = [
  //   "Elon Musk",
  //   "Shushant Singh rajput",
  //   "MS Dhoni",
  //   "Virat Kohli",
  //   "Issac Newton"
  // ];

  // List<String> temp_name = [];

  //bool notifications = false;
  final ProjectThreeGetX three = Get.put(ProjectThreeGetX());
  final FavouriteList fav = Get.put(FavouriteList());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Notifications"),
              Obx(
                () => Switch(
                    value: three.notifications.value,
                    onChanged: (value) {
                      three.notifications.value = value;
                      // setState(() {});
                    }),
              ),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Center(
              child: Text(
            "Favourites List",
            style: TextStyle(fontSize: 25),
          )),
          SizedBox(height: 30),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: fav.name.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: () {
                        //temp_name.add(name[index].toString());

                        if (fav.temp_name
                            .contains(fav.name[index].toString())) {
                          fav.removeFromFavourite(fav.name[index].toString());
                        } else {
                          fav.addToFavourite(fav.name[index].toString());
                        }
                        // setState(() {});
                      },
                      title: Text(fav.name[index].toString()),
                      trailing: Obx(
                        () => Icon(
                          Icons.favorite,
                          color:
                              fav.temp_name.contains(fav.name[index].toString())
                                  ? Colors.pink.shade600
                                  : Colors.white,
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

// **************** Class Two **************************

class ProjectThreeGetX extends GetxController {
  RxBool notifications = false.obs;

  changeSwitch(bool value) {
    notifications.value = value;
  }
}

// *************** Class Three **************************

class FavouriteList extends GetxController {
  RxList<String> name = [
    "Elon Musk",
    "Shushant Singh rajput",
    "MS Dhoni",
    "Virat Kohli",
    "Issac Newton"
  ].obs;

  RxList<dynamic> temp_name = [].obs;

  addToFavourite(String value) {
    temp_name.add(value);
  }

  removeFromFavourite(String value) {
    temp_name.remove(value);
  }
}
