import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Cubit/project_cubit.dart';
import '../Cubit/project_state.dart';
import '../Widgets/Button_Model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Project_Cubit, Project_State>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          shape:
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(15)),
          title: Text(
            "سبحه",
            style: GoogleFonts.cairo(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("${BlocProvider.of<Project_Cubit>(context).Team_1}"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button_Model(
                        x: () {
                          BlocProvider.of<Project_Cubit>(context)
                              .increment(counter: 1);
                        },
                        y: 'تسبيحه'),
                    Button_Model(
                        x: () {
                          return showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                actionsPadding: EdgeInsets.all(30),
                                alignment: AlignmentGeometry.lerp(
                                    Alignment.center, Alignment.center, 0.2),
                                actions: [
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context, 'لا');
                                      },
                                      child: Text('لا',
                                          style: GoogleFonts.cairo(
                                            fontSize: 15,
                                          ))),
                                  SizedBox(
                                    width: 120,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context, 'نعم');
                                        BlocProvider.of<Project_Cubit>(context)
                                            .increment(counter: 4);
                                      },
                                      child: Text('نعم',
                                          style: GoogleFonts.cairo(
                                            fontSize: 15,
                                          ))),
                                ],
                                title: Center(
                                  child: Text("تنويه",
                                      style: GoogleFonts.cairo(
                                          fontSize: 30,
                                          color: Colors.green[400],
                                          fontWeight: FontWeight.bold)),
                                ),
                                content: Text("هل تريد اعاده العد مره اخري ؟",
                                    style: GoogleFonts.cairo(fontSize: 20)),
                              );
                            },
                          );
                        },
                        y: 'عد جديد'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      listener: (context, state) {},
    );
  }
}
