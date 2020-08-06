import 'package:findmeaserviceprovider/widgets/reviews_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomerReviewsScreen extends StatefulWidget {
  @override
  _CustomerReviewsScreenState createState() => _CustomerReviewsScreenState();
}

class _CustomerReviewsScreenState extends State<CustomerReviewsScreen> {
  final List<String> names = ['Ravi', 'Manuj', 'Josh', 'Richard'];
  final List<String> description = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    ' ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
  ];
  final List<String> dates = [
    'August 20, 2020',
    'September 1, 2020',
    'October 15, 2020',
    'October 19, 2020',
    'December 17, 2020'
  ];
  final List<double> ratings = [5, 4, 4, 5, 4.5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.white,
          title: Text(
            'Customer Reviews',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        body: Container(
          child: ListView.builder(
            itemBuilder: (_, int index) => CustomerReviewsCard(
                this.names[index],
                this.description[index],
                this.dates[index],
                this.ratings[index]),
            itemCount: this.names.length,
          ),
        ));
  }
}

class CustomerReviewsCard extends StatelessWidget {
  String name;
  String description;
  String date;
  double rating;

  CustomerReviewsCard(this.name, this.description, this.date, this.rating);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.person),
                Column(
                  children: <Widget>[
                    Text(name),
                    Text(description)
                  ],
                )
              ],
            ),
            RatingBar(
              initialRating: rating,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
            ),
            RichText(
              text: TextSpan(
                  text: 'Reviewed on : ',
                  children: <TextSpan>[TextSpan(text: date)]),
            )
          ],
        ),
      ),
    );
  }
}
