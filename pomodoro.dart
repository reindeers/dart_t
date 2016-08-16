import 'dart:async';
import 'dart:html';
const d = const Duration(seconds: 1);
var eTimer = document.querySelector('#timer');

startTimeout(int i) {
  var duration = d;
  return new Timer(duration, () => printTimer(i));
}

void printTimer(int i) {
  eTimer.text = "Time: $i";
  //await window.animationFrame;
}

void main() {
  for (var i = 10; i > 0; i--) startTimeout(i);
}
