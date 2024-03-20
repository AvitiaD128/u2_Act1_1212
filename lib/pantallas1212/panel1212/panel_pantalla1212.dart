import 'package:flutter/material.dart';
import 'package:avitia1212/pantallas1212/panel1212/item_prisioneros1212.dart';

class PanelPantalla1212 extends StatelessWidget {
  const PanelPantalla1212({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff71a6ff),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.white),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/AvitiaD128/img_IOS/main/se%C3%B1or.jpg"),
            ),
          )
        ],
        title: Text(
          'CERESO128 Avitia1212',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xff04a3ed),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 5),
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(.1),
                    spreadRadius: 5,
                    blurRadius: 5)
              ],
            ),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "QUE QUERES VER",
                  hintStyle: TextStyle(fontWeight: FontWeight.w300),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.brown,
                  )),
            ),
          ),
          Container(
            height: 180,
            margin: EdgeInsets.all(15),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/AvitiaD128/img_IOS/main/123123.jpg"))),
          ),
          ListTile(
            title: Text("Prisioneros"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: Icon(Icons.filter_list_outlined),
          ),
          Expanded(
              child: GridView.count(
            padding: EdgeInsets.all(15),
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            children: [
              for (int i = 1; i <= 10; i++) const ItemPrisioneros1212()
            ],
          ))
        ],
      ),
    );
  }
}
