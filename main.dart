import 'dart:html';

void main() {
  final ButtonElement button = querySelector('button');
  final InputElement input = querySelector('input');

  button.onClick.take(4).where((event) => input.value == 'banana').listen(
        (event) => print('You guess right'),
        onDone: () => print('Guess again'),
      );
}
