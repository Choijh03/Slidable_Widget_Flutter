import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Scrollable(
          viewportBuilder: (context, position) => Slidable(
            startActionPane: ActionPane(
              motion: StretchMotion(),
              children: [
                SlidableAction(
                  onPressed: (context) {
                    //call number
                  },
                  backgroundColor: Colors.green,
                  icon: Icons.phone,
                ),
                SlidableAction(
                  onPressed: (context) {
                    //text number
                  },
                  backgroundColor: Colors.blue,
                  icon: Icons.chat,
                ),
              ],
            ),
            endActionPane: ActionPane(
              motion: StretchMotion(),
              children: [
                SlidableAction(
                  onPressed: (context) {
                    //delete number
                  },
                  backgroundColor: Colors.red,
                  icon: Icons.delete,
                ),
              ],
            ),
            child: Container(
              color: Colors.grey[300],
              child: ListTile(
                title: Text('Jihun Choi'),
                subtitle: Text('0429102939'),
                leading: Icon(
                  Icons.person,
                  size: 40,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
