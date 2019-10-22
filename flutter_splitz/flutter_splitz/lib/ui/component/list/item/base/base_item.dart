import 'package:flutter/cupertino.dart';

abstract class BaseItem<T> extends StatelessWidget {

  List<T> items;

  Widget onBindData(List<T> items);

  BaseItem(List<T> items) {
    this.items = items;
  }

  void update(List<T> items) {
    this.items = items;
  }

  @override
  Widget build(BuildContext context) {
    return onBindData(items);
  }
}

abstract class BaseStatefulItem<T> extends StatefulWidget {

  List<T> items;

  State onAttachState(List<T> items);

  BaseStatefulItem(List<T> items) {
    this.items = items;
  }

  void update(List<T> items) {
    this.items = items;
  }

  @override
  State<StatefulWidget> createState() {
    return onAttachState(items);
  }
}