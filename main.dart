import 'package:flutter/material.dart';
import 'Treeview.dart';

void main() {
  runApp(MyApp());
}

//สร้าง wiget
class MyApp extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomepage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class MyHomepage extends StatefulWidget {
  MyHomepage({Key? key}) : super(key: key);

  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
    List <Treeview> menu=[
    Treeview("images/Gif.jpg","อิทธิพล","images/5.jpg","ต้นกระบองเพชร"),
    Treeview("images/Gif.jpg","อิทธิพล","images/5.jpg","ต้นกระบองเพชร"),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tree Admin"),
      ),
      
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (BuildContext context, int index){
          Treeview imgt=menu[index];
          return Center(
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                     leading: Container(
                          child: CircleAvatar(
                        backgroundImage: AssetImage(imgt.profile),
                        radius: 25,
                      )),
                      title: Text(imgt.name,style: TextStyle(fontSize: 20)),
                      subtitle:Text(imgt.nametree,style: TextStyle(fontSize: 15)),
                    //leading: Image.asset(food.tree),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Container(
                      height: 200,
                      child: Image.asset(imgt.img),
                    )
                  ),
                  Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Edit'),
                  onPressed: () { /* ... */ },
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('View'),
                  onPressed: () { /* ... */ },
                ),
                const SizedBox(width: 8),
                ],
                  ),
              ],
              ),
            ),
          );
        }),
           floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
   ),
    );
  }
}