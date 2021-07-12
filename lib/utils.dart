import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/widget/specialize_widget.dart';

class Utils {
  showBottomSheet(context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Jam Dev',
                  style:
                      GoogleFonts.almendra(color: Colors.white, fontSize: 40)),
              SizedBox(
                height: 5,
              ),
              Text(
                'UX Designer, Android & IOS Developer',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 390,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Specialized In',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.black),)
                            ),
                            child: TextButton(
                            child: Text('View all',style: TextStyle(fontSize: 20,color: Colors.black),),
                              onPressed: (){},
                            ),
                          )
                        ],
                      ),
                      Specializations()
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
