import 'package:flutter/material.dart';
import 'package:microsoft_teams/pages/widgets/chat_list.dart';

class MobileView extends StatefulWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Scaffold(
      floatingActionButton: CircleAvatar(
          radius: 25,
          backgroundColor: Theme.of(context).primaryColor,
          child: const Icon(Icons.add)),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
              pinned: true,
              floating: true,
              snap: true,
              title: Text(
                "WhatsApp",
                style: textTheme.bodyText1!
                    .copyWith(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.light_mode),
                  tooltip: 'Open shopping cart',
                  onPressed: () {
                    // handle the press
                  },
                ),
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
              ],
              bottom: TabBar(controller: _tabController, tabs: const [
                Tab(
                  text: "CHATS",
                ),
                Tab(
                  text: "STATUS",
                ),
                Tab(
                  text: "CALLS",
                )
              ]))
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            ChatList(textTheme: textTheme, size: _size),
            ChatList(textTheme: textTheme, size: _size),
            ChatList(textTheme: textTheme, size: _size),
          ],
        ),
      ),
    );
  }
}
