import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';



void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Center(
                child: Container(
                    width: 500,
                    height: 600,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('images/Homescreen.png')),
              ),
            ),
            SizedBox(
              height: 65,
              width: 360,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: ElevatedButton(
                    child: Text( 'Police Click Here ', style: TextStyle(color: Colors.black, fontSize: 20,),
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpDemo()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan, // Background color
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 65,
              width: 360,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: ElevatedButton(
                    child: Text( 'Public Click Here ', style: TextStyle(color: Colors.black, fontSize: 20,),
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpDemo2()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan, // Background color
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpDemo extends StatefulWidget {
  @override
  _SignUpDemoState createState() => _SignUpDemoState();
}

class _SignUpDemoState extends State<SignUpDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("SignUp Here"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Center(
                child: Container(
                    width: 400,
                    height: 220,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('images/police.png')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 0),
              child: TextField(
                style: TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                  labelStyle: TextStyle(color:Colors.white),
                    focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan, width: 0.5)
                    ),
                    labelText: 'Name and Designation',
                    hintText: 'Enter your name along with your designation'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                style: TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    labelStyle: TextStyle(color:Colors.white),
                    focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan, width: 0.5)
                    ),
                    labelText: 'Email ID',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                style: TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    labelStyle: TextStyle(color:Colors.white),
                    focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan, width: 0.5)
                    ),
                    labelText: 'Enter your unique ID',
                    hintText: 'Enter your unique ID given by your department'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: true,
                style: TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    labelStyle: TextStyle(color:Colors.white),
                    focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan, width: 0.5)
                    ),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: true,
                style: TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    labelStyle: TextStyle(color:Colors.white),
                    focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan, width: 0.5)
                    ),
                    labelText: 'Confirm Password',
                    hintText: 'Re-Enter secure password'),
              ),
            ),
            SizedBox(
              height: 65,
              width: 360,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ElevatedButton(
                    child: Text( 'Sign Up', style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginDemo()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan, // Background color
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpDemo2 extends StatefulWidget {
  @override
  _SignUpDemoState2 createState() => _SignUpDemoState2();
}

class _SignUpDemoState2 extends State<SignUpDemo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("SignUp Here"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Container(
                      width: 400,
                      height: 220,
                      /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                      child: Image.asset('images/public.png')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 0),
                child: TextField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                      labelStyle: TextStyle(color:Colors.white),
                      focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan, width: 0.5)
                      ),
                      labelText: 'Enter your name',
                      hintText: 'Enter your both first name and last name'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                      labelStyle: TextStyle(color:Colors.white),
                      focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan, width: 0.5)
                      ),
                      labelText: 'Enter your Email ID',
                      hintText: 'Enter valid email id as abc@gmail.com'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(

                  obscureText: true,
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                      labelStyle: TextStyle(color:Colors.white),
                      focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan, width: 0.5)
                      ),
                      labelText: 'Enter your Password',
                      hintText: 'Enter secure password'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(

                  obscureText: true,
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                      labelStyle: TextStyle(color:Colors.white),
                      focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan, width: 0.5)
                      ),
                      labelText: 'Confirm password',
                      hintText: 'Enter secure password'),
                ),
              ),

              SizedBox(
                height: 65,
                width: 360,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                      child: Text( 'SignUp ', style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginDemo2()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan, // Background color
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}


class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}
class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("LogIn to Continue"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Center(
                child: Container(
                    width: 400,
                    height: 200,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('images/login.png')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                style: TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    labelStyle: TextStyle(color:Colors.white),
                    focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan, width: 0.5)
                    ),
                    labelText: 'Enter your Email ID or Unique ID',
                    hintText: 'Enter your registered Email ID or Unique ID'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: true,
                style: TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    labelStyle: TextStyle(color:Colors.white),
                    focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan, width: 0.5)
                    ),
                    labelText: 'Enter your Password',
                    hintText: 'Enter your password'),
              ),
            ),

            SizedBox(
              height: 65,
              width: 360,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ElevatedButton(
                    child: Text('Log in ',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (
                            context) => policemainpage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan, // Background color
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class LoginDemo2 extends StatefulWidget {
  @override
  _LoginDemoState2 createState() => _LoginDemoState2();
}

class _LoginDemoState2 extends State<LoginDemo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("LogIn to Continue"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Center(
                child: Container(
                    width: 400,
                    height: 200,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('images/login.png')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                style: TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    labelStyle: TextStyle(color:Colors.white),
                    focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan, width: 0.5)
                    ),
                    labelText: 'Enter your Email ID',
                    hintText: 'Enter registered Email ID '),
              ),
    ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: true,
                style: TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    labelStyle: TextStyle(color:Colors.white),
                    focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan, width: 0.5)
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Password',
                    hintText: 'Enter your password'),
              ),
            ),

            SizedBox(
              height: 65,
              width: 360,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ElevatedButton(
                    child: Text( 'Log in ', style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => publicmainpage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan, // Background color
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class MypublicomePage extends StatefulWidget {
  @override
  _MypublicomePage createState() => new _MypublicomePage();
}

class _MypublicomePage extends State<MypublicomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {PointerDeviceKind.mouse,PointerDeviceKind.touch},
        ),
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      body:  ListView(
            children:[
      Padding(
      padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 0),
              child: Text('Recent accidents',
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
      ),
              Padding(
                  padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 0),
                  child: Text("Three killed, seven injured in accident on Bengaluru-Mysuru expressway",
                    style:TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    )
                  )
              ),
              Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Center(
          child: Container(
              child: Image.asset('images/Accident1.jpeg',
                width: 600,
                height: 220,
                fit: BoxFit.cover,)),
        ),
      ),
              Padding(
                  padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 0),
                child: Text(
                  "Three people, including a woman, were killed and seven were injured when the Tempo Traveller they were travelling in crashed into a truck on the Bengaluru-Mysuru expressway in the wee hours of Saturday. The accident occurred near Byrapattna on the outskirts of Channapatna at about 1.30 a.m.\n The deceased have been identified as Somalingappa, 70, Somappa, 68, and Rajeshwari Desai, 57, all hailing from Mysuru. The injured include the driver Prasanna, Kumaraswamy, Nithin, Lakshmi, Choodaratana, Leelavathy, and Namratha, also from Mysuru. They are being treated in the ICU of an hospital, the police said.\n The victims had gone to attend a wedding in Haveri and were returning home. There were around 14 people in the vehicle, of which four got down at Kengeri and the rest continued their journey towards Mysuru. The driver was allegedly driving in a rash and negligent manner. The police, quoting the statement of the injured, said the victims had advised the driver to drive slowly, but Prasanna did not heed their advice. \n As he was allegedly overspeeding, he reportedly lost control of the vehicle and crashed into the truck passing by. The Tempo Traveller overturned due to the impact of the crash. Sensing trouble, the truck driver sped away from the spot. A probe revealed that Prasanna was trying to overtake the truck from the wrong side and this led to the accident. He was driving in the wee hours and was reportedly tired and had no sense of safe distance between vehicles on the expressway, the police said. \n The impact of the accident was such that the vehicle was mangled and many passengers were thrown out on the road. Passers-by, along with the police, rushed to the victim’s help and blocked the road for some time, before rescuing them and clearing the damaged vehicle. Traffic was disrupted for some time on the expressway. The accused driver has been booked for causing death due to negligence and for rash and negligent driving. The police are also checking whether the vehicle had proper permit. \n Alok Kumar, Special Commissioner, Traffic and Road Safety, said they would step up vigil on the expressway. “We have already put speed guns along the stretches where drivers tend to overspeed. Vehicles from other States that are passing through often overspeed as they don’t know the 100-kmph speed limit,” he said.",
                )
              ),

              Padding(
                  padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 0),
                  child: Text("Four killed in accident near Hubballi, five others injured",
                      style:TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      )
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Container(
                      child: Image.asset('images/acci2.png',
                        width: 600,
                        height: 220,
                        fit: BoxFit.cover,)),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 0),
                  child: Text(
                    "Four persons, who were standing by the roadside after an accident, were killed on the spot after a truck ran over them, near Hubballi on January 6. Five others sustained injuries in the two accidents.\n The accident occurred on the Pune-Bengaluru national highway at Belligatti in Kundagol taluk of Dharwad district of Karnataka.\n The deceased are Manikanth, 26, Chandan, 31, Pawan, 23 of Arakalgud in Hassan district, and Harishkumar, 34, from Bengaluru.\n According to the Superintendent of Police, who visited the spot, one proceeding to Goa from Arakalgud in Hassan district was involved in an accident with another car heading from Bengaluru to Shirdi near Belligatti around 4.30 a.m. One car was parked by the roadside, and was hit by the other from behind.\nNine persons were travelling in two cars. Four persons were injured.After the injured persons were taken to KIMS Hospital in Hubballi, the remaining five were reportedly standing by the roadside when a truck hit one of the cars and ran over them, killing four of them on the spot. One person was injured and was shifted to the hospital, he said.\n Poor visibility due to fog is said to be the reason for the accidents.District in-charge minister Santosh Lad visited KIMS Hospital and enquired about the health of the injured.Kundagol police have registered a case. The driver of the truck has been taken into custody."
                  )
              ),


              Padding(
                  padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 0),
                  child: Text("Bengaluru witnessed 174 fatalities in accidents in the first two months of 2024",
                      style:TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      )
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Container(
                      child: Image.asset('images/acci3.png',
                        width: 600,
                        height: 220,
                        fit: BoxFit.cover,)),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 0),
                  child: Text(
                    "Bengaluru witnessed 174 fatalities in accidents in the first two months of 2024, while in 2023, there were 914 fatalities, said Joint Commissioner of Police (Traffic) M.N. Anucheth.\n Addressing a road safety campaign organised by the Bangalore Chamber of Industry and Commerce (BCIC) on March 12, he said Bengaluru has a population of 1.4 crore with a traffic density of 827 vehicles per 1,000 persons, which is the highest for any city in India. The vehicle-to-population ratio is 1:1, and it is growing exponentially.\n He said around 10% of the total fatalities were at Devanahalli due to the high speeds on the elevated corridor. This is followed by Kengeri due to the NICE Road. In 2023, among the 914 fatalities, 74% were people on two-wheelers, while 21% were pedestrians. Alarmingly, 60% of those affected were aged 60 or above.\n At the event, which was organised during National Safety Month 2024, he highlighted the various measures taken by the Bengaluru police to enhance traffic management, curb accidents, and bolster road safety across the city.The city traffic police are working on implementing advanced technologies, such as AI, Big Data and IOT based solutions, to optimise traffic flow, reduce congestion and enhance safety.\n Mr. Anucheth said that some of the major tech enhancements and initiatives that will be implemented or are under implementation are AI-based adaptive signals to reduce delay at junctions, AI-based enforcement, user-friendly digital platforms to report violations and check traffic updates, and collaboration with research and educational institutions for innovative solutions.\n “Our primary goal is to understand the dynamics of congestion – its causes, locations, and mitigation strategies. To achieve this, we’ve developed ASTraM (Actionable Intelligence for Sustainable Traffic Management), a system that harnesses data from diverse sources to monitor congestion patterns.\n Dr. S. Devarajan, President-BCIC said, “The ever-increasing traffic congestion in Bengaluru is posing a great challenge to the traffic management system in the city. Bengaluru currently has the largest number of privately owned vehicles for any city in India. The significant improvement in the city’s traffic, as a result of several initiatives undertaken by the Bengaluru Police, is commendable. BCIC is fully supportive of the traffic police across all fronts. BCIC is committed to partnering with all our members to enhance last-mile connectivity, thereby promoting the usage of metro services among employees, an effort that could result in reducing vehicles on the roads.”"
                  )
              ),

    ]
    )
    )
    );
  }
}




class publicmainpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(child: Text('Accidents')),
              Tab(child: Text('Analytics')),
              Tab(child: Text('Report')),
              Tab(child: Text('Tips')),
            ],
          ),
          title: Text('Accident data analytics'),
        ),
        body: TabBarView(
          children: [
            MypublicomePage(),
            thirdRoute(),
            fourthRoute(),
            fifthRoute(),
          ],
        ),
      ),
    );
  }
}

class thirdRoute extends StatefulWidget {
  @override
  _thirdRoute createState() => new _thirdRoute();
}
class _thirdRoute extends State<thirdRoute>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
    home: Scaffold(
        backgroundColor: Colors.white,
    body:  ListView(
    children:[
    Padding(
    padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 20.0),
    child: Text('Red Zones',
    style: TextStyle(
    fontSize: 23,
      fontWeight: FontWeight.w600,
        color: Colors.red
    ),
    ),
    ),
      SizedBox(
        height: 400,
        width: 400,
        child: FlutterMap(
          options: MapOptions(
            initialCenter: LatLng(15.3173, 75.7139),
            initialZoom: 7,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(12.9716, 77.5946),
                  child: Icon(Icons.location_pin, color: Colors.red, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(13.3379, 77.1173),
                  child: Icon(Icons.location_pin, color: Colors.red, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(12.9700, 77.6536),
                  child: Icon(Icons.location_pin, color: Colors.red, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(13.0033, 76.1004),
                  child: Icon(Icons.location_pin, color: Colors.red, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(12.5218, 76.8951),
                  child: Icon(Icons.location_pin, color: Colors.red, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(16.1681, 74.7805),
                  child: Icon(Icons.location_pin, color: Colors.red, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(14.2251, 76.3980),
                  child: Icon(Icons.location_pin, color: Colors.red, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(13.9299, 75.5681),
                  child: Icon(Icons.location_pin, color: Colors.red, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(12.1873, 76.3637),
                  child: Icon(Icons.location_pin, color: Colors.red, size: 50.0,),
                ),
              ],
            ),
            RichAttributionWidget(
              attributions: [
                TextSourceAttribution('OpenStreetMap contributors',
                  onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
                )
              ],
            )
          ],

        ),
      ),
    Padding(
    padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 0),
    child: Text(
      "Red Zones are geographical areas within Karnataka that exhibit a high frequency of road accidents. These locations are typically marked by a combination of factors such as heavy traffic congestion, poor road conditions, inadequate signage, lack of enforcement of traffic rules, and sometimes even natural geographical features that contribute to hazardous driving conditions."
    )
    ),

      Padding(
        padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 20.0),
        child: Text('Orange Zones',
          style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w600,
              color: Colors.orange,
          ),
        ),
      ),
      SizedBox(
        height: 400,
        width: 400,
        child: FlutterMap(
          options: MapOptions(
            initialCenter: LatLng(15.3173, 75.7139),
            initialZoom: 7,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(12.7209, 77.2799),
                  child: Icon(Icons.location_pin, color: Colors.orange, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(13.3409, 74.7421),
                  child: Icon(Icons.location_pin, color: Colors.orange, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(14.7937, 74.6869),
                  child: Icon(Icons.location_pin, color: Colors.orange, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(17.9104, 77.5199),
                  child: Icon(Icons.location_pin, color: Colors.orange, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(12.9141, 74.8560),
                  child: Icon(Icons.location_pin, color: Colors.orange, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(14.4644, 75.9218),
                  child: Icon(Icons.location_pin, color: Colors.orange, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(16.8302, 75.7100),
                  child: Icon(Icons.location_pin, color: Colors.orange, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(13.3161, 75.7720),
                  child: Icon(Icons.location_pin, color: Colors.orange, size: 50.0,),
                ),
              ],
            ),MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(12.8438, 75.2479),
                  child: Icon(Icons.location_pin, color: Colors.orange, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(16.1691, 75.6615),
                  child: Icon(Icons.location_pin, color: Colors.orange, size: 50.0,),
                ),
              ],
            ),

            RichAttributionWidget(
              attributions: [
                TextSourceAttribution('OpenStreetMap contributors',
                  onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
                )
              ],
            )
          ],

        ),
      ),
      Padding(
          padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 0),
          child: Text(
            "Orange Zones are regions within Karnataka that experience a notable frequency of road accidents, albeit to a lesser extent compared to Red Zones. These areas often share similarities with Red Zones in terms of contributing factors but may exhibit slightly lower accident rates or severity."
          )
      ),

      Padding(
        padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 20.0),
        child: Text('Blue Zones',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w600,
            color: Colors.blue,
          ),
        ),
      ),
      SizedBox(
        height: 400,
        width: 400,
        child: FlutterMap(
          options: MapOptions(
            initialCenter: LatLng(15.3173, 75.7139),
            initialZoom: 7,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(12.2958, 76.6394),
                  child: Icon(Icons.location_pin, color: Colors.blue, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(14.7951, 75.3991),
                  child: Icon(Icons.location_pin, color: Colors.blue, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(17.3297, 76.8343),
                  child: Icon(Icons.location_pin, color: Colors.blue, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(13.4355, 77.7315),
                  child: Icon(Icons.location_pin, color: Colors.blue, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(16.2160, 77.3566),
                  child: Icon(Icons.location_pin, color: Colors.blue, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(13.1362, 78.1291),
                  child: Icon(Icons.location_pin, color: Colors.blue, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(15.8497, 74.4977),
                  child: Icon(Icons.location_pin, color: Colors.blue, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(15.3505, 76.1567),
                  child: Icon(Icons.location_pin, color: Colors.blue, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(11.9261, 76.9437),
                  child: Icon(Icons.location_pin, color: Colors.blue, size: 50.0,),
                ),
              ],
            ),

            RichAttributionWidget(
              attributions: [
                TextSourceAttribution('OpenStreetMap contributors',
                  onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
                )
              ],
            )
          ],

        ),
      ),
      Padding(
          padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 0),
          child: Text(
            "Blue Zones are geographical areas within Karnataka characterized by a moderate frequency of road accidents, ranking third in terms of accident occurrence. While not as severe as Red or Orange Zones, these areas still warrant attention and intervention to mitigate risks and improve road safety."
          )
      ),


      Padding(
        padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 20.0),
        child: Text('Green Zones',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w600,
            color: Colors.green,
          ),
        ),
      ),
      SizedBox(
        height: 400,
        width: 400,
        child: FlutterMap(
          options: MapOptions(
            initialCenter: LatLng(15.3173, 75.7139),
            initialZoom: 7,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(15.1394, 76.9214),
                  child: Icon(Icons.location_pin, color: Colors.green, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(12.3375, 75.8069),
                  child: Icon(Icons.location_pin, color: Colors.green, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(12.3375, 75.8069),
                  child: Icon(Icons.location_pin, color: Colors.green, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(15.4589, 75.0078),
                  child: Icon(Icons.location_pin, color: Colors.green, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(17.3297, 76.8343),
                  child: Icon(Icons.location_pin, color: Colors.green, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(15.3647, 75.1240),
                  child: Icon(Icons.location_pin, color: Colors.green, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(16.7626, 77.1442),
                  child: Icon(Icons.location_pin, color: Colors.green, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(15.4315, 75.6355),
                  child: Icon(Icons.location_pin, color: Colors.green, size: 50.0,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(12.9585, 78.2710),
                  child: Icon(Icons.location_pin, color: Colors.green, size: 50.0,),
                ),
              ],
            ),

            RichAttributionWidget(
              attributions: [
                TextSourceAttribution('OpenStreetMap contributors',
                  onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
                )
              ],
            )
          ],

        ),
      ),
      Padding(
          padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 10),
          child: Text(
            "Green Zones denote geographical areas within Karnataka characterized by a controlled level of road accidents, occupying the fourth position in terms of accident frequency. While they may not experience the same intensity of accidents as Red, Orange, or Blue Zones, they still represent areas with existing road safety concerns that demand continual monitoring and management."
          )
      ),


    ]
    )
    )
    );
  }

}

class fourthRoute extends StatelessWidget {
  const fourthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5, bottom: 0),
              child: Center(
                child: Container(

                    child: Image.asset('images/report.jpeg',
                      width: 600,
                      height: 220,
                      fit: BoxFit.cover,)),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 10, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Accident location district name',
                    hintText: 'Enter location district'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 10, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter location area name',
                    hintText: 'Enter location area name'),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 10, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Accident nearest landmark',
                    hintText: 'Enter location nearest landmark'),
              ),
            ),

            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 10, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Accident occured time',
                    hintText: 'Enter accident time'),
              ),
            ),

            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 10, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Vehicle involved',
                    hintText: 'Enter vehicle involved'),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'No of persons',
                    hintText: 'Enter no of persons'),
              ),
            ),
            SizedBox(
              height: 65,
              width: 360,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                  child: ElevatedButton(
                    child: Text( 'Report accident ', style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => sixthRoute()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan, // Background color
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class fifthRoute extends StatelessWidget {
  const fifthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
        Padding(
        padding: const EdgeInsets.only(
            left: 15.0, right: 15.0, top: 5, bottom: 0),
          child: InteractiveViewer(
              child: Image.asset('images/tips.jpg',
                width: 600,
                height: 220,
                fit: BoxFit.cover,)),
      ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
               child: Text(
                 "1. Obey Traffic Laws: Adhere to speed limits, traffic signals, stop signs, and other road signs. They are in place to ensure the safety of all road users."
               ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: Text(
                "2. Stay Alert and Focused: Avoid distractions such as texting, talking on the phone, or adjusting music while driving. Keep your eyes on the road and be aware of your surroundings."
                )
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: Text(
                  "3. Maintain Safe Following Distance: Leave ample space between your vehicle and the one in front of you. This gives you enough time to react to sudden stops or changes in traffic flow."
                  )
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: Text(
                  "4. Use Turn Signals: Always use your turn signals to indicate your intentions to other drivers. This helps reduce the risk of collisions when changing lanes or making turns."
                  )
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: Text(
                  "5. Check Blind Spots: Before changing lanes or merging into traffic, check your blind spots by looking over your shoulder. This ensures that you are aware of any vehicles that may not be visible in your mirrors."
                  )
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: Text(
                  "6. Avoid Aggressive Driving: Keep your emotions in check and avoid aggressive behaviors such as tailgating, weaving in and out of traffic, or honking unnecessarily. Patience and courtesy go a long way in preventing accidents."
                  )
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: Text(
                    "7. Drive Defensively: Anticipate the actions of other drivers and be prepared to react to unexpected maneuvers. Defensive driving means staying vigilant and being ready to take evasive action if needed."
                  )
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: Text(
                  "8. Buckle Up: Always wear your seatbelt, and ensure that all passengers in your vehicle do the same. Seatbelts save lives and significantly reduce the risk of injury in the event of a crash."
                  )
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: Text(
                  "9. Watch for Pedestrians and Cyclists: Be mindful of pedestrians crossing the street and cyclists sharing the road. Yield to them when necessary and give them plenty of space."
                  )
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: Text(
                  "10. Avoid Driving Under the Influence: Never drive under the influence of alcohol, drugs, or medications that impair your ability to operate a vehicle safely. Arrange for a designated driver or use alternative transportation if you are impaired."
                  )
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: Text(
                  "11. Maintain Your Vehicle: Regularly inspect your vehicle for any mechanical issues, including brakes, tires, lights, and fluid levels. Proper maintenance helps ensure that your vehicle operates safely on the road."
                  )
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 20),
                  child: Text(
                  "12. Stay Updated on Road Conditions: Be aware of weather conditions, construction zones, and any road closures or detours along your route. Adjust your driving accordingly to navigate safely through these conditions."
                  )
              ),
      ]
    )
      )

    );
  }
}



class sixthRoute extends StatelessWidget {
  const sixthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Text(
          "Thanks for Reporting", style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w500,
          color: Colors.deepOrangeAccent
        ),
        )
        ),
    );
  }
}


class psixthRoute extends StatelessWidget {
  const psixthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  SingleChildScrollView(
      child: Column(
          children: <Widget>[
      Padding(
      padding: const EdgeInsets.only(top:10.0, bottom: 10.0, right:0,left:220),
        child: Text('Reportted : 2mins ago',
          style: TextStyle(
              fontSize: 12,
              color: Colors.black
          ),
        ),
      ),
            Padding(
              padding: const EdgeInsets.only(top:10.0, bottom: 10.0, right:10,left:0),
              child: Text('1.   Accident Location : Bangalore \n      Location area name : Ashok nagar \n      Nearest landmark : Public school \n      Vehicle involved : Two wheeler-Scooty \n      No of Persons : 2',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                    color: Colors.red
                ),
              ),
            ),
    ]
      )
        )
    );
  }
}

class policemainpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(child: Text('Analytics')),
              Tab(child: Text('Zones')),
              Tab(child: Text('Chatbot')),
              Tab(child: Text('Recents')),
            ],
          ),
          title: Text('Accident data analytics'),
        ),
        body: TabBarView(
          children: [
            pfifthRoute(),
            pthirdRoute(),
            pseventhhRoute(),
            psixthRoute(),
          ],
        ),
      ),
    );
  }
}



class pseventhhRoute extends StatefulWidget {
  @override
  _pseventhhRoute createState() => new _pseventhhRoute();
}

class _pseventhhRoute extends State<pseventhhRoute> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body:  SingleChildScrollView(
                child: Column(
                    children: <Widget>[
                Padding(
                padding: const EdgeInsets.only(top:100.0, bottom: 110.0, right:10,left:10),
                child: Center(
                  child: Text('Chat with our AI chatbot and get solutions, \nWhere our bot serves as your trusted companion in navigating accident data analytics. With our cutting-edge technology, we provide invaluable insights into accident trends, patterns, and statistical analyses.\nWhether you are a professional in the field of transportation planning, our bot is here to empower you with comprehensive data-driven insights. \nFrom visualizing accident hotspots to identifying risk factors, our bot is your go-to resource for understanding and mitigating accidents. Let\'s embark on a journey towards safer roads together.',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w200,
                        color: Colors.black
                    ),
                  ),
                ),
              ),
                      SizedBox(
                        height: 65,
                        width: 200,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: ElevatedButton(
                              child: Text('Start ',
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (
                                      context) => ansstart()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.cyan, // Background color
                              ),
                            ),
                          ),
                        ),
                      ),
        ]
    )
    )
        )
    );
  }
}

class ansstart extends StatefulWidget {
  @override
  _ansstart createState() => new _ansstart();
}

class _ansstart extends State<ansstart> {

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Chatbot"),

        actions: <Widget>[
    Padding(
    padding: EdgeInsets.only(right: 20.0),
    child: GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (
            context) => policemainpage()),
      );
    },
    child: Icon(
    Icons.home,
    size: 26.0,
    ),
    )
    ),
    ]
    ),
        body:  SingleChildScrollView(
                child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 180.0,bottom:180),
                        child: Center(
                          child: Container(
                              child: Image.asset('images/logomap.png',
                                width: 600,
                                height: 220,
                                fit: BoxFit.cover,)),
                        ),
                      ),

                      Padding(
                        //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextField(
                          style: TextStyle(
                              color: Colors.black
                          ),
                          decoration: InputDecoration(
                            labelStyle: TextStyle(color:Colors.black),
                            focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.cyan, width: 1.5)
                            ),
                            labelText: 'Enter your Queries here......',),
                        ),
                      ),
                      SizedBox(
                        height: 65,
                        width: 200,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: ElevatedButton(
                              child: Text('Ask ',
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (
                                      context) => ans1()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.cyan, // Background color
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]
                )
            )
        );
  }
}


class ans1 extends StatefulWidget {
  @override
  _ans1 createState() => new _ans1();
}

class _ans1 extends State<ans1> {

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Chatbot"),
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (
                            context) => policemainpage()),
                      );
                    },
                    child: Icon(
                      Icons.home,
                      size: 26.0,
                    ),
                  )
              ),
            ]
        ),
        body:  SingleChildScrollView(
            child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0, bottom: 10.0, right: 340),
                    child: Center(
                      child: Text('YOU',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Colors.cyan
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only( bottom: 20.0, right: 160),
                    child: Center(
                      child: Text('Top 5 accident prone zones?',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0, bottom: 10.0, right: 340),
                    child: Center(
                      child: Text('BOT',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Colors.cyan
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only( bottom: 330.0, right: 10),
                    child: Center(
                      child: Text('Top 5 accident prone zones in Bengaluru was:\n   1) K.R.Puram Traffic PS \n   2) Yelanhanka Traffic PS \n   3) Peenya Traffic Ps \n   4) Kamakshipalya Traffic PS \n   5) Whitefield Traffic PS',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      style: TextStyle(
                          color: Colors.black
                      ),
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color:Colors.black),
                        focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyan, width: 1.5)
                        ),
                        labelText: 'Enter your Queries here......',),
                    ),
                  ),
                  SizedBox(
                    height: 65,
                    width: 200,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: ElevatedButton(
                          child: Text('Ask ',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (
                                  context) => ans2()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyan, // Background color
                          ),
                        ),
                      ),
                    ),
                  ),
                ]
            )
        )
    );
  }
}

class ans2 extends StatefulWidget {
  @override
  _ans2 createState() => new _ans2();
}

class _ans2 extends State<ans2> {

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Chatbot"),
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (
                            context) => policemainpage()),
                      );
                    },
                    child: Icon(
                      Icons.home,
                      size: 26.0,
                    ),
                  )
              ),
            ]
        ),
        body:  SingleChildScrollView(
            child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0, bottom: 10.0, right: 340),
                    child: Center(
                      child: Text('YOU',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Colors.cyan
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only( bottom: 20.0, right: 160),
                    child: Center(
                      child: Text('Top 5 accident prone zones?',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0, bottom: 10.0, right: 340),
                    child: Center(
                      child: Text('BOT',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Colors.cyan
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only( bottom: 20.0, left:10, right:25),
                    child: Center(
                      child: Text('Top 5 accident prone zones in Bengaluru was:\n   1) K.R.Puram Traffic PS \n   2) Yelanhanka Traffic PS \n   3) Peenya Traffic Ps \n   4) Kamakshipalya Traffic PS \n   5) Whitefield Traffic PS',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0, bottom: 10.0, right: 340),
                    child: Center(
                      child: Text('YOU',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Colors.cyan
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only( bottom: 20.0, right: 180),
                    child: Center(
                      child: Text('Highest traffic prone unit?',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0, bottom: 10.0, right: 340),
                    child: Center(
                      child: Text('BOT',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Colors.cyan
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only( bottom: 140.0, left:20),
                    child: Center(
                      child: Text('The highest traffic prone area in Bengaluru city was : \n   1) Silk border junction',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      style: TextStyle(
                          color: Colors.black
                      ),
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color:Colors.black),
                        focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyan, width: 1.5)
                        ),
                        labelText: 'Enter your Queries here......',),
                    ),
                  ),
                  SizedBox(
                    height: 65,
                    width: 200,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: ElevatedButton(
                          child: Text('Ask ',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () { },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyan, // Background color
                          ),
                        ),
                      ),
                    ),
                  ),
                ]
            )
        )
    );
  }
}




  class pthirdRoute extends StatefulWidget {
  @override
  _pthirdRoute createState() => new _pthirdRoute();
}
class _pthirdRoute extends State<pthirdRoute>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            body:  ListView(
                children:[
                  Padding(
                    padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 20),
                    child: Text('Red Zones',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: Colors.red
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 400,
                    width: 400,
                    child: FlutterMap(
                      options: MapOptions(
                        initialCenter: LatLng(15.3173, 75.7139),
                        initialZoom: 7,
                      ),
                      children: [
                        TileLayer(
                          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                          userAgentPackageName: 'com.example.app',
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(12.9716, 77.5946),
                              child: Icon(Icons.location_pin, color: Colors.red, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(13.3379, 77.1173),
                              child: Icon(Icons.location_pin, color: Colors.red, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(12.9700, 77.6536),
                              child: Icon(Icons.location_pin, color: Colors.red, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(13.0033, 76.1004),
                              child: Icon(Icons.location_pin, color: Colors.red, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(12.5218, 76.8951),
                              child: Icon(Icons.location_pin, color: Colors.red, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(16.1681, 74.7805),
                              child: Icon(Icons.location_pin, color: Colors.red, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(14.2251, 76.3980),
                              child: Icon(Icons.location_pin, color: Colors.red, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(13.9299, 75.5681),
                              child: Icon(Icons.location_pin, color: Colors.red, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(12.1873, 76.3637),
                              child: Icon(Icons.location_pin, color: Colors.red, size: 50.0,),
                            ),
                          ],
                        ),
                        RichAttributionWidget(
                          attributions: [
                            TextSourceAttribution('OpenStreetMap contributors',
                              onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
                            )
                          ],
                        )
                      ],

                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 0),
                      child: Text(
                          "Click the below button to view detailed analysis of Red zone districts"
                      )
                  ),

                  SizedBox(
                    height: 65,
                    width: 360,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                        child: ElevatedButton(
                          child: Text( 'Red Zone Analytics ', style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => redzone()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red, // Background color
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 20),
                    child: Text('Orange Zones',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 400,
                    width: 400,
                    child: FlutterMap(
                      options: MapOptions(
                        initialCenter: LatLng(15.3173, 75.7139),
                        initialZoom: 7,
                      ),
                      children: [
                        TileLayer(
                          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                          userAgentPackageName: 'com.example.app',
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(12.7209, 77.2799),
                              child: Icon(Icons.location_pin, color: Colors.orange, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(13.3409, 74.7421),
                              child: Icon(Icons.location_pin, color: Colors.orange, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(14.7937, 74.6869),
                              child: Icon(Icons.location_pin, color: Colors.orange, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(17.9104, 77.5199),
                              child: Icon(Icons.location_pin, color: Colors.orange, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(12.9141, 74.8560),
                              child: Icon(Icons.location_pin, color: Colors.orange, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(14.4644, 75.9218),
                              child: Icon(Icons.location_pin, color: Colors.orange, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(16.8302, 75.7100),
                              child: Icon(Icons.location_pin, color: Colors.orange, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(13.3161, 75.7720),
                              child: Icon(Icons.location_pin, color: Colors.orange, size: 50.0,),
                            ),
                          ],
                        ),MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(12.8438, 75.2479),
                              child: Icon(Icons.location_pin, color: Colors.orange, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(16.1691, 75.6615),
                              child: Icon(Icons.location_pin, color: Colors.orange, size: 50.0,),
                            ),
                          ],
                        ),

                        RichAttributionWidget(
                          attributions: [
                            TextSourceAttribution('OpenStreetMap contributors',
                              onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
                            )
                          ],
                        )
                      ],

                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 0),
                      child: Text(
                          "Click the below button to view detailed analysis of orange zone districts"
                      )
                  ),

                  SizedBox(
                    height: 65,
                    width: 360,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                        child: ElevatedButton(
                          child: Text( 'Orange Zone Analytics ', style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => orangezone()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange, // Background color
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 20),
                    child: Text('Blue Zones',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 400,
                    width: 400,
                    child: FlutterMap(
                      options: MapOptions(
                        initialCenter: LatLng(15.3173, 75.7139),
                        initialZoom: 7,
                      ),
                      children: [
                        TileLayer(
                          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                          userAgentPackageName: 'com.example.app',
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(12.2958, 76.6394),
                              child: Icon(Icons.location_pin, color: Colors.blue, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(14.7951, 75.3991),
                              child: Icon(Icons.location_pin, color: Colors.blue, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(17.3297, 76.8343),
                              child: Icon(Icons.location_pin, color: Colors.blue, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(13.4355, 77.7315),
                              child: Icon(Icons.location_pin, color: Colors.blue, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(16.2160, 77.3566),
                              child: Icon(Icons.location_pin, color: Colors.blue, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(13.1362, 78.1291),
                              child: Icon(Icons.location_pin, color: Colors.blue, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(15.8497, 74.4977),
                              child: Icon(Icons.location_pin, color: Colors.blue, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(15.3505, 76.1567),
                              child: Icon(Icons.location_pin, color: Colors.blue, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(11.9261, 76.9437),
                              child: Icon(Icons.location_pin, color: Colors.blue, size: 50.0,),
                            ),
                          ],
                        ),

                        RichAttributionWidget(
                          attributions: [
                            TextSourceAttribution('OpenStreetMap contributors',
                              onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
                            )
                          ],
                        )
                      ],

                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 0),
                      child: Text(
                      "Click the below button to view detailed analysis of blue zone districts"
                      )
                  ),

                  SizedBox(
                    height: 65,
                    width: 360,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                        child: ElevatedButton(
                          child: Text( 'Blue Zone Analytics ', style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => bluezone()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue, // Background color
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 20),
                    child: Text('Green Zones',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 400,
                    width: 400,
                    child: FlutterMap(
                      options: MapOptions(
                        initialCenter: LatLng(15.3173, 75.7139),
                        initialZoom: 7,
                      ),
                      children: [
                        TileLayer(
                          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                          userAgentPackageName: 'com.example.app',
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(15.1394, 76.9214),
                              child: Icon(Icons.location_pin, color: Colors.green, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(12.3375, 75.8069),
                              child: Icon(Icons.location_pin, color: Colors.green, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(12.3375, 75.8069),
                              child: Icon(Icons.location_pin, color: Colors.green, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(15.4589, 75.0078),
                              child: Icon(Icons.location_pin, color: Colors.green, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(17.3297, 76.8343),
                              child: Icon(Icons.location_pin, color: Colors.green, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(15.3647, 75.1240),
                              child: Icon(Icons.location_pin, color: Colors.green, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(16.7626, 77.1442),
                              child: Icon(Icons.location_pin, color: Colors.green, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(15.4315, 75.6355),
                              child: Icon(Icons.location_pin, color: Colors.green, size: 50.0,),
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(12.9585, 78.2710),
                              child: Icon(Icons.location_pin, color: Colors.green, size: 50.0,),
                            ),
                          ],
                        ),

                        RichAttributionWidget(
                          attributions: [
                            TextSourceAttribution('OpenStreetMap contributors',
                              onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
                            )
                          ],
                        )
                      ],

                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 0),
                      child: Text(
                          "Click the below button to view detailed analysis of green zone districts"
                      )
                  ),

                  SizedBox(
                    height: 65,
                    width: 360,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                        child: ElevatedButton(
                          child: Text( 'Green Zone Analytics ', style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => greenzone()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green, // Background color
                          ),
                        ),
                      ),
                    ),
                  ),

                ]
            )
        )
    );
  }

}

class pfifthRoute extends StatelessWidget {
  const pfifthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
              children: <Widget>[

        ColoredBox(
            color: Colors.cyan,
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
          child:Row(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                 "Total accidents \n 3.5K",
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w800,
          ),),
              Text(
                  "Fatal \n 500",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),),
              Text(
                  "Sereious \n 800",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),),
              Text(
                  "Slight \n 2.7K",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),),
            ],
          )
        )
        ),
            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 10),),

                SizedBox(
                  height: 600,
                  width: 400,
                  child: FlutterMap(
                    options: MapOptions(
                      initialCenter: LatLng(12.9700, 77.6536),
                      initialZoom: 12,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                        userAgentPackageName: 'com.example.app',
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.9420, 77.6083),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(13.1994, 77.7085),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.9719, 77.6070),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(13.0104, 77.6482),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.9255, 77.5468),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.9406, 77.5738),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.9304, 77.6784),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.9902, 77.4794),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(13.0598, 77.5933),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.9709, 77.5763),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(13.1699, 77.6349),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.9647, 77.5768),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.9779, 77.5952),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(13.1508, 77.7088),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.8452, 77.6602),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.5759,77.3513),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(13.0354, 77.5988),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.9855, 77.5269),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.8997, 77.4827),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.9044, 77.5649),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.9226, 77.6174),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.9577, 77.2261),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(13.0055, 77.5692),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.9128, 77.6043),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(13.0285, 77.5197),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(13.0247, 77.5948),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.9982, 77.5530),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(13.0068, 77.5813),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.8691, 77.5342),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.9537, 77.5777),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.9756, 77.5354),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.9698, 77.7500),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(12.9482, 77.5972),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(13.1155, 77.6070),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(13.0250, 77.5340),
                            child: Icon(Icons.location_pin, color: Colors.red,size: 40,),
                          ),
                        ],
                      ),


                      RichAttributionWidget(
                        attributions: [
                          TextSourceAttribution('OpenStreetMap contributors',
                            onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
                          )
                        ],
                      )
                    ],

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 10),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/summary.png',
                          width: 400,
                          height: 600,
                          fit: BoxFit.cover,)),),),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 10),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/0rep1.png',
                          fit: BoxFit.fill,)),),),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 10),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/0rep2.png',
                          fit: BoxFit.fill,)),),),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 10),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/0rep3.png',
                          fit: BoxFit.fill,)),),),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 10),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/0rep4.png',
                          fit: BoxFit.fitWidth,)),),),


        ColoredBox(
            color: Colors.cyan,
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                Column(
                children: [
                Icon(Icons.bike_scooter, color: Colors.black),
                const Text('Bikes'),
                const Text('700'),
              ],
          ),
            Column(
              children: [
                Icon(Icons.bus_alert, color: Colors.black),
                const Text('Buses'),
                const Text('100'),
              ],
            ),
                      Column(
                        children: [
                          Icon(Icons.car_crash_outlined, color: Colors.black),
                          const Text('Cars'),
                          const Text('800'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.local_shipping, color: Colors.black),
                          const Text('Goods'),
                          const Text('400'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.stop_circle_outlined, color: Colors.black),
                          const Text('Others'),
                          const Text('1000'),
                        ],
                      )
                    ],
                )
        )
        ),

                ]
          )
        )
    );
  }
}


class redzone extends StatelessWidget {
  const redzone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Red Zone Analytics"),
          actions: [
            IconButton(
              onPressed: () {
                // method to show the search bar
                showSearch(
                    context: context,
                    // delegate to customize the search bar
                    delegate: CustomSearchDelegate()
                );
              },
              icon: const Icon(Icons.search),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 0),
                      child: Text(
                          "Click the below button to view detailed analysis of each districts"
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1bangalorezone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Bengaluru City', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Bengaluru_City()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1tumakuruzone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Tumakuru', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Tumakuru()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1bangalorezone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Bengaluru Dist', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Bengaluru_Dist()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1hassanzone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Hassan', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Hassan()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1mandyazone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Mandya', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Mandya()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1belagavizone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Belagavi Dist', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Belagavi_Dist()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1chitradurgazone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Chitradurga', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Chitradurga()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1shimogazone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Shivamogga', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Shivamogga()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1mysorezone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Mysuru Dist', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Mysuru_Dist()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red, // Background color
                        ),),),),),

                ]
            )
        )

    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
// Demo list to show querying
  List<String> searchTerms = [
    "Bangalore city",
    "Tumakuru",
    "Bangalore district",
    "Hassan",
    "Mandya",
    "Belagavi District",
    "Chitradurga",
    "Shivamogga",
    "Mysore District",
  ];

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var dist in searchTerms) {
      if (dist.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(dist);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var dist in searchTerms) {
      if (dist.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(dist);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}




class Bengaluru_City extends StatelessWidget {
  const Bengaluru_City({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 0),
                child: Text(
                  "Accident trends overtime", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                ),
                )
            ),

      Padding(
      padding: const EdgeInsets.only(
          left: 15.0, right: 15.0, top: 5, bottom: 0),
      child: Center(
        child: Container(
            child: Image.asset('images/full.jpeg',
              fit: BoxFit.fill,)),),),
    Padding(
    padding: const EdgeInsets.only(
    left: 15.0, right: 15.0, top: 5, bottom: 0),
          child: Text(
            "Analysis based on Age", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
          ),
          )
    ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5, bottom: 0),
              child: Center(
                child: Container(
                    child: Image.asset('images/bangaluruage.png',
                      fit: BoxFit.fill,)),),),

            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 0),
                child: Text(
                  "Analysis based on Areas", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5, bottom: 0),
              child: Center(
                child: Container(
                    child: Image.asset('images/bangaluruareas.png',
                      fit: BoxFit.fill,)),),),

            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 0),
                child: Text(
                  "Analysis based on Collision Type", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5, bottom: 0),
              child: Center(
                child: Container(
                    child: Image.asset('images/bangalurucol.png',
                      fit: BoxFit.fill,)),),),

            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 0),
                child: Text(
                  "Analysis based on Collision Type-2", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5, bottom: 0),
              child: Center(
                child: Container(
                    child: Image.asset('images/bangalurucol2.png',
                      fit: BoxFit.fill,)),),),

            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 0),
                child: Text(
                  "Analysis based on Road Environment", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5, bottom: 0),
              child: Center(
                child: Container(
                    child: Image.asset('images/bangaluruenvi.png',
                      fit: BoxFit.fill,)),),),

            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 0),
                child: Text(
                  "Analysis based on Non-Wearning Helmet", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5, bottom: 0),
              child: Center(
                child: Container(
                    child: Image.asset('images/bangaluruhelment.png',
                      fit: BoxFit.fill,)),),),

            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 0),
                child: Text(
                  "Analysis based on Impacting Vehicles", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5, bottom: 0),
              child: Center(
                child: Container(
                    child: Image.asset('images/bangaluruimp.png',
                      fit: BoxFit.fill,)),),),

            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 0),
                child: Text(
                  "Analysis based on Injured Types", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5, bottom: 0),
              child: Center(
                child: Container(
                    child: Image.asset('images/bangaluruinjured.png',
                      fit: BoxFit.fill,)),),),

            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 0),
                child: Text(
                  "Analysis based on Junction Type", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5, bottom: 0),
              child: Center(
                child: Container(
                    child: Image.asset('images/bangalurujunc.png',
                      fit: BoxFit.fill,)),),),

            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 0),
                child: Text(
                  "Analysis based on Licence", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5, bottom: 0),
              child: Center(
                child: Container(
                    child: Image.asset('images/bangalurulicense.png',
                      fit: BoxFit.fill,)),),),

            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 0),
                child: Text(
                  "Analysis based on Load Type", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5, bottom: 0),
              child: Center(
                child: Container(
                    child: Image.asset('images/bangaluruload.png',
                      fit: BoxFit.fill,)),),),

            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 0),
                child: Text(
                  "Analysis based on Road Features", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5, bottom: 0),
              child: Center(
                child: Container(
                    child: Image.asset('images/bangalururoad.png',
                      fit: BoxFit.fill,)),),),

            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 0),
                child: Text(
                  "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5, bottom: 0),
              child: Center(
                child: Container(
                    child: Image.asset('images/bangaluruseat.png',
                      fit: BoxFit.fill,)),),),

            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 0),
                child: Text(
                  "Analysis based on Gender", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5, bottom: 0),
              child: Center(
                child: Container(
                    child: Image.asset('images/bangalurusex.png',
                      fit: BoxFit.fill,)),),),

            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 0),
                child: Text(
                  "Analysis based on Time", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5, bottom: 0),
              child: Center(
                child: Container(
                    child: Image.asset('images/bangalurutime.png',
                      fit: BoxFit.fill,)),),),

            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 0),
                child: Text(
                  "Analysis based on Road Type", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5, bottom: 0),
              child: Center(
                child: Container(
                    child: Image.asset('images/bangalurutypeofroad.png',
                      fit: BoxFit.fill,)),),),

            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 0),
                child: Text(
                  "Analysis based on Traffic Voilations", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5, bottom: 0),
              child: Center(
                child: Container(
                    child: Image.asset('images/bangaluruvoil.png',
                      fit: BoxFit.fill,)),),),

            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 0),
                child: Text(
                  "Analysis based on Weather", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5, bottom: 0),
              child: Center(
                child: Container(
                    child: Image.asset('images/bangaluruweather.png',
                      fit: BoxFit.fill,)),),),

         ]
        )


      ),);}}

class Tumakuru extends StatelessWidget {
  const Tumakuru({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tumakuru District Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/tumukuruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/tumukuruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/tumukurucollision.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/tumukurucollision2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/tumukuruenv.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/tumukuruhel.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/tumukuruimpactingveh.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/tumukuruinjur.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/tumukurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/tumukurudriver.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/tumukuruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/tumukururoadfeat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/tumukuruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/tumukurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/tumukurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/tumukurutyperoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/tumukuruviol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/tumukuruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )
      ),);}}

class Bengaluru_Dist extends StatelessWidget {
  const Bengaluru_Dist({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru District Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/Bengdistage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/Bengdistarea.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/Bengdistcolli.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/Bengdistcolli2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/Bengdistenv.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/Bengdisthel.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/Bengdistveh.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/Bengdistinjur.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/Bengdistjunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/Bengdistlicence.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/Bengdistload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/Bengdistroadfeatue.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/Bengdistseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/Bengdistgender.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/Bengdisttime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/Bengdistroadtype.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/Bengdistvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/Bengdistweather.png',
                          fit: BoxFit.fill,)),),),
              ]
          )
      ),);}}

class Hassan extends StatelessWidget {
  const Hassan({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hassan District Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/hassanage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/hassanarea.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/hassancolli.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/hassancolli2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/hassaneven.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/hassanhel.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/hassanimpac.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/hassaninjur.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/hassanjunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/hassanlicence.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/hassanload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/hassanroadfeat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/hassanseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/hassansex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/hassantime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/hassantyperoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/hassanvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/hassanweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Mandya extends StatelessWidget {
  const Mandya({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mandya District Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mandyaage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mandyaarea.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mandyacolli.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mandyacolli2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mandyaenv.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mandyahel.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mandyaimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mandyainjur.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mandyajunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mandyalicence.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mandyaload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mandyaroadfeat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mandyaseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mandyasex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mandyatime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mandyaroadtype.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mandyavoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mandyaweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Belagavi_Dist extends StatelessWidget {
  const Belagavi_Dist({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Belgavi District Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Chitradurga extends StatelessWidget {
  const Chitradurga({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Shivamogga extends StatelessWidget {
  const Shivamogga({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Mysuru_Dist extends StatelessWidget {
  const Mysuru_Dist({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}


class orangezone extends StatelessWidget {
  const orangezone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Orange Zone Analytics"),
          actions: [
            IconButton(
              onPressed: () {
                // method to show the search bar
                showSearch(
                    context: context,
                    // delegate to customize the search bar
                    delegate: CustomSearchDelegate1()
                );
              },
              icon: const Icon(Icons.search),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 0),
                      child: Text(
                          "Click the below button to view detailed analysis of each districts"
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1ramanagarazone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Ramanagara', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Ramanagara()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1udupzone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Udupi', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Udupi()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1uttarazone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Uttara Kannada', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Uttara_Kannada()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1bidarzone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Bidar', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Bidar()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1mangalorezone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Mangaluru City', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Mangaluru_City()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1davanagere.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Davanagere', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Davanagere()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1vijayapurzone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Vijayapur', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Vijayapur()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1chickmagalur.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Chikkamagaluru', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Chikkamagaluru()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1dakshinazone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Dakshina Kannada', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Dakshina_Kannada()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1bagalkotzone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Bagalkot', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Bagalkot()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange, // Background color
                        ),),),),),

                ]
            )
        )
    );
  }
}

class CustomSearchDelegate1 extends SearchDelegate {
// Demo list to show querying
  List<String> searchTerms = [
    "Ramanagara",
    "Udupi",
    "Uttarakhanda",
    "Bidar",
    "Mangalore",
    "Davanagere",
    "Vijayapur",
    "Chikkamangaluru",
    "Dakshinakannada",
    "Bagalkot",
  ];

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var dist in searchTerms) {
      if (dist.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(dist);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var dist in searchTerms) {
      if (dist.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(dist);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}




class Ramanagara extends StatelessWidget {
  const Ramanagara({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ramanagara District Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ramanagaraage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ramanagaraarea.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ramanagaracolli.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ramanagaracolli2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ramanagaraenv.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ramanagarahel.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ramanagaraimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ramanagarainjur.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ramanagarajunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ramanagaralicence.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ramanagaraload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ramanagararoadfeat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ramanagaraseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ramanagarasex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ramanagaratime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ramanagararoadtype.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ramanagaravoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ramanagaraweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Udupi extends StatelessWidget {
  const Udupi({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Uttara_Kannada extends StatelessWidget {
  const Uttara_Kannada({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Bidar extends StatelessWidget {
  const Bidar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Mangaluru_City extends StatelessWidget {
  const Mangaluru_City({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Davanagere extends StatelessWidget {
  const Davanagere({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Vijayapur extends StatelessWidget {
  const Vijayapur({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Chikkamagaluru extends StatelessWidget {
  const Chikkamagaluru({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Dakshina_Kannada extends StatelessWidget {
  const Dakshina_Kannada({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Bagalkot extends StatelessWidget {
  const Bagalkot({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}



class bluezone extends StatelessWidget {
  const bluezone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Blue Zone Analytics"),
          actions: [
            IconButton(
              onPressed: () {
                // method to show the search bar
                showSearch(
                    context: context,
                    // delegate to customize the search bar
                    delegate: CustomSearchDelegate2()
                );
              },
              icon: const Icon(Icons.search),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 0),
                      child: Text(
                          "Click the below button to view detailed analysis of each districts"
                      )
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1mysorezone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Mysuru City', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Mysuru_City()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1haverizone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Haveri', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Haveri()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1gulbarzone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Kalaburagi', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Kalaburagi()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1chikballapurzone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Chickballapura', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Chickballapura()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1raichurzone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Raichur', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Raichur()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1kolarzone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Kolar', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Kolar()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1koppalzone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Koppal', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Koppal()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1chamarajanagarzone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Chamarajanagar', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Chamarajanagar()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // Background color
                        ),),),),),
                ]
            )
        )
    );
  }
}

class CustomSearchDelegate2 extends SearchDelegate {
// Demo list to show querying
  List<String> searchTerms = [
    "Mysore city",
    "Haveri",
    "Kalaburagi",
    "Chikballapura",
    "Raichur",
    "Kolar",
    "Koppal",
    "Chamarajanagar",
  ];

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var dist in searchTerms) {
      if (dist.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(dist);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var dist in searchTerms) {
      if (dist.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(dist);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}




class Mysuru_City extends StatelessWidget {
  const Mysuru_City({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mysuru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mysurucityage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mysurucityarea.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mysurucitycolli.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mysurucitycolli2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mysurucityenv.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mysurucityhel.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mysurucityimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mysurucityinjur.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mysurucityjunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mysurucitylicence.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mysurucityload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mysurucityroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mysurucityseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mysurucitysex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mysurucitytime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mysurucityroadfeat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mysurucityvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/mysurucityweather.png',
                          fit: BoxFit.fill,)),),),
              ]
          )
      ),);}}

class Haveri extends StatelessWidget {
  const Haveri({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Kalaburagi extends StatelessWidget {
  const Kalaburagi({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                            fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Chickballapura extends StatelessWidget {
  const Chickballapura({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                            fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Raichur extends StatelessWidget {
  const Raichur({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Kolar extends StatelessWidget {
  const Kolar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                            fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Koppal extends StatelessWidget {
  const Koppal({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                            fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Chamarajanagar extends StatelessWidget {
  const Chamarajanagar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}


class greenzone extends StatelessWidget {
  const greenzone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Green Zone Analytics"),
          actions: [
            IconButton(
              onPressed: () {
                // method to show the search bar
                showSearch(
                    context: context,
                    // delegate to customize the search bar
                    delegate: CustomSearchDelegate3()
                );
              },
              icon: const Icon(Icons.search),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 0),
                      child: Text(
                          "Click the below button to view detailed analysis of each districts"
                      )
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1bellaryzone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Ballari', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Ballari()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Background color
                        ),),),),),

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1kodaguzone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Kodagu', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Kodagu()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1dharwadzone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Dharwad', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Dharwad()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1gulbarzone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Kalaburagi City', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Kalaburagi_City()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1dharwadzone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Hubballi Dharwad City', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Hubballi()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1yadgirzone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Yadgir', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Yadgir()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1gadagzone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'Gadag', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Gadag()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Background color
                        ),),),),),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 10),
                    child: Center(
                      child: Container(
                          child: Image.asset('images/1kgfzone.jpeg',
                            fit: BoxFit.fill,)),),),
                  SizedBox(
                    height: 65, width: 360,
                    child: Container(child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 10.0),
                      child: ElevatedButton(
                        child: Text( 'K.G.F', style: TextStyle(color: Colors.black, fontSize: 20),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => kgf()),);},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Background color
                        ),),),),),
                ]
            )
        )
    );
  }
}

class CustomSearchDelegate3 extends SearchDelegate {
// Demo list to show querying
  List<String> searchTerms = [
    "Bellary",
    "Kodagu",
    "Dharwad",
    "Kalaburagi City",
    "Hubballi Dharwad City",
    "Yadgir",
    "Gadag",
    "KGF",
  ];

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var dist in searchTerms) {
      if (dist.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(dist);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var dist in searchTerms) {
      if (dist.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(dist);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}



class Ballari extends StatelessWidget {
  const Ballari({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ballery City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ballariage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ballariarea.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ballaricoll2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ballaricolli.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ballarienv.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ballarihel.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ballariimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ballariinjur.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ballarijunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ballarilicence.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ballariload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ballariroadfeat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ballariseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ballarisex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ballaritime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ballariroadtype.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ballarivoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/ballariweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}


class Kodagu extends StatelessWidget {
  const Kodagu({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),
              ]
          )
      ),);}}

class Dharwad extends StatelessWidget {
  const Dharwad({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Kalaburagi_City extends StatelessWidget {
  const Kalaburagi_City({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Hubballi extends StatelessWidget {
  const Hubballi({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Yadgir extends StatelessWidget {
  const Yadgir({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ]
          )


      ),);}}

class Gadag extends StatelessWidget {
  const Gadag({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),

              ] ) ),);}}

class kgf extends StatelessWidget {
  const kgf({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengaluru City Analytics"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Accident trends overtime", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/full.jpeg',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Age", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruage.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Areas", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruareas.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Collision Type-2", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurucol2.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Environment", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruenvi.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-Wearning Helmet", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruhelment.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Impacting Vehicles", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruimp.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Injured Types", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruinjured.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Junction Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurujunc.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Licence", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurulicense.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Load Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ), ) ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruload.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Features", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),) ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalururoad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Non-wearing SeatBelt", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ), ) ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruseat.png',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Gender", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ), ) ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurusex.png',
                          fit: BoxFit.fill,)),),),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Time", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ), ) ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutime.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Road Type", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ), ) ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangalurutypeofroad.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Traffic Voilations", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ), ) ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruvoil.png',
                          fit: BoxFit.fill,)),),),

                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text(
                      "Analysis based on Weather", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ), ) ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5, bottom: 0),
                  child: Center(
                    child: Container(
                        child: Image.asset('images/bangaluruweather.png',
                          fit: BoxFit.fill,)),),),
              ] ),),);}}