import 'package:flutter/material.dart';
import 'package:ze_traiteur/domain/entities/food.dart';
import 'package:ze_traiteur/domain/entities/menu_item.dart';
import 'package:ze_traiteur/presentation/pages/menu/menu_screen.dart';
import 'package:ze_traiteur/presentation/utils/size_config.dart';

class MenuItemImage extends StatelessWidget {
  
  List<int> sectionId;
  String imageUrl;
  String name;
  int sectionLength;
  List<String> sectionNames;
  int menuId;
  MenuItemImage(
      {Key? key,
      required this.sectionId,
      required this.imageUrl,
      required this.menuId,
      required this.sectionNames,
      required this.name,
      required this.sectionLength})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
 
    return Column(children: [
      GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MenuScreen(
                        //menuItem: menuItem, // IMAGE  & ID of section
                        //  extras: extras,
                        
                        menuId: menuId,
                        sectionNames: sectionNames,
                        sectionId: sectionId,
                        imageUrl: imageUrl,
                        sectionLength: sectionLength,
                        name: name,
                      )),
            );
          },
          child: Container(
              child: Container(
                  width: SizeConfig.screenWidth! * 0.6,
                  height: SizeConfig.screenHeight! * 0.28,
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
                            // TO DO
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
                  )))),
      SizedBox(
        height: 0,
      ),
      Flexible(
          child: Text(name.substring(0, 5), // TO DO
              style: TextStyle(fontSize: 30),
              overflow: TextOverflow.ellipsis)),
    ]);
  }
}
