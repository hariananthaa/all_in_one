import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:dio_mvvm/features/feature_1/components/utils/custom_arrow_clipper.dart';
import 'package:dio_mvvm/features/feature_1/repos/user_name_list_repository.dart';
import 'package:dio_mvvm/features/feature_1/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SimpleAccountMenu extends StatefulWidget {
  // final List<Widget> child;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final Color? iconColor;
  final ValueChanged<int> onChange;

  const SimpleAccountMenu({
    Key? key,
    // required this.child,
    this.borderRadius,
    this.backgroundColor = const Color(0xFFF67C0B9),
    this.iconColor = Colors.white,
    required this.onChange,
  }) : super(key: key);
  @override
  _SimpleAccountMenuState createState() => _SimpleAccountMenuState();
}

class _SimpleAccountMenuState extends State<SimpleAccountMenu>
    with SingleTickerProviderStateMixin {
  late GlobalKey _key;
  bool isMenuOpen = false;
  late Offset buttonPosition;
  late Size buttonSize;
  late OverlayEntry _overlayEntry;
  late BorderRadius _borderRadius;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
    _borderRadius = widget.borderRadius ?? BorderRadius.circular(4);
    _key = LabeledGlobalKey("button_icon");
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  findButton() {
    RenderBox? renderBox =
        _key.currentContext!.findRenderObject() as RenderBox?;
    buttonSize = renderBox!.size;
    buttonPosition = renderBox.localToGlobal(Offset.zero);
  }

  void closeMenu() {
    _overlayEntry.remove();
    _animationController.reverse();
    isMenuOpen = !isMenuOpen;
  }

  void openMenu() {
    findButton();
    _animationController.forward();
    _overlayEntry = _overlayEntryBuilder();
    Overlay.of(context)!.insert(_overlayEntry);
    isMenuOpen = !isMenuOpen;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _key,
      decoration: BoxDecoration(
        // color: Color(0xFFF5C6373),
        borderRadius: _borderRadius,
      ),
      child: IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_close,
          progress: _animationController,
        ),
        color: Colors.white,
        onPressed: () {
          if (isMenuOpen) {
            closeMenu();
          } else {
            openMenu();
          }
        },
      ),
    );
  }

  OverlayEntry _overlayEntryBuilder() {
    print('button size $buttonSize');
    print('button position $buttonPosition');
    // print('button size $buttonSize');
    return OverlayEntry(builder: (context) {
      print(MediaQuery.of(context).size.height);
      print(MediaQuery.of(context).size.width);
      return Positioned(
        top: buttonPosition.dy + buttonSize.height,
        right: 5,
        // width: buttonSize.width,
        child: Material(
          color: Colors.transparent,
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.teal.withOpacity(0.6),
                    // color: widget.backgroundColor,
                    borderRadius: _borderRadius,

                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 5,
                        spreadRadius: 3,
                      ),
                    ],
                  ),
                  child: Consumer(builder: (context, watch, child) {
                    final userNameList = watch(userNameListProvider);
                    // print(userNameList);
                    return userNameList.maybeMap(
                      data: (data) {
                        // print('data : $data');
                        if (data.value != null) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                              // data.value!.length,
                              data.value!.length,
                              (index) => Container(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    print(index);
                                    context
                                        .read(userIndexProvider)
                                        .setIndex(index);
                                    closeMenu();
                                  },
                                  child: custom_text(
                                    data.value[index]["name"],
                                  ),
                                ),
                              ),
                            ),
                          );
                        } else {
                          return Container(
                            padding: const EdgeInsets.all(10.0),
                            child: custom_text(
                              'No data found!!!',
                            ),
                          );
                        }
                      },
                      loading: (_) {
                        return Container(
                          width: 30,
                          height: 30,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          alignment: Alignment.center,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        );
                      },
                      error: (e) {
                        // final snackBar = SnackBar(
                        //     content: Text(
                        //         'Sorry! Couldn\'t fetch data. Is device has internet?'));
                        // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        // return SizedBox();
                        return Container(
                          padding: const EdgeInsets.all(10.0),
                          child: custom_text(
                            'Couldn\'t fetch data.\nIs device has internet',
                          ),
                        );
                      },
                      orElse: () => SizedBox(),
                    );
                  }),
                ),
              ),
              Positioned(
                right: 12,
                child: ClipPath(
                  clipper: ArrowClipper(),
                  child: Container(
                    width: 20,
                    height: 15,
                    color: Colors.teal.withOpacity(0.6),
                    // color: widget.backgroundColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Text custom_text(String label) {
    return Text(
      label,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }
}
