import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  final String item;

  HomeScreen({
    Key key, 
    @required this.item
  }) : super(key: key);  
  @override
  Widget build(BuildContext context) {
    return Scaffold(     
      body: Padding(  
        padding: const EdgeInsets.all(20.0),
        child: Column(  
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(icon: Icon(Icons.notifications),onPressed: (){}),
                IconButton(icon: Icon(Icons.extension),onPressed: (){})
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Welcome, \n",
                      style: TextStyle(color: Colors.blue[300]),
                    ),
                    TextSpan(text: item),
                     TextSpan(
                      text: "Hilmy, \n",
                      style: TextStyle(color: Colors.blue[900]),
                    ),
                  
                  ],
                  ),
                  style: TextStyle(fontSize: 30),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child : 
                    Image.network(
                    "https://media-exp1.licdn.com/dms/image/C5603AQH425s58jaMcg/profile-displayphoto-shrink_200_200/0/1517375222650?e=1623888000&v=beta&t=ZyrZWp1nvSphe4FgDQTGFh7O1rO2QijJlqiWeRDvQGY",
                    height: 100,
                    width: 100,                  
                    ),
                )
              
              
                ]
              
            ),


            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  size: 18
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)),
                hintText:"Search"
                ),
              ),
              SizedBox(height: 10),
              Text("Recomended Place",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              Flexible(
               // height: 400,
                child: GridView.count(
                  padding: EdgeInsets.all(5),
                  crossAxisCount: 2,
                  childAspectRatio: 3 /2,
                  crossAxisSpacing: 10,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    for(var country in countries)
                    Image.asset(
                      "assets/img/$country.png"
                    )
                  ],

                )
              )
            
          ],
        ),
      ),
    );
  }
}

final countries = ["Tokyo", "Berlin", "Roma", "Monas", "London", "Paris"];