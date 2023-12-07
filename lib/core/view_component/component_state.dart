import 'package:flutter/widgets.dart';
import 'package:flutter_architecture_example/core/view_component/widget_view.dart';

/// An abstract class that represents the state of a component.
///
/// This class should be extended by a stateful widget's state class to provide
/// a convenient way to build the widget tree for the widget.
///
/// The type parameter `T` should be the type of the stateful widget that this
/// state class is associated with, and the type parameter `C` should be the
/// type of the component that this state represents.
abstract class ComponentState<T extends StatefulWidget, C> extends State<T> {
  /// Component that this state represents.
  @protected
  C get component;

  /// Builds the widget tree for the widget.
  ///
  /// This method should be implemented by the subclass to return a `WidgetView`
  /// that represents the component's view.
  WidgetView<C> buildView();

  /// Wraps the `WidgetView` returned by [buildView].
  ///
  /// Can be implemented to insert widgets that perform UI logic in the widget tree, for example, BlocListener.
  Widget wrapView(Widget view) => view;

  @override
  Widget build(BuildContext context) {
    return wrapView(
      Builder(
        builder: (context) => buildView().build(context, component),
      ),
    );
  }
}
