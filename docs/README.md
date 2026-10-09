# `SiteMapButton`

`SiteMapButton` is the reusable button widget used to present destinations in
the app's site-map and topic screens. It keeps destination cards visually
consistent while allowing each screen to supply its own content and navigation
behavior.

The widget is defined in
[`lib/widgets/site_map_button.dart`](../lib/widgets/site_map_button.dart).
[`BusinessRelatedPage`](../lib/screens/business-related/business_related_screen.dart)
provides a representative example of generating a list of these buttons.

## Constructor API

All content and behavior fields are required.

| Parameter | Type | Purpose |
| --- | --- | --- |
| `logo` | `Widget` | Leading visual, normally an `Icon`. The button applies the standard icon color and size through `IconTheme.merge`. |
| `title` | `String` | Primary destination label. |
| `description` | `String` | Supporting text. The description and its spacing are omitted when this value is empty. |
| `trailingIcon` | `IconData` | Indicates the destination type, such as an external link or nested page. |
| `onTap` | `VoidCallback` | Runs when the card is tapped. The caller owns all navigation or link-opening logic. |
| `key` | `Key?` | Optional Flutter widget key. Site-map entries conventionally use `ValueKey('site-map-<id>')`. |

## Rendered structure

The widget builds the following hierarchy:

```text
Card
└── InkWell
    └── Padding
        └── Row
            ├── circular leading-logo container
            ├── Expanded
            │   └── Column
            │       ├── title
            │       └── optional description
            └── trailing icon
```

The `Card` supplies the white background, elevation, shadow, and rounded
corners. `InkWell` makes the full card tappable and uses the same corner radius
for its interaction effect. Text expands into the available horizontal space,
allowing longer titles and descriptions to wrap without displacing the icons.

## Creating a button

For an external City of El Monte page, use the external-link indicator and
delegate URL handling to `openCityLink`:

```dart
SiteMapButton(
  key: const ValueKey('site-map-407'),
  logo: const Icon(Icons.business_center_rounded),
  title: 'Business License',
  description:
      'Open the official City of El Monte Business License page in your browser.',
  trailingIcon: Icons.open_in_new_rounded,
  onTap: () => openCityLink(
    context,
    'https://www.ci.el-monte.ca.us/407/Business-License',
  ),
)
```

For an in-app destination, pass the appropriate router callback and use a
chevron to communicate that the user will move deeper into the app:

```dart
SiteMapButton(
  key: const ValueKey('site-map-services'),
  logo: const Icon(Icons.miscellaneous_services_rounded),
  title: 'Services',
  description: 'Browse available city services.',
  trailingIcon: Icons.chevron_right_rounded,
  onTap: () => context.push('/services'),
)
```

`SiteMapButton` does not decide whether a destination is internal or external;
that distinction is expressed entirely by `trailingIcon` and `onTap`.

## Generating a screen of buttons

Topic screens such as `BusinessRelatedPage` create a local list of
`SiteMapButton` instances and render it with `ListView.separated`:

```dart
final buttons = [
  SiteMapButton(/* destination configuration */),
  SiteMapButton(/* destination configuration */),
];

ListView.separated(
  itemCount: buttons.length,
  separatorBuilder: (_, __) => const SizedBox(height: 10),
  itemBuilder: (_, index) => buttons[index],
)
```

This division of responsibility is intentional: the screen defines the
destinations and list layout, while `SiteMapButton` defines the appearance and
tap surface of each destination.

## Conventions

- Use a concise destination name for `title`.
- Describe the result of tapping the button in `description`.
- Use `Icons.open_in_new_rounded` for external web pages.
- Use `Icons.chevron_right_rounded` for nested in-app destinations.
- Assign a stable `ValueKey` when the destination has a site-map ID. Stable
  keys also make individual buttons straightforward to locate in widget tests.
- Put destination-specific logic in `onTap`; avoid adding routing rules to the
  shared widget.
