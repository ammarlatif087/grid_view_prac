import 'package:flutter/material.dart';
import 'package:grid_view_prac/utils/dummy_list.dart';
import 'package:grid_view_prac/views/slider_screen.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid view'),
      ),
      drawer: Drawer(
        child: Column(
          children: const [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1.0,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            shrinkWrap: true,
            itemCount: myList.length,
            itemBuilder: ((context, index) => InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SliderScreen()));
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const SliderScreen()),
                    // );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [
                        myList[index].Catcolor.withOpacity(0.5),
                        myList[index].Catcolor,
                      ],
                    )),
                    child: Text(myList[index].catNAME),
                  ),
                )),
          ),
          // ListView.builder(
          //   itemCount: myList.length,
          //   itemBuilder: ((context, index) {
          //     return Container(
          //       color: myList[index].Catcolor,
          //     );
          //   }),
          // ),
        ],
      ),
    );
  }
}
