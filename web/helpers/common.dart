Iterable<int> range(int first, [int last]) sync* {
  if (last is int) {
    for (int i = first; i < last; ++i) {
      yield i;
    }
  }
  for (int i = 0; i < first; ++i) {
    yield i;
  }
}

String cn(a, [b, c, d]) {
  return '$a ${b ?? ''} ${c ?? ''} ${d ?? ''}'.trimRight();
}
  