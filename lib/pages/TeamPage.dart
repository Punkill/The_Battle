import 'package:TD/pages/AllCharactersPage.dart';
import 'package:flutter/material.dart';
import 'package:TD/models/Character.dart';
import 'package:TD/models/Player.dart';
import 'package:TD/models/Team.dart';
import 'package:TD/widgets/TeamMaster.dart';

class TeamPage extends StatefulWidget {
  TeamPage({Key key, this.player}) : super(key: key);
  final Player player;
  static const String routeName = "/team";
  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage>
{
  int _selectedIndex = 1;
  void _onTappedBottomNavigation(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
    if(_selectedIndex==0)
      Navigator.pushReplacementNamed(context, AllCharactersPage.routeName, arguments: widget.player);
  }

  Widget _showStill(List<Character> characters)
  {
    if(characters.length < 5)
    {
      return Text(
        "Still "+(5 - characters.length).toString()+" characters to add",
        style: TextStyle(
          fontFamily: 'Knewave',
          fontSize: 25,
          color : Colors.yellow
        )
      );
    }
    else
    {
      return Card(
        color : Colors.green[300],
        child : ListTile(
          leading: Padding(
            padding : EdgeInsets.all(8.0)
          ),
          title : Text(
            "Validate Your Team",
            style: TextStyle(
              fontFamily: 'Knewave',
              fontSize: 25,
              color : Colors.white
            )
          )
        )
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.red,
      appBar: AppBar(
        backgroundColor : Colors.white,
        title: Row(
          mainAxisAlignment : MainAxisAlignment.center,
          children: [
            Text(
              "My Team",
              style: TextStyle(
                fontFamily: 'Knewave',
                fontSize: 25,
                color : Colors.red
              )
            )
          ],)
      ),
      body: Center(
        child : Column(
          children: <Widget>[
            _showStill(widget.player.team.characters),
            Expanded(child : TeamMaster(player: widget.player))
          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar
      (
        items: const <BottomNavigationBarItem>
        [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Characters'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Team',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor : Colors.red[700],
        onTap : _onTappedBottomNavigation
      )
    );
  }
}