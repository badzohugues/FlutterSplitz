import 'package:flutter/material.dart';
import 'package:flutter_splitz/domain/model/domain_model.dart';
import 'package:flutter_splitz/ui/component/list/item/item_multi.dart';
import 'package:flutter_splitz/ui/movies/contract/contract_movies.dart';
import 'package:flutter_splitz/ui/movies/presenter/movie_presenter.dart';
import 'package:toast/toast.dart';

class FragmentMovies extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FragmentMoviesState();
}

class _FragmentMoviesState extends State<FragmentMovies> implements View, OnMultiTap {
  List<Movie> itemList = List();
  ItemMulti itemBuilderMulti;
  bool _isloadingProgress = false;

  MoviesPresenter _presenter;

  @override
  void initState() {
    super.initState();

    itemBuilderMulti = ItemMulti(itemList, this);
    _isloadingProgress = true;
    _presenter = MoviesPresenter(this);
    _presenter.getPopularMovies();
  }

  @override
  Widget build(BuildContext context) {

    return initUI();
  }

  Widget initUI() {
    if(_isloadingProgress) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return itemBuilderMulti;
    }
  }

  @override
  void onMultiTap(BuildContext context, Multi item, int position) {
    /*Scaffold
        .of(context)
        .showSnackBar(new SnackBar(content: new Text(position.toString() + " " + item.title)));*/

    /*Navigator.push(context,
        MaterialPageRoute(
            builder: (context) => ScreenDetails(multi: item)));*/

    setState(() {
      Toast.show((item as Movie).originalTitle,
          context,
          duration: Toast.LENGTH_LONG,
          gravity:  Toast.CENTER,
          backgroundColor: Colors.white,
          textColor: Colors.black);

      _isloadingProgress = false;
    });

  }

  @override
  void showError(String message) {
    setState(() {
      Toast.show(message,
          context,
          duration: Toast.LENGTH_LONG,
          gravity:  Toast.CENTER,
          backgroundColor: Colors.white,
          textColor: Colors.black);

      _isloadingProgress = false;
    });
  }

  @override
  void showMovies(List<Movie> movies) {
    setState(() {
      // I update the list of items
      itemList = movies;
      itemBuilderMulti.update(itemList);
      _isloadingProgress = false;
    });
  }
}