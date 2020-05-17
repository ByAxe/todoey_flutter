import 'dart:ui';

import 'package:flutter/cupertino.dart';
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
