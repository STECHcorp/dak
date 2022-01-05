import 'package:flutter/material.dart';
import 'package:dak/components/elevated_button_nav.dart';
import 'package:dak/components/iframe_html.dart';
import '../constants.dart';
import '../pages/profile.dart';

class Post extends StatelessWidget {
  final fontSize = 15.0;
  final iconSize = 20.0;
  final String account;
  final String postContent;
  final String comment;
  final String video;
  final List<String>? images;
  // final List<String>? videos;

  const Post({
    required this.account,
    required this.postContent,
    required this.comment,
    this.images = const [],
    // this.videos = const [],
    required this.video,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: subBgColor,
        ),
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        ElevatedButtonNav(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Profile()),
                            );
                          },
                          child: CircleAvatar(
                            radius: 20.0,
                            backgroundImage: AssetImage('images/avatar.png'),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              account,
                              style: TextStyle(
                                fontSize: fontSize,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(children: [
                              Text(
                                '1 giờ trước',
                                style: TextStyle(
                                  fontSize: fontSize,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Icon(
                                Icons.public,
                                color: Colors.grey,
                                size: iconSize,
                              ),
                            ])
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //content
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  child: Text(
                    postContent,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: fontSize,
                    ),
                  ),
                ),
              ),
              //videos >1
              // videos!.isNotEmpty
              //     ? Container(
              //         alignment: Alignment.center,
              //         width: double.infinity,
              //         constraints: BoxConstraints(
              //           maxHeight: 500.0,
              //         ),
              //         child: Container(
              //           padding: const EdgeInsets.all(8.0),
              //           width: double.infinity,
              //           height: double.infinity,
              //           alignment: Alignment.center,
              //           child: Container(
              //               constraints: BoxConstraints(
              //                 maxWidth: 600.0,
              //               ),
              //               child: IframeHtml(url: videos![0])),
              //         ))
              //     : Container(),

              //video

              video != ""
                  ? Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      constraints: BoxConstraints(
                        maxHeight: 500.0,
                      ),
                      child: Container(
                          padding: const EdgeInsets.all(8.0),
                          width: double.infinity,
                          height: double.infinity,
                          alignment: Alignment.center,
                          child: Container(
                            constraints: BoxConstraints(
                              maxWidth: 600.0,
                            ),
                            child: IframeHtml(url: video),
                          )))
                  : SizedBox(
                      height: 0.0,
                    ),

              //images
              images!.isNotEmpty
                  ? Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      constraints: BoxConstraints(
                        maxHeight: 500.0,
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Image.network(images![0]),
                      ))
                  : Container(),
              // like
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.favorite,
                          color: Colors.grey,
                          size: iconSize,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          '1.5k',
                          style: TextStyle(
                            fontSize: fontSize,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.arrow_upward_sharp,
                          color: Colors.grey,
                          size: iconSize,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          '1k',
                          style: TextStyle(
                            fontSize: fontSize,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.comment,
                          color: Colors.grey,
                          size: iconSize,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          '1.5k',
                          style: TextStyle(
                            fontSize: fontSize,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Icon(
                        Icons.share,
                        color: Colors.grey,
                        size: iconSize,
                      ),
                    ),
                  ],
                ),
              ),
              // comment
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 15.0,
                            backgroundImage: AssetImage('images/avatar.png'),
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'Bug loi mat',
                            style: TextStyle(
                              fontSize: fontSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            comment,
                            style: TextStyle(
                              fontSize: fontSize,
                            ),
                          ),
                          Icon(
                            Icons.edit,
                            color: Colors.grey,
                            size: iconSize,
                          ),
                        ]),
                  ],
                ),
              ),
              //write comment box
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 15.0,
                        backgroundImage: AssetImage('images/avatar.png'),
                      ),
                      SizedBox(width: 10.0),
                      Flexible(
                        child: Container(
                          child: TextFormField(
                            expands: true,
                            maxLines: null,
                            minLines: null,
                            decoration: InputDecoration(
                              constraints: BoxConstraints(maxHeight: 50),
                              hintText: 'Viết bình luận...',
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  borderSide: BorderSide(color: Colors.grey)),
                              hintStyle: TextStyle(
                                fontSize: fontSize,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        child: Icon(
                          Icons.send,
                          color: Colors.grey,
                          size: iconSize,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
