import 'package:flutter/material.dart';
import 'package:quotes_app/Utitlity/const.dart';
import 'package:quotes_app/Utitlity/quotecard.dart';

class QuoteWidget extends StatefulWidget {
  const QuoteWidget({super.key, required this.response});
  final dynamic response;

  @override
  State<QuoteWidget> createState() => _QuoteWidgetState();
}

class _QuoteWidgetState extends State<QuoteWidget> {
  @override
  Widget build(BuildContext context) {
    try {
      if (widget.response['totalCount'] == 0) {
        return Text(
          'No Match Found',
          style: commontextstyle,
        );

        // Container();
      }
      return Expanded(
        child: ListView.builder(
          itemCount: widget.response['count'],
          itemBuilder: (context, index) {
            if (widget.response['results'] == null) {
              return Container();
            }
            return QuoteCard(
              quote: widget.response['results'][index]['content'].toString(),
            );
          },
        ),
      );
    } catch (e) {
      return Text(
        'No match Found',
        style: commontextstyle,
      );
    }
  }
}
