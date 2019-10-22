import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_splitz/domain/model/domain_model.dart';

import 'base/base_item.dart';

class ItemMovie extends BaseItem<Movie> {

  OnMovieTap listener;

  ItemMovie(List<Movie> items, OnMovieTap listener) : super(items){
    this.listener = listener;
  }

  @override
  Widget onBindData(List<Movie> items) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, position) {
        return InkWell(
          onTap: () => listener.onMovieTap(context, items[position], position),
          child: Column(children: <Widget>[
              Row(
                children: <Widget>[

                  Container(height: 46, width: 70,
                      decoration: BoxDecoration(image:
                      DecorationImage(
                          image: NetworkImage(items[position].posterPath))
                      )
                  ),

                  /*CachedNetworkImage(
                    imageUrl: (items[position].posterPath != null ? "https://image.tmdb.org/t/p/w500" + items[position].posterPath : "https://image.tmdb.org/t/p/w500"),
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
                                Text((items[position].title.isNotEmpty ? items[position].title : "nc"), overflow: TextOverflow.ellipsis),
                                Text(items[position].releaseDate.isNotEmpty ? items[position].releaseDate : "nc"),
                                Text(items[position].popularity.toString().isNotEmpty ? items[position].popularity.toString() : "nc"),
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
      },
    );
  }
}

class OnMovieTap {
  void onMovieTap(BuildContext context, Movie item, int position) {

  }
}