import 'package:cumax/data/entity/modal/movie_modal.dart';
import 'package:cumax/ui/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoviesDetailsPage extends StatefulWidget {
  MovieModal modal;
  MoviesDetailsPage(this.modal);

  @override
  State<MoviesDetailsPage> createState() => _MoviesDetailsPageState();
}

class _MoviesDetailsPageState extends State<MoviesDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBlack,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              CupertinoIcons.back,
              color: colorTextWhite,
            )),
        backgroundColor: colorBlack,
        title: Text(
          widget.modal.name,
          style: TextStyle(
              color: colorYellow, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                width: double.infinity,
                height: 500,
                child: Image.asset(widget.modal.picture)),
            Container(
              color: colorYellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.play_arrow),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: colorYellow),
                      onPressed: () {},
                      child: Text(
                        "Play Film",
                        style: TextStyle(color: colorBlack, fontSize: 22),
                      )),
                  Text(
                    widget.modal.duration,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.modal.plotSummary,
                style: TextStyle(color: colorTextWhite, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
