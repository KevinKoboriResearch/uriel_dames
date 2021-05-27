import 'package:flutter/material.dart';
import 'package:uriel_dames/models/blend_model.dart';

List<BlendModel> blendModesList = [
  BlendModel(name: 'saturation', value: BlendMode.saturation),
  BlendModel(name: 'difference', value: BlendMode.difference),
  BlendModel(name: 'hue', value: BlendMode.hue),
  BlendModel(name: 'colorBurn', value: BlendMode.colorBurn),
  BlendModel(name: 'colorDodge', value: BlendMode.colorDodge),
  BlendModel(name: 'darken', value: BlendMode.darken),
  BlendModel(name: 'multiply', value: BlendMode.multiply),
];
