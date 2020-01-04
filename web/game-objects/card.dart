import 'dart:math';
import 'dart:svg';

import 'package:over_react/over_react.dart';

import 'common.dart';

part 'card.over_react.g.dart';

@Factory()
UiFactory<CardProps> Card = _$Card;

@Props()
class _$CardProps extends UiProps {}

@State()
class _$CardState extends UiState {}

@Component2()
class CardComponent extends UiStatefulComponent2<CardProps, CardState> {
  String suite;
  dynamic power;

  get defaultProps => (newProps());

  get initialState => (newState());

  CardComponent() {
    var types = [CardType.club, CardType.diamond, CardType.heart, CardType.spade]
      ..shuffle();
    suite = types.first;
    var powers = [6, 7, 8, 9, 10, 'J', 'D', 'K', 'A']..shuffle();
    power = powers.first;
  }

  render() => (Dom.div()
    ..className = 'game-card'
    ..style = {
      'color': [CardType.diamond, CardType.heart].contains(suite) ? '#E81123' : '#000000'
    })(
    CardIcon(power, suite),
    (Dom.div()..style = {'font-size': '32px', 'text-align': 'center'})(suite),
    CardIcon(power, suite, {'transform': 'scale(-1, -1)', 'text-align': 'left'}),
  );
}

CardIcon(power, suite, [style]) => (Dom.div()..style=style)(
  (Dom.div()(power)), 
  (Dom.div()..style = {'font-size': '12px'})(suite)
);