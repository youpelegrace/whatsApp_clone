import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({
    Key? key,
    required this.textTheme,
    required Size size,
  })  : _size = size,
        super(key: key);

  final TextTheme textTheme;
  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const CircleAvatar(
                    radius: 23,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Title",
                          style: textTheme.bodyText1!.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "SubTitle",
                          style: textTheme.bodyText2!.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Divider(
                thickness: 1,
                indent: _size.width * 0.050,
                endIndent: _size.width * 0.002,
              )
            ],
          );
        },
      ),
    );
  }
}
