import 'package:flutter/material.dart';
import 'package:state_without_state_management/model/model.dart';

import '../widgets/list_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anime List"),
      ),
      body: GridView.builder(
        itemCount: listAnime.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 350),
        itemBuilder: (context, index) {
          return ListItem(
            animeId: listAnime[index].animeId,
            animeImg: listAnime[index].animeImg,
            animeTitle: listAnime[index].animeTitle,
            releasedDate: listAnime[index].releasedDate,
          );
        },
      ),
    );
  }
}
