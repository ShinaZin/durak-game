import 'package:over_react/over_react.dart';
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
      (Dom.a()..className = 'button')('Start'),
      (Dom.a()..className = 'button')('Exit'),
    ),
    
      (Dom.div()..className=cn('flexbox', 'children-center'))(range(6).map((key) => (Card()
        ..key = key
        ..hidden = true)())
      ),
      (Dom.div()..className=cn('flexbox', 'children-center'))((Card()..hidden=true)()),
      (Dom.div()..className=cn('flexbox', 'children-center'))(range(6).map((key) => (Card()..key = key)())),
  );
}
