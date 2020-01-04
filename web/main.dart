import 'dart:html';

import 'package:over_react/over_react.dart';
import 'package:over_react/react_dom.dart' as ReactDOM;

import 'app.dart';


void main() {
  setClientConfiguration();
  ReactDOM.render(App()(), querySelector('#react_root'));
}