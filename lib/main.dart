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
              text: "Default",
              onClick: (selected) {
                print(selected);
              },
            ),
            ToggleButton(
              margin: const EdgeInsets.all(12),
              text: "Default",
              selected: true,
              onClick: (selected) {
                print(selected);
              },
            ),
            const ToggleButton(
              margin: EdgeInsets.all(12),
              text: "Default",
            ),
            //ExpendedIcon
            ToggleButton(
              margin: const EdgeInsets.all(12),
              width: 200,
              borderRadius: 25,
              expended: true,
              iconPadding: const EdgeInsets.only(left: 16),
              iconState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return Icons.near_me_outlined;
                  case ButtonState.disable:
                    return Icons.near_me_disabled;
                  case ButtonState.none:
                    return Icons.near_me;
                }
              },
              textState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return "Selected";
                  case ButtonState.disable:
                    return "Disabled";
                  case ButtonState.none:
                    return "Enabled";
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
              onClick: (value) {
                print(value);
              },
            ),
            ToggleButton(
              margin: const EdgeInsets.all(12),
              width: 200,
              borderRadius: 25,
              expended: true,
              selected: true,
              iconPadding: const EdgeInsets.only(left: 16),
              iconState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return Icons.near_me_outlined;
                  case ButtonState.disable:
                    return Icons.near_me_disabled;
                  case ButtonState.none:
                    return Icons.near_me;
                }
              },
              textState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return "Selected";
                  case ButtonState.disable:
                    return "Disabled";
                  case ButtonState.none:
                    return "Enabled";
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
              onClick: (value) {
                print(value);
              },
            ),
            ToggleButton(
              margin: const EdgeInsets.all(12),
              width: 200,
              borderRadius: 25,
              expended: true,
              iconPadding: const EdgeInsets.only(left: 16),
              iconState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return Icons.near_me_outlined;
                  case ButtonState.disable:
                    return Icons.near_me_disabled;
                  case ButtonState.none:
                    return Icons.near_me;
                }
              },
              textState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return "Selected";
                  case ButtonState.disable:
                    return "Disabled";
                  case ButtonState.none:
                    return "Enabled";
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
            //WithoutExpendedIcon
            SizedBox(
              width: 220,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ToggleButton(
                    borderRadius: 50,
                    margin: const EdgeInsets.all(12),
                    padding: const EdgeInsets.all(12),
                    iconState: (state) {
                      switch (state) {
                        case ButtonState.selected:
                          return Icons.near_me_outlined;
                        case ButtonState.disable:
                          return Icons.near_me_disabled;
                        case ButtonState.none:
                          return Icons.near_me;
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
                    onClick: (selected) {
                      print(selected);
                    },
                  ),
                  ToggleButton(
                    borderRadius: 50,
                    selected: true,
                    margin: const EdgeInsets.all(12),
                    padding: const EdgeInsets.all(12),
                    iconState: (state) {
                      switch (state) {
                        case ButtonState.selected:
                          return Icons.near_me_outlined;
                        case ButtonState.disable:
                          return Icons.near_me_disabled;
                        case ButtonState.none:
                          return Icons.near_me;
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
                    onClick: (selected) {
                      print(selected);
                    },
                  ),
                  ToggleButton(
                    borderRadius: 50,
                    margin: const EdgeInsets.all(12),
                    padding: const EdgeInsets.all(12),
                    iconState: (state) {
                      switch (state) {
                        case ButtonState.selected:
                          return Icons.near_me_outlined;
                        case ButtonState.disable:
                          return Icons.near_me_disabled;
                        case ButtonState.none:
                          return Icons.near_me;
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
                ],
              ),
            ),
            ToggleButton(
              margin: const EdgeInsets.all(12),
              width: 200,
              borderRadius: 25,
              iconPadding: const EdgeInsets.only(right: 16),
              iconAlignment: IconAlignment.start,
              iconState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return Icons.near_me_outlined;
                  case ButtonState.disable:
                    return Icons.near_me_disabled;
                  case ButtonState.none:
                    return Icons.near_me;
                }
              },
              textState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return "Selected";
                  case ButtonState.disable:
                    return "Disabled";
                  case ButtonState.none:
                    return "Enabled";
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
              onClick: (value) {
                print(value);
              },
            ),
            ToggleButton(
              width: 200,
              borderRadius: 25,
              selected: true,
              iconPadding: const EdgeInsets.only(right: 16),
              margin: const EdgeInsets.all(12),
              iconAlignment: IconAlignment.start,
              iconState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return Icons.near_me_outlined;
                  case ButtonState.disable:
                    return Icons.near_me_disabled;
                  case ButtonState.none:
                    return Icons.near_me;
                }
              },
              textState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return "Selected";
                  case ButtonState.disable:
                    return "Disabled";
                  case ButtonState.none:
                    return "Enabled";
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
              onClick: (value) {
                print(value);
              },
            ),
            ToggleButton(
              width: 200,
              borderRadius: 25,
              iconPadding: const EdgeInsets.only(right: 16),
              margin: const EdgeInsets.all(12),
              iconAlignment: IconAlignment.start,
              iconState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return Icons.near_me_outlined;
                  case ButtonState.disable:
                    return Icons.near_me_disabled;
                  case ButtonState.none:
                    return Icons.near_me;
                }
              },
              textState: (state) {
                switch (state) {
                  case ButtonState.selected:
                    return "Selected";
                  case ButtonState.disable:
                    return "Disabled";
                  case ButtonState.none:
                    return "Enabled";
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
          ],
        ),
      ),
    );
  }
}
