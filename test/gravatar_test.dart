import 'package:test/test.dart';
import 'package:simple_gravatar/simple_gravatar.dart';

void main() {
  Gravatar gravatar;

  setUp(() {
    gravatar = Gravatar('hello@example.com');
  });

  group('imageUrl', () {
    test('with no parameter', () {
      expect(
        gravatar.imageUrl(),
        equals(
          'https://www.gravatar.com/avatar/cb8419c1d471d55fbca0d63d1fb2b6ac',
        ),
      );
    });

    test('fileExtension parameter', () {
      expect(
        gravatar.imageUrl(fileExtension: true),
        equals(
          'https://www.gravatar.com/avatar/cb8419c1d471d55fbca0d63d1fb2b6ac.png',
        ),
      );
    });

    test('size parameter', () {
      expect(
        gravatar.imageUrl(size: 100),
        equals(
          'https://www.gravatar.com/avatar/cb8419c1d471d55fbca0d63d1fb2b6ac?s=100',
        ),
      );
    });

    test('defaultImage parameter', () {
      expect(
        gravatar.imageUrl(defaultImage: GravatarImage.retro),
        equals(
          'https://www.gravatar.com/avatar/cb8419c1d471d55fbca0d63d1fb2b6ac?d=retro',
        ),
      );
    });

    test('forceDefault parameter', () {
      expect(
        gravatar.imageUrl(forceDefault: true),
        equals(
          'https://www.gravatar.com/avatar/cb8419c1d471d55fbca0d63d1fb2b6ac?f=y',
        ),
      );
    });

    test('rating parameter', () {
      expect(
        gravatar.imageUrl(rating: GravatarRating.g),
        equals(
          'https://www.gravatar.com/avatar/cb8419c1d471d55fbca0d63d1fb2b6ac?r=g',
        ),
      );
    });

    test('multiple parameters', () {
      expect(
        gravatar.imageUrl(
          size: 100,
          defaultImage: GravatarImage.retro,
          fileExtension: true,
        ),
        equals(
          'https://www.gravatar.com/avatar/cb8419c1d471d55fbca0d63d1fb2b6ac.png?s=100&d=retro',
        ),
      );
    });
  });

  test('jsonUrl', () {
    expect(
      gravatar.jsonUrl(),
      equals(
        'https://www.gravatar.com/cb8419c1d471d55fbca0d63d1fb2b6ac.json',
      ),
    );
  });

  test('qrUrl', () {
    expect(
      gravatar.qrUrl(),
      equals(
        'https://www.gravatar.com/cb8419c1d471d55fbca0d63d1fb2b6ac.qr',
      ),
    );
  });

  test('toString', () {
    expect(
      gravatar.toString(),
      equals(
        'https://www.gravatar.com/avatar/cb8419c1d471d55fbca0d63d1fb2b6ac',
      ),
    );
  });
}
