# Simple Gravatar

Gravatar library for Dart 2.

## Usage

```dart
import 'package:simple_gravatar/simple_gravatar.dart';

void main() {
  var gravatar = Gravatar('hello@example.com');
  var url = gravatar.imageUrl(
    size: 100,
    defaultImage: GravatarImage.retro,
    rating: GravatarRating.pg,
    fileExtension: true,
  );

  print('Gravatar URL: $url');

  // OUTPUT
  //
  // Gravatar URL: https://www.gravatar.com/avatar/cb8419c1d471d55fbca0d63d1fb2b6ac.png?s=100&d=retro&r=pg
}
```

