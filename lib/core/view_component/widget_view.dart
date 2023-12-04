import 'package:flutter/widgets.dart';

/// An abstract class that defines the contract for a widget view.
///
/// A widget view is a [StatelessWidget] that is responsible for rendering a
/// component of type `C`. The component is passed to the widget view's
/// constructor and is stored as a final field.
///
/// Subclasses of [WidgetView] must implement the [build] method, which
/// returns a [Widget] that represents the visual representation of the
/// component.
///
/// Example usage:
///
/// ```dart
/// class MyComponentView extends WidgetView<MyComponent> {
///   const MyComponentView(MyComponent component, {Key? key})
///       : super(component, key: key);
///
///   @override
///   Widget build(BuildContext context) {
///     // Return the visual representation of the component.
///   }
/// }
/// ```
abstract class WidgetView<C> extends StatelessWidget {
  final C component;

  /// Creates a new widget view with the given component.
  ///
  /// The [component] parameter must not be null.
  const WidgetView(this.component, {super.key});

  /// Builds the visual representation of the component.
  ///
  /// This method must be implemented by subclasses of [WidgetView]. It should
  /// return a [Widget] that represents the visual representation of the
  /// component.
  @override
  Widget build(BuildContext context);
}
