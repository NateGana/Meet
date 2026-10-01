# Meet the Team — Final Laboratory Activity 2

A 5-screen Flutter portfolio app: Home, About Us, Gallery, Photo Details, Contact Us.

## Run it
Open this folder in Android Studio/VS Code (the same way as your other Flutter
project), then: `flutter pub get` → `flutter run`.
No Flutter SDK/network available where this was built, so **please run
`flutter analyze` yourself** before trusting it — everything was checked by
hand (balanced brackets, valid XML/JSON, consistent imports) but not compiled.

## Replace before submitting
- `lib/screens/about_us_screen.dart` — `_members` list: real names/roles/bios.
- `lib/screens/gallery_screen.dart` — `_photos` list: point at your real images.
- `assets/images/photo1.jpg` … `photo6.jpg` — swap in real photos (keep the
  same filenames, or update the paths in `gallery_screen.dart` to match).
- `lib/screens/contact_us_screen.dart` — bottom `_ContactLine` email/link.

## Routes
`/`, `/home`, `/about`, `/gallery`, `/contact`, `/photo-details` — all in
`lib/main.dart`. Unknown routes fall back to `UnknownRouteScreen` via
`onUnknownRoute`.

## Navigator methods used
- `pushNamed` — Home → About/Gallery/Contact, Gallery → Photo Details, drawer → About/Gallery/Contact
- `pop` — Photo Details → Gallery, drawer close
- `pushReplacementNamed` — drawer "Home" link, Unknown Route → Home

## Route arguments
Gallery passes a `Photo` object (`lib/models/photo.dart`) via
`Navigator.pushNamed(..., arguments: photo)`; Photo Details reads it back
with `ModalRoute.of(context)!.settings.arguments as Photo`.

## Git workflow (3 members, one shared repo)
```
git clone <repo-url>
git checkout -b your-name-feature
# ...edit your assigned files...
git add .
git commit -m "Add: what you did"
git pull --rebase origin main
git push -u origin your-name-feature
# open a Pull Request into main, or merge locally then:
git checkout main
git merge your-name-feature
git push
```
Suggested split (matches the file ownership above):
Member 1 → `main.dart`, `app_routes.dart`, unknown route.
Member 2 → `app_theme.dart`, Home, About Us, `member_card.dart`, nav drawer.
Member 3 → Gallery, Photo Details, Contact Us, `gallery_card.dart`, assets.
