import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class IframeHtml extends StatelessWidget {
  final String url;

  IframeHtml({required this.url});

  @override
  Widget build(BuildContext context) {
    var htmlData = '';

    if (url.contains('youtube')) {
      htmlData = """
          <iframe width="600" height="auto" src="$url" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          """;
    } else if (url.contains('facebook')) {
      htmlData = """
    <iframe src="$url" width="476" height="476" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share" allowFullScreen="true"></iframe>
    """;
    } else if (url.contains('twitter')) {
      htmlData = """
          <a class="twitter-timeline" href="$url">Tweets by TwitterDev</a>
          """;
    } else {
      htmlData ==
          """
          <blockquote class="tiktok-embed" cite="https://www.tiktok.com/@pesua.nlqda/video/7030580761543593243" data-video-id="7030580761543593243" style="max-width: 605px;min-width: 325px;" > <section> <a target="_blank" title="@pesua.nlqda" href="https://www.tiktok.com/@pesua.nlqda">@pesua.nlqda</a> <p>Trả lời @tubargil</p> <a target="_blank" title="♬ nhạc nền  - #sữaidol" href="https://www.tiktok.com/music/nhạc-nền-sữaidol-7030580676218915611">♬ nhạc nền  - #sữaidol</a> </section> </blockquote> <script async src="https://www.tiktok.com/embed.js"></script>
    """;
    }

    return Container(
      child: Html(
        data: htmlData,
        onCssParseError: (css, messages) {
          print("css that errored: $css");
          print("error messages:");
          messages.forEach((element) {
            print(element);
          });
        },
      ),
    );
  }
}
