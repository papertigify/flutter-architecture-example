import 'package:flutter/widgets.dart';

/// An abstract class that defines the contract for a widget view.
///
/// A widget view is responsible for rendering a component of type `C`.
/// The component is passed to the widget view's [build] method.
///
/// Subclasses of [WidgetView] must implement the [build] method, which
/// returns a [Widget] that represents the visual representation of the
/// component.
///
/// Example usage:
///
/// ```dart
/// class MyComponentView extends WidgetView<MyComponent> {
///   const MyComponentView();
///
///   @override
///   Widget build(BuildContext context, MyComponent component) {
///     // Return the visual representation of the component.
///   }
/// }
/// ```
abstract class WidgetView<C> {
  /// Creates a new widget view.
  const WidgetView();

  /// Builds the visual representation of the component.
  ///
  /// This method must be implemented by subclasses of [WidgetView]. It should
  /// return a [Widget] that represents the visual representation of the
  /// component.
  Widget build(BuildContext context, C component);
}
