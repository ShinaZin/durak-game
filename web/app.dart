import 'package:over_react/over_react.dart';
import 'controls/button.dart';
import 'controls/intent.dart';
import 'game-objects/card.dart';
import 'helpers/common.dart';

part 'app.over_react.g.dart';

@Factory()
UiFactory<AppProps> App = _$App;

@Props()
class _$AppProps extends UiProps {}

@Component2()
class AppComponent extends UiComponent2<AppProps> {
  @override
  get defaultProps => (newProps());

  @override
  render() => Dom.div()(
    Dom.header()((Dom.a()..className = 'logo')('Durak game'),
        (Dom.a()..className = 'button')('Start')),
    // (Button()
    //   ..className = Intent.primary
    //   ..isDisabled
    // )('Magic button'),
    // (Button()
    //   ..className = Intent.positive
    //   ..onClick = (_) => print('OK pressed'
    // ))('Ok'),
    // (Button()..className = Intent.negative)('Close'),
    // (Button()..className = Intent.contrast)('contrast'),
    range(6).map((_) => Card()()),
  );
}
