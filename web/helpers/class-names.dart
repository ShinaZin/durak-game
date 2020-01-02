String cn(a, [b, c, d]) {
  return '$a ${b ?? ''} ${c ?? ''} ${d ?? ''}'.trimRight();
}
  