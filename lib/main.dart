import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> names = [
    'Archer',
    'Barbarians',
    'Giants',
    'Dragons',
    'Hog',
    'Balloons',
    'P.E.K.K.A',
    'The Barbarian King',
    'Wizard',
    'Wall Breakers',
  ];
  final List<String> description = [
    'The archer is a ranged unit. It is depicted as a female with pink hair and sharp eyes, a light green dress, a belt with a small bag attached to it, a golden ring on her shoulder, and pink feathers for her arrow flights. Archers have no preferred targets, attacking whatever comes within their range.',
    'The Barbarian is the first unit you unlock in the barracks. The Barbarian’s appearance is a man with an angry, battle-ready expression, yellow hair and a long yellow mustache. He wears a brown kilt with a leather belt and an iron shield-shaped buckle.',
    'Giants are large troops capable of taking huge damage, but deal very little in return. They primarily target defenses, so in a large group they can be very strong at crippling a village. Due to their high health, players usually deploy them first in order to protect the other weaker but more offensive troops from defenses.',
    'The dragon is a fearsome flying unit and is capable of terrorizing both ground and air units. Unlike the balloon, which also flies, the dragon has a ranged attack, similar to archers.',
    'The Hog Rider is a rugged, dark-skinned man with a mohawk, riding a large hog. He is bare-chested, wearing only a brown leather loincloth, a red belt, and a pair of leather sandals. He has two large golden wristbands and a gold earring. His weapon of choice is a large war hammer.',
    'Balloons are slow moving aerial units that do devastating amounts of splash damage to ground targets.Balloons, like giants, target defensive structures first.',
    'The P.E.K.K.A is the last troop to be unlocked in the barracks. It has the strongest armor and damage of any unit in the game. However, it is the most expensive of them all.She has purple crystal spikes growing on her side, and carries a sword.At level 3 a P.E.K.K.A’s armor color changes from dark blue to black, giving her a tougher look.',
    'The Barbarian King is bigger than a Giant and toughest of all Barbarians! Create him out of Dark Elixir and let him loose on an enemy village!!',
    'The wizard is a magical unit that wears a blue cloak depending on it’s level and a leather belt with golden buckle and brown boots.',
    'Wall Breaker’s appearance is that of a small skeleton that wears a brown aviator hat and has a small scar across its right eye. It carries a large bomb.',
  ];
  final List<String> images = [
    'http://assets.stickpng.com/thumbs/58eeb0c0ee9418469d17edf1.png',
    'http://assets.stickpng.com/thumbs/584d91fc367b6a13e54477f4.png',
    'http://assets.stickpng.com/thumbs/584d920b367b6a13e54477f6.png',
    'http://assets.stickpng.com/thumbs/584d9328367b6a13e54477fc.png',
    'http://assets.stickpng.com/thumbs/584d92eb367b6a13e54477f8.png',
    'http://assets.stickpng.com/thumbs/58eeb160ee9418469d17edf4.png',
    'http://assets.stickpng.com/thumbs/584d92f2367b6a13e54477f9.png',
    'http://assets.stickpng.com/thumbs/584d91f4367b6a13e54477f3.png',
    'http://assets.stickpng.com/thumbs/584d92fb367b6a13e54477fa.png',
    'http://assets.stickpng.com/thumbs/58eeb1adee9418469d17edf6.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: names.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return new Container(
              margin: EdgeInsets.fromLTRB(10, 20, 20, 10),
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: double.maxFinite,
              width: 400,
              child: Card(
                color: Colors.black87,
                elevation: 10,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Image.network(
                      images[index],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      names[index],
                      style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Expanded(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            description[index],
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white60,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
