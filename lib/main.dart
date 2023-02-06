import 'package:flutter/material.dart';
import 'package:flutter_toggle_button/toggle_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Default
            ToggleButton(
              margin: const EdgeInsets.all(12),
              text: "Defalut",
              onClick: (selected) {
                print(selected);
              },
            ),
            ToggleButton(
              margin: const EdgeInsets.all(12),
              text: "Defalut",
              selected: true,
              onClick: (selected) {
                print(selected);
              },
            ),
            ToggleButton(
              margin: const EdgeInsets.all(12),
              text: "Defalut",
              enabled: false,
              onClick: (selected) {
                print(selected);
              },
            ),
            //ExpendedIcon
            ToggleButton(
              margin: const EdgeInsets.all(12),
              textState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return "Remove";
                  case ButtonState.disable:
                    return "Unavailable";
                  case ButtonState.none:
                    return "Add";
                }
              },
              colorState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return Colors.amber;
                  case ButtonState.disable:
                    return Colors.red.shade200;
                  case ButtonState.none:
                    return Colors.white;
                }
              },
              backgroundState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return Colors.amber.shade50;
                  case ButtonState.disable:
                    return Colors.red.shade50;
                  case ButtonState.none:
                    return Colors.amber;
                }
              },
              width: 200,
              enabled: true,
              expended: true,
              icon: Icons.nearby_off,
              iconPadding: const EdgeInsets.only(left: 16),
              borderRadius: 25,
              onClick: (selected) {
                print(selected);
              },
            ),
            ToggleButton(
              margin: const EdgeInsets.all(12),
              textState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return "Remove";
                  case ButtonState.disable:
                    return "Unavailable";
                  case ButtonState.none:
                    return "Add";
                }
              },
              colorState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return Colors.amber;
                  case ButtonState.disable:
                    return Colors.red.shade200;
                  case ButtonState.none:
                    return Colors.white;
                }
              },
              backgroundState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return Colors.amber.shade50;
                  case ButtonState.disable:
                    return Colors.red.shade50;
                  case ButtonState.none:
                    return Colors.amber;
                }
              },
              width: 200,
              enabled: true,
              expended: true,
              selected: true,
              icon: Icons.nearby_off,
              iconPadding: const EdgeInsets.only(left: 16),
              borderRadius: 25,
              onClick: (selected) {
                print(selected);
              },
            ),
            ToggleButton(
              margin: const EdgeInsets.all(12),
              textState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return "Remove";
                  case ButtonState.disable:
                    return "Unavailable";
                  case ButtonState.none:
                    return "Add";
                }
              },
              colorState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return Colors.amber;
                  case ButtonState.disable:
                    return Colors.red.shade200;
                  case ButtonState.none:
                    return Colors.white;
                }
              },
              backgroundState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return Colors.amber.shade50;
                  case ButtonState.disable:
                    return Colors.red.shade50;
                  case ButtonState.none:
                    return Colors.amber;
                }
              },
              width: 200,
              enabled: false,
              expended: true,
              icon: Icons.nearby_off,
              iconPadding: const EdgeInsets.only(left: 16),
              borderRadius: 25,
              onClick: (selected) {
                print(selected);
              },
            ),
            //WithoutExpendedIcon
            ToggleButton(
              margin: const EdgeInsets.all(12),
              width: 200,
              enabled: true,
              iconPadding: const EdgeInsets.only(right: 16),
              iconAlignment: IconAlignment.start,
              borderRadius: 25,
              onClick: (selected) {
                print(selected);
              },
              iconState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return Icons.clear;
                  case ButtonState.disable:
                    return Icons.add;
                    break;
                  case ButtonState.none:
                    return Icons.add;
                }
              },
              textState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return "Remove";
                  case ButtonState.disable:
                    return "Unavailable";
                  case ButtonState.none:
                    return "Add";
                }
              },
              colorState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return Colors.amber;
                  case ButtonState.disable:
                    return Colors.red.shade200;
                  case ButtonState.none:
                    return Colors.white;
                }
              },
              backgroundState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return Colors.amber.shade50;
                  case ButtonState.disable:
                    return Colors.red.shade50;
                  case ButtonState.none:
                    return Colors.amber;
                }
              },
            ),
            ToggleButton(
              margin: const EdgeInsets.all(12),
              textState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return "Remove";
                  case ButtonState.disable:
                    return "Unavailable";
                  case ButtonState.none:
                    return "Add";
                }
              },
              colorState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return Colors.amber;
                  case ButtonState.disable:
                    return Colors.red.shade200;
                  case ButtonState.none:
                    return Colors.white;
                }
              },
              backgroundState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return Colors.amber.shade50;
                  case ButtonState.disable:
                    return Colors.red.shade50;
                  case ButtonState.none:
                    return Colors.amber;
                }
              },
              width: 200,
              enabled: true,
              expended: true,
              icon: Icons.nearby_off,
              iconPadding: const EdgeInsets.only(left: 16),
              borderRadius: 25,
              onClick: (selected) {
                print(selected);
              },
            ),
            ToggleButton(
              margin: const EdgeInsets.all(12),
              textState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return "Remove";
                  case ButtonState.disable:
                    return "Unavailable";
                  case ButtonState.none:
                    return "Add";
                }
              },
              colorState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return Colors.amber;
                  case ButtonState.disable:
                    return Colors.red.shade200;
                  case ButtonState.none:
                    return Colors.white;
                }
              },
              backgroundState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return Colors.amber.shade50;
                  case ButtonState.disable:
                    return Colors.red.shade50;
                  case ButtonState.none:
                    return Colors.amber;
                }
              },
              width: 200,
              enabled: true,
              expended: true,
              icon: Icons.nearby_off,
              iconPadding: const EdgeInsets.only(left: 16),
              borderRadius: 25,
              onClick: (selected) {
                print(selected);
              },
            ),
          ],
        ),
      ),
    );
  }
}
