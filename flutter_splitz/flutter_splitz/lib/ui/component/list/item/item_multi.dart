import 'package:flutter/material.dart';
import 'package:flutter_splitz/domain/model/domain_model.dart';

import 'base/base_item.dart';

class ItemMulti extends BaseItem<Multi> {

  OnMultiTap listener;

  ItemMulti(List<Multi> items, OnMultiTap listener) : super(items){
    this.listener = listener;
  }

  @override
  Widget onBindData(List<Multi> items) {

    String imageUrl;
    String title;
    String date;
    String popularity;

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, position) {

        if(items[position] is Movie) {

          // widget 1
          imageUrl = (items[position] as Movie).posterPath != null
              ? "https://image.tmdb.org/t/p/w500" + (items[position] as Movie).posterPath
              : "https://image.tmdb.org/t/p/w500";

          title = (items[position] as Movie).title.isNotEmpty ? (items[position] as Movie).title : "nc";
          date = (items[position] as Movie).releaseDate.isNotEmpty ? (items[position] as Movie).releaseDate : "nc";
          popularity = (items[position] as Movie).popularity.toString().isNotEmpty ? (items[position] as Movie).popularity.toString() : "nc";

          return WidgetMulti(items[position], context, position, listener, imageUrl, title, date, popularity);

        } else if(items[position] is Tv) {

          // widget 2
          imageUrl = (items[position] as Tv).posterPath != null
              ? "https://image.tmdb.org/t/p/w500" + (items[position] as Tv).posterPath
              : "https://image.tmdb.org/t/p/w500";

          title = (items[position] as Movie).title.isNotEmpty ? (items[position] as Movie).title : "nc";
          date = (items[position] as Movie).releaseDate.isNotEmpty ? (items[position] as Movie).releaseDate : "nc";
          popularity = (items[position] as Movie).popularity.toString().isNotEmpty ? (items[position] as Movie).popularity.toString() : "nc";

          return WidgetMulti(items[position], context, position, listener, imageUrl, title, date, popularity);

        } else {
          // widget 3
          imageUrl = (items[position] as Person).profilePath != null
              ? "https://image.tmdb.org/t/p/w500" + (items[position] as Person).profilePath
              : "https://image.tmdb.org/t/p/w500";

          title = (items[position] as Person).name.isNotEmpty ? (items[position] as Movie).title : "nc";
          date = "";
          popularity = (items[position] as Person).popularity.toString().isNotEmpty ? (items[position] as Person).popularity.toString() : "nc";

          return WidgetMulti(items[position], context, position, listener, imageUrl, title, date, popularity);
        }
      },
    );
  }
}

class WidgetMulti extends StatelessWidget {

  String imageUrl;
  String title;
  String date;
  String popularity;
  OnMultiTap listener;
  Multi item;
  BuildContext context;
  int position;

  WidgetMulti(Multi item, BuildContext context, int position, OnMultiTap listener, String imageUrl, title, String date, popularity) {
    this.item = item;
    this.context = context;
    this.position = position;
    this.listener = listener;
    this.imageUrl = imageUrl;
    this.title = title;
    this.date = date;
    this.popularity = popularity;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => listener.onMultiTap(context, item, position),
        child: Column(children: <Widget>[
          Row(
            children: <Widget>[

              Container(height: 70, width: 46,
                  decoration: BoxDecoration(image:
                  DecorationImage(
                      image: NetworkImage(imageUrl))
                  )
              ),

              /*CachedNetworkImage(
                imageUrl: imageUrl,
                width: 46,
                height: 70,
                placeholder: (context, url) => Container(color: Colors.grey, width: 46, height: 70),
                errorWidget: (context, url, error) => Container(color: Colors.grey, width: 46, height: 70),
              ),*/

              Expanded(child: Padding(padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Wrap(
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Visibility(child: Text(title, overflow: TextOverflow.ellipsis), visible: title.isNotEmpty, maintainSize: false),
                            Visibility(child: Text(date), visible: date.isNotEmpty, maintainSize: false),
                            Visibility(child: Text(popularity), visible: popularity.isNotEmpty, maintainSize: false)
                          ]
                      ),
                    ],)
              ))
            ],
          ),
          Divider(
              height: 2.0,
              color: Colors.grey
          )
        ])
    );
  }
}

class OnMultiTap {
  void onMultiTap(BuildContext context, Multi item, int position) {

  }
}