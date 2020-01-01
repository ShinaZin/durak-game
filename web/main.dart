import 'dart:html';

import 'package:react/react_client.dart' as ReactClient;
import 'package:react/react.dart';
import 'package:react/react_dom.dart' as ReactDOM;

class AppComponent extends Component2 {
  render() => h1({}, 'Hello, name');  
}


void main() {
  ReactClient.setClientConfiguration();
  var App = registerComponent2(() => new AppComponent());
  ReactDOM.render(App({}), querySelector('#react_root'));
}
