import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotes_app/Utitlity/const.dart';
import 'package:quotes_app/Utitlity/quoteslistwidget.dart';
import 'package:quotes_app/Utitlity/quoteusingprovider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key, required this.apitype});
  final int apitype;

  static const id = 'Search Page';

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cardTitle[widget.apitype]),
      ),
      body: ChangeNotifierProvider<QuoteList>(
        create: (context) => QuoteList(),
        child: Consumer<QuoteList>(builder: (context, provider, child) {
          return Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                stops: const [0.2, 0.4, 0.8],
                colors: [
                  Colors.blue.shade300,
                  Colors.blue.shade400,
                  Colors.pink.shade300
                ],
              ),
            ),
            child: (widget.apitype == 2)
                ? Center(
                    child: Text(
                      'Work iS not Done in this field',
                      style: commontextstyle,
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextFormField(
                        controller: textEditingController,
                        onChanged: ((value) async {
                          if (value != '') {
                            await provider.getquotelistprovider(
                                value, widget.apitype);
                            print(provider.response);
                            // ignore: use_build_context_synchronously
                          } else {
                            setState(() {});
                          }
                        }),
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Enter Keyword',
                          hintStyle: commontextstyle,
                          border: outlineborder,
                          enabledBorder: outlineborder,
                          focusedBorder: outlineborder,
                        ),
                        style: commontextstyle,
                      ),
                      (provider.response == null)
                          ? Container()
                          : QuoteWidget(response: provider.response),
                    ],
                  ),
          );
        }),
      ),
    );
  }
}
