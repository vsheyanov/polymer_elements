// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `iron_overlay_behavior`.
@HtmlImport('iron_overlay_behavior_nodart.html')
library polymer_elements.lib.src.iron_overlay_behavior.iron_overlay_behavior;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'iron_fit_behavior.dart';
import 'iron_resizable_behavior.dart';
import 'iron_overlay_backdrop.dart';

/// Use `Polymer.IronOverlayBehavior` to implement an element that can be hidden or shown, and displays
/// on top of other content. It includes an optional backdrop, and can be used to implement a variety
/// of UI controls including dialogs and drop downs. Multiple overlays may be displayed at once.
///
/// ### Closing and canceling
///
/// A dialog may be hidden by closing or canceling. The difference between close and cancel is user
/// intent. Closing generally implies that the user acknowledged the content on the overlay. By default,
/// it will cancel whenever the user taps outside it or presses the escape key. This behavior is
/// configurable with the `no-cancel-on-esc-key` and the `no-cancel-on-outside-click` properties.
/// `close()` should be called explicitly by the implementer when the user interacts with a control
/// in the overlay element.
///
/// ### Positioning
///
/// By default the element is sized and positioned to fit and centered inside the window. You can
/// position and size it manually using CSS. See `Polymer.IronFitBehavior`.
///
/// ### Backdrop
///
/// Set the `with-backdrop` attribute to display a backdrop behind the overlay. The backdrop is
/// appended to `<body>` and is of type `<iron-overlay-backdrop>`. See its doc page for styling
/// options.
///
/// ### Limitations
///
/// The element is styled to appear on top of other content by setting its `z-index` property. You
/// must ensure no element has a stacking context with a higher `z-index` than its parent stacking
/// context. You should place this element as a child of `<body>` whenever possible.
@BehaviorProxy(const ['Polymer', 'IronOverlayBehavior'])
abstract class IronOverlayBehavior implements CustomElementProxyMixin {

  /// The backdrop element.
  get backdropElement => jsElement[r'backdropElement'];

  /// True if the overlay was canceled when it was last closed.
  bool get canceled => jsElement[r'canceled'];
  set canceled(bool value) { jsElement[r'canceled'] = value; }

  /// Returns the reason this dialog was last closed.
  get closingReason => jsElement[r'closingReason'];
  set closingReason(value) { jsElement[r'closingReason'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}

  /// Set to true to disable auto-focusing the overlay or child nodes with
  /// the `autofocus` attribute` when the overlay is opened.
  bool get noAutoFocus => jsElement[r'noAutoFocus'];
  set noAutoFocus(bool value) { jsElement[r'noAutoFocus'] = value; }

  /// Set to true to disable canceling the overlay with the ESC key.
  bool get noCancelOnEscKey => jsElement[r'noCancelOnEscKey'];
  set noCancelOnEscKey(bool value) { jsElement[r'noCancelOnEscKey'] = value; }

  /// Set to true to disable canceling the overlay by clicking outside it.
  bool get noCancelOnOutsideClick => jsElement[r'noCancelOnOutsideClick'];
  set noCancelOnOutsideClick(bool value) { jsElement[r'noCancelOnOutsideClick'] = value; }

  /// True if the overlay is currently displayed.
  bool get opened => jsElement[r'opened'];
  set opened(bool value) { jsElement[r'opened'] = value; }

  /// Set to true to display a backdrop behind the overlay.
  bool get withBackdrop => jsElement[r'withBackdrop'];
  set withBackdrop(bool value) { jsElement[r'withBackdrop'] = value; }

  /// Cancels the overlay.
  void cancel() =>
      jsElement.callMethod('cancel', []);

  /// Close the overlay.
  void close() =>
      jsElement.callMethod('close', []);

  /// Open the overlay.
  void open() =>
      jsElement.callMethod('open', []);

  /// Toggle the opened state of the overlay.
  void toggle() =>
      jsElement.callMethod('toggle', []);

  void registered() =>
      jsElement.callMethod('registered', []);
}
