import 'package:jaspr/jaspr.dart';

var styles = [
  StyleRule.import('https://fonts.googleapis.com/css?family=Roboto'),
  StyleRule(
    selector: const Selector.list([Selector.tag('html'), Selector.tag('body')]),
    styles: Styles.combine(
      [
        const Styles.text(
          color: Color.hex('#FFF'),
          fontFamily: FontFamily.list(
            [FontFamily('Roboto'), FontFamilies.sansSerif],
          ),
        ),
        Styles.box(
          width: 100.percent,
          height: 100.percent,
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          boxSizing: BoxSizing.borderBox,
        ),
      ],
    ),
  ),
  StyleRule(
    selector: const Selector.list([Selector.tag('body')]),
    styles: Styles.combine(
      [
        Styles.background(
          color: Color.hex('#080808'),
        ),
      ],
    ),
  ),
  StyleRule(
    selector: const Selector.list([Selector.id('header')]),
    styles: Styles.combine(
      [
        Styles.box(
          width: 100.percent,
          height: 100.percent,
        ),
        Styles.background(
          image: ImageStyle.url('assets/img/background.png'),
          size: BackgroundSize.cover,
          position: BackgroundPosition.center,
        ),
      ],
    ),
  ),
  StyleRule(
    selector: const Selector.list([Selector.className('container')]),
    styles: Styles.box(
      padding: EdgeInsets.symmetric(
        vertical: 10.px,
        horizontal: 10.percent,
      ),
    ),
  ),
  StyleRule(
    selector: Selector.tag('nav'),
    styles: Styles.combine(
      [
        Styles.box(
          display: Display.flex,
        ),
        Styles.flexbox(
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.spaceBetween,
          wrap: FlexWrap.wrap,
        )
      ],
    ),
  ),
  StyleRule(
    selector: Selector.className('logo'),
    styles: Styles.box(
      width: 140.px,
    ),
  ),
  StyleRule(
    selector: Selector.chain(
      [
        Selector('nav '),
        Selector('ul '),
        Selector('li'),
      ],
    ),
    styles: Styles.combine(
      [
        Styles.raw({
          'list-style': 'none',
        }),
        Styles.box(
          display: Display.inlineBlock,
          margin: EdgeInsets.symmetric(
            vertical: 10.px,
            horizontal: 20.px,
          ),
        ),
      ],
    ),
  ),
  StyleRule(
    selector: Selector.chain(
      [
        Selector('nav '),
        Selector('ul '),
        Selector('li '),
        Selector('a'),
      ],
    ),
    styles: Styles.combine(
      [
        Styles.raw({
          'text-decoration': 'none',
          'position': 'relative',
        }),
        Styles.text(
          color: Color.hex('#ffffff'),
          fontSize: 18.px,
        ),
      ],
    ),
  ),
  StyleRule(
    selector: Selector.chain(
      [
        Selector('nav '),
        Selector('ul '),
        Selector('li '),
        Selector('a::after'),
      ],
    ),
    styles: Styles.combine(
      [
        Styles.raw({
          'content': '',
          'left': '0',
          'bottom': '-6px',
          'background': '#ff004f'
        }),
        Styles.box(
          position: Position.absolute(),
          width: 0.px,
          height: 3.px,
        ),
      ],
    ),
  ),
];
