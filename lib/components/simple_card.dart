import 'package:jaspr/html.dart';

class SimpleCard extends StatelessComponent {
  const SimpleCard({required this.title, required this.message});

  final String title;
  final String message;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([
      // each element gets a list of child elements
      h1([text('jaspr/html')]),
      p([
        // wrap your strings with `text()` to add alongside other components
        text('This is some '),
        b([text('html')]),
        text(' content.'),
      ]),
      // some elements have typed attributes for easy access
      a(href: "https://github.com/schultek/jaspr", target: Target.blank, [
        img(src: "https://jasprpad.schultek.de/jaspr-192.png"),
      ]),
      // some elements don't have children
      hr(),
      // you can add events as usual
      select(events: {
        'change': (e) => print(e.target.value),
      }, [
        option(value: 'test', [text('Select me!')]),
        option(value: 'other', selected: true, [text('Or me!')])
      ]),
      // most common and some uncommon elements are supported
      progress(value: 85, max: 100, [])
    ]);
  }
}
