import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/models/special_model.dart';

class Specializations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Specials> _specials = [
      Specials(name: 'Designing', icon: Icons.design_services_sharp),
      Specials(name: 'Developing', icon: Icons.developer_mode),
      Specials(name: 'UI & UX', icon: FontAwesomeIcons.artstation),
      Specials(
          name: 'Interaction', icon: Icons.integration_instructions_rounded),
      Specials(name: 'Analyze', icon: Icons.analytics),
      Specials(
          name: 'Client Management', icon: FontAwesomeIcons.solidHandshake),
    ];

    return Container(
      child: Expanded(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: _specials.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  height: 150,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          _specials[index].icon,
                          color: Colors.white,
                          size: 40,
                        ),
                        SizedBox(height: 10,),
                        Text(
                          _specials[index].name,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15,),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                ),
              );
            }),
      ),
    );
  }
}
