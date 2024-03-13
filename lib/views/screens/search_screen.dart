import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shortvid_mvp_final/models/user.dart';
import 'package:shortvid_mvp_final/views/screens/profile_screen.dart';
import 'package:shortvid_mvp_final/controllers/search_controller.dart'
    as sea_rch;

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  final sea_rch.SearchController searchController =
      Get.put(sea_rch.SearchController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 187, 38, 73),
          title: TextFormField(
            decoration: const InputDecoration(
              filled: false,
              hintText: 'Поиск',
              hintStyle: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            onFieldSubmitted: (value) => searchController.searchUser(value),
          ),
        ),
        body: searchController.searchedUsers.isEmpty
            ? const Center(
                child: Text(
                  'Поиск пользователей',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : ListView.builder(
                itemCount: searchController.searchedUsers.length,
                itemBuilder: (context, index) {
                  User user = searchController.searchedUsers[index];
                  return InkWell(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(uid: user.uid),
                      ),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          user.profilePhoto,
                        ),
                      ),
                      title: Text(
                        user.name,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              ),
      );
    });
  }
}
