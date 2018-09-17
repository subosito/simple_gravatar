# Simple Gravatar

[![Build Status](https://travis-ci.org/subosito/simple_gravatar.svg?branch=master)](https://travis-ci.org/subosito/simple_gravatar)
[![pub package](https://img.shields.io/pub/v/simple_gravatar.svg)](https://pub.dartlang.org/packages/simple_gravatar)

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

  print('Gravatar URL:      $url');
  print('Gravatar QR URL:   ${gravatar.qrUrl()}');
  print('Gravatar JSON URL: ${gravatar.jsonUrl()}');

  // OUTPUT
  //
  // Gravatar URL:      https://www.gravatar.com/avatar/cb8419c1d471d55fbca0d63d1fb2b6ac.png?s=100&d=retro&r=pg
  // Gravatar QR URL:   https://www.gravatar.com/cb8419c1d471d55fbca0d63d1fb2b6ac.qr
  // Gravatar JSON URL: https://www.gravatar.com/cb8419c1d471d55fbca0d63d1fb2b6ac.json
}
```

