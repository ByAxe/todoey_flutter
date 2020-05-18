import 'dart:ui';

import 'package:flutter/material.dart';

const Color kMainColor = Color(0xFF2078E1);

const TextStyle kIncompleteTodoTextStyle = TextStyle(
  fontSize: 20.0,
  color: Colors.black54,
);

const TextStyle kCompleteTodoTextStyle = TextStyle(
  fontSize: 20.0,
  decoration: TextDecoration.lineThrough,
  color: Colors.black38,
);

const BoxDecoration kSemiRoundedBoxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20.0),
    topRight: Radius.circular(20.0),
  ),
);

const BoxDecoration kContainerDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment(0.8, 0.5),
    // 10% of the width, so there are ten blinds.
    colors: [
      Color(0xFF39b3f9),
      Color(0xFF000bd6),
    ],
    // whitish to gray
    tileMode: TileMode.repeated, // repeats the gradient over the canvas
  ),
);

const kTaskInputDecoration = InputDecoration(
  border: InputBorder.none,
  focusedBorder: InputBorder.none,
  enabledBorder: InputBorder.none,
  errorBorder: InputBorder.none,
  disabledBorder: InputBorder.none,
);
