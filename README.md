# prism_toast

Beautiful adaptive toast notifications for Flutter — bottom-centered on
mobile, stacked top-right cards on desktop and web. Icon-led variants,
Material 3 colors, smooth slide+fade animations, and zero dependencies.

Part of the **Prism** package family.

## Features

- ✅ Adaptive placement — bottom-centered near-full-width on phones
  (< 600px), stacked top-right cards on desktop/web — the pattern each
  platform expects
- ✅ Four variants with icons: success ✓, error, warning, info — themed
  with Material 3 container colors
- ✅ Smooth slide + fade animations in and out
- ✅ Auto-dismiss with configurable duration, or dismiss early
- ✅ Optional action button (e.g. "Undo")
- ✅ Multiple toasts stack gracefully instead of overlapping
- ✅ Shorthands: `PrismToast.success(...)`, `.error(...)`, `.warning(...)`,
  `.info(...)`
- ✅ Pure Flutter, all six platforms, no dependencies

## Installation

```yaml
dependencies:
  prism_toast: ^0.1.0
```

## Quick start

```dart
PrismToast.success(context, 'Settings saved.');
PrismToast.error(context, 'Upload failed. Please retry.');
```

## Full control

```dart
PrismToast.show(
  context,
  const PrismToastMessage(
    title: 'Sync complete',
    message: '142 items updated across 3 devices.',
    type: PrismToastType.success,
    duration: Duration(seconds: 4),
    actionLabel: 'View changes',
    onAction: () => openChangelog(),
  ),
);
```

## How it adapts

| Window | Behavior |
| --- | --- |
| Compact (< 600px) | Slides up from the bottom edge, nearly full width |
| Medium+ | Slides in from the right, stacked top-right cards (380px) |

## The Prism package family

| Package | What it does |
| --- | --- |
| [prism_markdown](https://pub.dev/packages/prism_markdown) | Markdown widget with full CommonMark + GFM support |
| [prism_code_view](https://pub.dev/packages/prism_code_view) | Syntax-highlighted code viewer (Dart/JSON/YAML built in) |
| [prism_adaptive_scaffold](https://pub.dev/packages/prism_adaptive_scaffold) | Responsive scaffolds: bottom bar → rail → extended rail |
| [prism_adaptive_dialog](https://pub.dev/packages/prism_adaptive_dialog) | Dialogs that become bottom sheets on phones |
| [prism_state_views](https://pub.dev/packages/prism_state_views) | Empty, loading, error, and success states from one widget |
| [prism_master_detail](https://pub.dev/packages/prism_master_detail) | Adaptive master-detail layouts |
| [prism_banner](https://pub.dev/packages/prism_banner) | Dismissible announcement banners |
| [prism_search](https://pub.dev/packages/prism_search) | Adaptive search with suggestions |
| **prism_toast** | Adaptive toast notifications |

All pure Flutter, all six platforms, MIT licensed, built to work together.

## License

MIT — see [LICENSE](LICENSE).