import 'package:flutter/material.dart';

class NewNavBar extends StatelessWidget {
  final List<IconData> navBarIcons;

  NewNavBar(this.navBarIcons);

  void botaoFoiTocado(int index) {
    print("Tocaram no botão $index");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: botaoFoiTocado,
      selectedItemColor: Colors.deepPurple,
      unselectedItemColor: Colors.deepPurple,
      backgroundColor: Colors.deepPurple,
      items: List.generate(navBarIcons.length, (index) {
        return BottomNavigationBarItem(
          icon: Icon(navBarIcons[index]),
          label: "Início",
        );
      }),
    );
  }
}

class MyBodyContent extends StatelessWidget {
  const MyBodyContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "REDRAGON - HEADSET HYLAS R\$119.00",
          style: TextStyle(color: Colors.deepPurple),
        ),
        Text(
          "REDRAGON - MOUSE M711 COBRA R\$261.00",
          style: TextStyle(color: Colors.deepPurple),
        ),
        Text(
          "REDRAGON - TECLADO DARKAVENGER R\$349.00",
          style: TextStyle(color: Colors.deepPurple),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  MyApp();

  final navBarIcons = [
    Icons.house,
    Icons.keyboard,
    Icons.mouse,
    Icons.headset,
    Icons.drag_handle,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            child: Text(
              "Periféricos",
              style: TextStyle(color: Colors.white),
            ),
            alignment: Alignment.center,
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children: [
            Expanded(
              child: MyBodyContent(),
            ),
            Expanded(
              child: Container(
                color: Colors.deepPurple,
                child: Center(
                  child: Text(
                    "Boas recomendações de periféricos acima",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: NewNavBar(navBarIcons),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
