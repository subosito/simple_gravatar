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
}
