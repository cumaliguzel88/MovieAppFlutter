import 'package:cumax/data/entity/modal/movie_modal.dart';
import 'package:cumax/ui/theme/colors.dart';
import 'package:cumax/ui/views/movies_details_page.dart';
import 'package:flutter/material.dart';

class MoviesMainPage extends StatefulWidget {
  const MoviesMainPage({super.key});

  @override
  State<MoviesMainPage> createState() => _MoviesMainPageState();
}

class _MoviesMainPageState extends State<MoviesMainPage> {
  final List<MovieModal> _movieList = [
    MovieModal(
        plotSummary:
            "Set in the desolate landscapes of rural Anatolia, Once Upon a Time in Anatolia follows a nightlong search for a buried body led by a prosecutor, a police chief, and a doctor, accompanied by the suspect. As they navigate the vast and barren countryside, the film delves into the lives and thoughts of these men, exploring themes of guilt, justice, and the human condition. Through their interactions, the film reveals the complexities of truth and the burdens carried by each character, all set against the haunting backdrop of the Anatolian steppe.",
        id: 1,
        name: "Anadoluda",
        duration: "2H",
        fav: false,
        picture: "assets/anadoluda.png",
        rate: 3.7),
    MovieModal(
        plotSummary:
            "In Gotham City, a reclusive Bruce Wayne dons the mantle of Batman to combat rising crime. As he investigates a series of murders orchestrated by the Riddler, a masked vigilante, Batman uncovers deep corruption within the city's elite. Along the way, he forms an alliance with Selina Kyle, also known as Catwoman, and grapples with his own dark past. Through his relentless pursuit of justice, Batman must confront the true nature of heroism and his role in Gotham’s future.",
        id: 2,
        name: "The Batman",
        duration: "2.4H",
        fav: false,
        picture: "assets/batman.jpg",
        rate: 3.7),
    MovieModal(
        plotSummary:
            "In Gotham City, a reclusive Bruce Wayne dons the mantle of Batman to combat rising crime. As he investigates a series of murders orchestrated by the Riddler, a masked vigilante, Batman uncovers deep corruption within the city's elite. Along the way, he forms an alliance with Selina Kyle, also known as Catwoman, and grapples with his own dark past. Through his relentless pursuit of justice, Batman must confront the true nature of heroism and his role in Gotham’s future.",
        id: 3,
        name: "The Dark Night",
        duration: "2.8H",
        fav: false,
        picture: "assets/darknight.jpg",
        rate: 3.7),
    MovieModal(
        plotSummary:
            "Set in the antebellum South, Django is a freed slave who teams up with a bounty hunter named Dr. King Schultz to rescue his wife from a brutal Mississippi plantation owner. The film explores themes of revenge, slavery, and heroism, with Django becoming a force of retribution as he fights to reclaim his freedom and love.",
        id: 4,
        name: "Django",
        duration: "3H",
        fav: false,
        picture: "assets/django.png",
        rate: 3.7),
    MovieModal(
        plotSummary:
            "The Hobbit follows the journey of Bilbo Baggins, a simple hobbit who is thrust into an epic quest to reclaim the lost Kingdom of Erebor from the fearsome dragon Smaug. Along the way, Bilbo encounters various challenges and discovers his own inner strength and bravery.",
        id: 5,
        name: "Hobbit",
        duration: "3.2H",
        fav: false,
        picture: "assets/hobbit.jpg",
        rate: 3.7),
    MovieModal(
        plotSummary:
            "John Wick, a retired hitman mourning the death of his wife, is forced back into the criminal underworld after a group of Russian gangsters steal his car and kill his beloved dog, a final gift from his wife. With nothing left to lose, John unleashes his deadly skills in a relentless quest for vengeance.",
        id: 6,
        name: "John Wick",
        duration: "3H",
        fav: false,
        picture: "assets/jhonwick.jpg",
        rate: 3.7),
    MovieModal(
        plotSummary:
            "Legend is the biographical crime thriller that tells the story of the infamous Kray twins, Reggie and Ronnie, who dominated London’s criminal underworld during the 1960s. The film explores their rise to power, their complex relationship, and the eventual downfall of their empire.",
        id: 7,
        name: "Legend",
        duration: "2.2H",
        fav: false,
        picture: "assets/legend.jpg",
        rate: 3.7),
    MovieModal(
        plotSummary:
            "Logan is set in a dystopian future where an aging Wolverine and ailing Professor X are hiding on the Mexican border. Logan’s attempts to live a quiet life are upended when a young mutant arrives, pursued by dark forces. The film explores themes of redemption, mortality, and family.",
        id: 8,
        name: "Logan",
        duration: "2.3H",
        fav: false,
        picture: "assets/logan.jpg",
        rate: 3.7),
    MovieModal(
        plotSummary:
            "In the epic conclusion of the Lord of the Rings trilogy, the final battle for Middle-earth begins as Frodo and Sam reach the final stage of their journey to destroy the One Ring. Meanwhile, Aragorn leads the forces of good against Sauron’s army in a desperate attempt to protect Gondor.",
        id: 9,
        name: "Lord of the Rings: The Return of the King",
        duration: "4H",
        fav: false,
        picture: "assets/lordofringsretrun.jpg",
        rate: 3.7),
    MovieModal(
        plotSummary:
            "The Lord of the Rings: The Two Towers continues the epic journey as the Fellowship is broken and the members fight on separate fronts. Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, while Aragorn, Legolas, and Gimli rally forces against Saruman's army.",
        id: 10,
        name: "The Lord of the Rings: The Two Towers",
        duration: "3.2H",
        fav: false,
        picture: "assets/lortfofrings.jpg",
        rate: 3.7),
    MovieModal(
        plotSummary:
            "The Night Crawler is a dark and gripping thriller that follows the story of Lou Bloom, a driven and desperate man who discovers the world of Los Angeles crime journalism. As Lou becomes increasingly obsessed with capturing the perfect story, he spirals into a dangerous world of manipulation and crime.",
        id: 11,
        name: "The Night Crawler",
        duration: "2H",
        fav: false,
        picture: "assets/nightcrawler.jpg",
        rate: 3.7),
    MovieModal(
        plotSummary:
            "Oppenheimer is a historical drama that delves into the life of J. Robert Oppenheimer, the brilliant physicist known as the father of the atomic bomb. The film explores his moral dilemmas, the impact of his work on humanity, and the personal and professional consequences of his scientific achievements.",
        id: 12,
        name: "Oppenheimer",
        duration: "3H",
        fav: false,
        picture: "assets/oppenheimer.jpg",
        rate: 3.7),
    MovieModal(
        plotSummary:
            "Split is a psychological thriller that follows Kevin Wendell Crumb, a man with 23 distinct personalities who kidnaps three teenage girls. As they struggle to escape, they discover the emergence of a 24th personality, 'The Beast', a superhuman entity intent on destruction.",
        id: 13,
        name: "Split",
        duration: "2.6H",
        fav: false,
        picture: "assets/split.jpg",
        rate: 3.7),
    MovieModal(
        plotSummary:
            "Thor, the powerful but arrogant Norse god, is cast out of Asgard by his father Odin and sent to Earth as punishment. Stripped of his powers, Thor must prove himself worthy by learning humility and defending humanity. Along the way, he discovers love and faces the threat of his brother Loki, who seeks to take over Asgard's throne.",
        id: 14,
        name: "The Thor",
        duration: "2H",
        fav: false,
        picture: "assets/thor.jpg",
        rate: 3.7),
    MovieModal(
        plotSummary:
            "Venom follows the story of Eddie Brock, a journalist who becomes the host for an alien symbiote that gives him superhuman abilities. As Eddie struggles to control the symbiote, he must also face off against a powerful enemy determined to destroy Venom and take over the world.",
        id: 15,
        name: "Venom",
        duration: "2.2H",
        fav: false,
        picture: "assets/venom.jpg",
        rate: 3.7),
    MovieModal(
        plotSummary:
            "The Pianist is a poignant biographical drama based on the life of Władysław Szpilman, a Polish-Jewish pianist who survived the Holocaust. The film chronicles his experiences in the Warsaw Ghetto and his struggle to stay alive during the Nazi occupation of Poland.",
        id: 16,
        name: "The Pianist",
        duration: "2.7H",
        fav: false,
        picture: "assets/thepianist.png",
        rate: 3.7),
  ];
  //situation for app bar
  bool isSearch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBlack,
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: colorBlack,
          child: Text(
            "CG",
            style: TextStyle(color: colorYellow, fontSize: 20),
          ),
        ),
        title: isSearch
            ? TextField()
            : Text(
                "Movies",
                style: TextStyle(
                    color: colorYellow,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
        actions: [
          isSearch
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isSearch = !isSearch;
                    });
                  },
                  icon: Icon(
                    Icons.close,
                    color: colorYellow,
                  ))
              : IconButton(
                  onPressed: () {
                    setState(() {
                      isSearch = true;
                    });
                  },
                  icon: Icon(
                    Icons.search,
                    color: colorYellow,
                  )),
        ],
      ),
      backgroundColor: colorBlack,
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1 / 2.5,
          mainAxisSpacing: 15,
          crossAxisSpacing: 1,
        ),
        itemCount: _movieList.length,
        itemBuilder: (context, index) {
          final movie = _movieList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MoviesDetailsPage(_movieList[index])));
            },
            child: Card(
              color: colorBlack,
              margin: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      _movieList[index].picture,
                      fit: BoxFit.cover,
                    ),
                  ),
                  //movie name
                  Text(
                    _movieList[index].name,
                    style: TextStyle(
                        color: colorTextWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //movie durations
                      Text(
                        _movieList[index].duration,
                        style: TextStyle(color: colorGrey),
                      ),
                      //favorite button
                      IconButton(
                        icon: Icon(
                            movie.fav ? Icons.favorite : Icons.favorite_border,
                            color: movie.fav ? colorYellow : colorYellow),
                        onPressed: () {
                          setState(() {
                            movie.fav = !movie.fav;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
