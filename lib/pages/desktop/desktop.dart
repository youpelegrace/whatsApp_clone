import 'package:flutter/material.dart';
import 'package:microsoft_teams/pages/widgets/chat_list.dart';

class DeskTopView extends StatelessWidget {
  const DeskTopView({
    Key? key,
    required Size size,
    required this.textTheme,
  })  : _size = size,
        super(key: key);
  final Size _size;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: _size.width > 1340 ? 3 : 5,
          child: Scaffold(
            appBar: AppBar(
              leading: const Padding(
                padding: EdgeInsets.only(left: 10.0, top: 8, bottom: 8),
                child: CircleAvatar(
                  radius: 8,
                ),
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.donut_large),
                  tooltip: 'Open shopping cart',
                  onPressed: () {
                    // handle the press
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.message),
                  tooltip: 'Open shopping cart',
                  onPressed: () {
                    // handle the press
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  tooltip: 'Open shopping cart',
                  onPressed: () {
                    // handle the press
                  },
                ),
              ],
            ),
            body: SafeArea(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 2,
                    ),
                    // decoration: const BoxDecoration(
                    //     border: Border(
                    //   bottom: BorderSide(
                    //     color: kContentColorDarkTheme,
                    //     width: 1.0,
                    //   ),
                    // )),
                    height: 50,
                    child: Row(
                      children: [
                        SizedBox(
                          width: _size.width * 0.29,
                          height: 35,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "    Search or start new chat",
                              filled: true,
                              fillColor: Theme.of(context).primaryColor,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none),
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 18),
                              prefixIcon: const Icon(Icons.search),
                              hintStyle: const TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                              ),
                            ),
                            onChanged: (value) {},
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.filter_list,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                  ChatList(textTheme: textTheme, size: _size)
                ],
              ),
            ),
          ),
        ),
        const VerticalDivider(
          width: 2,
        ),
        Expanded(
          flex: _size.width > 1340 ? 10 : 10,
          child: Scaffold(
            appBar: AppBar(
              leading: const Padding(
                padding:
                    EdgeInsets.only(left: 10.0, top: 8, bottom: 8, right: 2),
                child: CircleAvatar(
                  radius: 10,
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "User",
                    style: textTheme.bodyText1!
                        .copyWith(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "click here for contact info",
                    style: textTheme.bodyText2!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.search),
                  tooltip: 'Open shopping cart',
                  onPressed: () {
                    // handle the press
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  tooltip: 'Open shopping cart',
                  onPressed: () {
                    // handle the press
                  },
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
            body: Column(),
          ),
        ),
      ],
    );
  }
}
