import 'package:jaspr/html.dart';
import 'package:jaspr/jaspr.dart';

part 'app.g.dart';

@client
class App extends StatelessComponent with _$App {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(
      tag: 'div',
      id: 'header',
      child: div(
        classes: 'container'.split(' '),
        [
          nav(
            [
              img(
                src: 'assets/img/logo.png',
                classes: 'logo'.split(' '),
              ),
              ul(
                [
                  li(
                    [
                      a([text('Home')], href: '#'),
                    ],
                  ),
                  li(
                    [
                      a([text('About')], href: '#'),
                    ],
                  ),
                  li(
                    [
                      a([text('Services')], href: '#'),
                    ],
                  ),
                  li(
                    [
                      a([text('Portfolio')], href: '#'),
                    ],
                  ),
                  li(
                    [
                      a([text('Contact')], href: '#'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
