import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({
    super.key,
  });

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 8.0,
            ),
            child: Icon(
              Icons.notifications_active,
              color: Colors.grey[500],
              size: 26,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Namaste, Your Name',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Welcome to Nepal Police App. Your comprehensive tool for modern policing',
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              height: 55,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DashBoardItem(
                    imageLink: 'assets/covid.png', itemText: 'Covid 19'),
                DashBoardItem(
                    imageLink: 'assets/siren.png', itemText: 'Report Incident'),
                DashBoardItem(
                    imageLink: 'assets/phone-book.png',
                    itemText: 'Emergency Num'),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DashBoardItem(imageLink: 'assets/news.png', itemText: 'News'),
                DashBoardItem(
                    imageLink: 'assets/notice.png', itemText: 'Notice'),
                DashBoardItem(
                    imageLink: 'assets/Radio.png', itemText: 'FM.Radio'),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DashBoardItem(
                    imageLink: 'assets/stations.png',
                    itemText: 'Station Nearby'),
                DashBoardItem(
                    imageLink: 'assets/complaint.png', itemText: 'E-complaint'),
                DashBoardItem(
                    imageLink: 'assets/report.png',
                    itemText: 'Clearance Report'),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

// ignore: must_be_immutable
class DashBoardItem extends StatelessWidget {
  var imageLink;
  var itemText;
  //Required
  DashBoardItem({required String imageLink, required String itemText}) {
    this.imageLink = imageLink;
    this.itemText = itemText;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Image.asset(
              imageLink,
              scale: 2,
            ),
            Text(itemText),
          ],
        ),
        height: 100,
      ),
    );
  }
}
