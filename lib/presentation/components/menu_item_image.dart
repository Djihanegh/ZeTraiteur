import 'package:flutter/material.dart';
import 'package:ze_traiteur/domain/entities/menu_item.dart';
import 'package:ze_traiteur/presentation/pages/menu/menu_screen.dart';

class MenuItemImage extends StatelessWidget {
  final MenuItem menuItem;

  const MenuItemImage({Key? key, required this.menuItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MenuScreen(menuItem: menuItem,)),
          );
        },
        child: Container(
            child: Container(
                width: 220,
                height: 50,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Container(
                  width: 230,
                  height: 60,
                  margin: EdgeInsets.all(5.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      child: Stack(
                        children: <Widget>[
                          /*  Image(
                                  image: CachedNetworkImageProvider(
                                      item['image']
                                      /*imageUrl: item['image'],
                            width: 1000,
                            height: 1000,
                            fit: BoxFit.cover,
                            imageBuilder: (context, imageProvider) {
                              return Container(
                                width: 60,
                                height: 150,
                                padding: EdgeInsets.all(0.0),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(
                                      width: 2.0, color: Colors.white),
                                  image: DecorationImage(
                                      image: imageProvider, fit: BoxFit.cover),
                                ),
                              );
                            },
                            errorWidget: (context, url, error) {
                              return Image.asset(
                                'assets/images/no_image.jpg',
                                width: 48,
                                height: 48,
                              );
                            },*/
                                      )),*/
                          /*  Image.network(
                                item['image'] ?? '',
                                fit: BoxFit.cover,
                                width: 1000.0,
                                height: 1000.0,
                              ),*/
                        ],
                      )),
                ))));
  }
}