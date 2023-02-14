import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore_appstore/pages/globals/globals.dart';
import 'package:playstore_appstore/pages/views/forYou.dart';
import 'package:playstore_appstore/pages/views/info.dart';
import 'package:playstore_appstore/pages/views/infoIOS.dart';
import 'package:playstore_appstore/pages/views/topChart.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const App_Store(),
    ),
  );
}

class App_Store extends StatefulWidget {
  const App_Store({Key? key}) : super(key: key);

  @override
  State<App_Store> createState() => _App_StoreState();
}

class _App_StoreState extends State<App_Store> with TickerProviderStateMixin {
  late TabController tabController;

  int Index = 0;
  PageController pageController = PageController();
  GlobalKey<FormState> keys = GlobalKey<FormState>();

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Globals.isAndroid
        ? MaterialApp(
            routes: {
              'info': (context) => const Info(),
            },
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            home: Builder(
              builder: (context) {
                return Scaffold(
                  key: keys,
                  appBar: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    flexibleSpace: Padding(
                      padding:
                          const EdgeInsets.only(top: 50, left: 20, right: 20),
                      child: SizedBox(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Search for apps and games",
                            suffixIcon: Switch(
                                onChanged: (val) {
                                  setState(() {
                                    Globals.isAndroid = val;
                                  });
                                },
                                value: Globals.isAndroid),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    bottom: TabBar(
                      controller: tabController,
                      isScrollable: true,
                      onTap: (val) {
                        setState(() {
                          pageController.animateToPage(val,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut);
                        });
                      },
                      indicatorColor: Colors.green,
                      tabs: const [
                        Tab(
                          child: Text(
                            "For you",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Top Charts",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Kids",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Events",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  body: PageView(
                    controller: pageController,
                    onPageChanged: (val) {
                      setState(() {
                        tabController.animateTo(val);
                      });
                    },
                    children: [
                      const ForYou(),
                      const TopCharts(),
                      Container(
                        color: Colors.white,
                        child: const Icon(
                          Icons.hourglass_empty,
                          size: 50,
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: const Icon(
                          Icons.hourglass_empty,
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                  bottomNavigationBar: BottomNavigationBar(
                    selectedItemColor: Colors.blue,
                    unselectedItemColor: Colors.grey,
                    currentIndex: Index,
                    onTap: (val) {
                      setState(() {
                        Index = val;
                        tabController;
                        tabController.animateTo(val);
                        pageController;
                        pageController.animateToPage(val,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      });
                    },
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.grid_view_rounded,
                          color: Colors.grey,
                        ),
                        label: 'Apps',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.sports_esports_outlined,
                            color: Colors.grey),
                        label: 'Games',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.movie_creation_outlined,
                          color: Colors.grey,
                        ),
                        label: 'Movies & TV',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.book_sharp,
                          color: Colors.grey,
                        ),
                        label: 'Books',
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        : CupertinoApp(
            routes: {
              'infoIOS': (context) => const InfoIOS(),
            },
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            home: Builder(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: CupertinoTabScaffold(
                    tabBar: CupertinoTabBar(
                      items: const [
                        BottomNavigationBarItem(
                          icon: Icon(
                            CupertinoIcons.today,
                          ),
                          label: 'Today',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(
                            CupertinoIcons.rocket_fill,
                          ),
                          label: 'Games',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(
                            CupertinoIcons.layers_alt_fill,
                          ),
                          label: 'Apps',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(
                            CupertinoIcons.arrow_down_doc_fill,
                          ),
                          label: 'Updates',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(
                            CupertinoIcons.search,
                          ),
                          label: 'Search',
                        ),
                      ],
                    ),
                    tabBuilder: (context, i) {
                      if (i == 0) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            top: 50,
                            left: 15,
                            right: 15,
                          ),
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Saturday, February 11",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: CupertinoColors.systemGrey,
                                      ),
                                    ),
                                    Switch.adaptive(
                                        value: Globals.isAndroid,
                                        onChanged: (val) {
                                          setState(() {
                                            Globals.isAndroid = val;
                                          });
                                        }),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Today",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 38,
                                        ),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://tse3.mm.bing.net/th?id=OIP.PJYPqpJ2UZHQZga1ROEnKwHaEo&pid=Api&P=0"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 400,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            image: NetworkImage(
                                                "http://4.bp.blogspot.com/-n9K9W_QifWM/UY-hWix4KJI/AAAAAAAAALw/HLVKnFNW9Xg/s1600/games-wallpaper-desktop-hd.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                          boxShadow: const [
                                            BoxShadow(
                                              spreadRadius: 0.5,
                                              blurRadius: 5,
                                              color:
                                                  CupertinoColors.systemGrey2,
                                              offset: Offset(5, 5),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: CupertinoColors.systemGrey5,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              height: 310,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    "SERIOUSLY ?",
                                                    style: TextStyle(
                                                      color: CupertinoColors
                                                          .systemGrey4,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Bizarre Sports Games",
                                                    style: TextStyle(
                                                      fontSize: 33,
                                                      color:
                                                          CupertinoColors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Text(
                                              "Anything cart happen sports-these games prove its. Tap to play.",
                                              style: TextStyle(
                                                color:
                                                    CupertinoColors.systemGrey4,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 30,
                                  ),
                                  child: Container(
                                    height: 400,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: NetworkImage(
                                            "https://www.pixelstalk.net/wp-content/uploads/2016/06/Best-Video-Games-HD-Wallpaper.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          spreadRadius: 0.5,
                                          blurRadius: 5,
                                          color: CupertinoColors.systemGrey2,
                                          offset: Offset(5, 5),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(15),
                                      color: CupertinoColors.systemGrey5,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      } else if (i == 1) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            top: 70,
                            left: 15,
                            right: 15,
                          ),
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Games",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 38,
                                        ),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://tse3.mm.bing.net/th?id=OIP.PJYPqpJ2UZHQZga1ROEnKwHaEo&pid=Api&P=0"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(),
                                const Text(
                                  "NEW GAME",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: CupertinoColors.activeBlue,
                                    fontSize: 12,
                                  ),
                                ),
                                const Text(
                                  "Warhammer Aos: Realm War",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const Text(
                                  "Compete in thrilling battles",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: CupertinoColors.systemGrey,
                                  ),
                                ),
                                //Image
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 20,
                                  ),
                                  child: Container(
                                    height: 300,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: NetworkImage(
                                          "https://2.bp.blogspot.com/-241NHeJ7R-k/Ucq1zCnO2eI/AAAAAAAAHwo/hvwmQjoNnAc/s1600/video-games-star-wars-282823.jpg",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          spreadRadius: 0.5,
                                          blurRadius: 5,
                                          color: CupertinoColors.systemGrey2,
                                          offset: Offset(5, 5),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(15),
                                      color: CupertinoColors.systemGrey5,
                                    ),
                                  ),
                                ),
                                //Divider
                                const Padding(
                                  padding: EdgeInsets.only(
                                    top: 15,
                                  ),
                                  child: Divider(),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Discover AR Gaming",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                    Text(
                                      "See All",
                                      style: TextStyle(
                                        color: CupertinoColors.activeBlue,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Column(
                                      children: Globals.Games.map(
                                        (e) => Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 5,
                                              ),
                                              child: GestureDetector(
                                                onTap: () {
                                                  Map<String, dynamic> map = {
                                                    'logo': e['logo'],
                                                    'img': e['img'],
                                                    'img2': e['img2'],
                                                    'name': e['name'],
                                                    'rate': e['rate'],
                                                    'subname': e['subname'],
                                                    'review': e['review'],
                                                    'download': e['download'],
                                                    'storage': e['storage'],
                                                  };
                                                  Navigator.pushNamed(
                                                      context, 'infoIOS',
                                                      arguments: map);
                                                },
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 85,
                                                      width: 85,
                                                      decoration: BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                            spreadRadius: 1,
                                                            blurRadius: 5,
                                                            color: Colors
                                                                .grey.shade700,
                                                          )
                                                        ],
                                                        image: DecorationImage(
                                                          image: NetworkImage(
                                                              "${e['logo']}"),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        color: CupertinoColors
                                                            .systemGrey5,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                        left: 15,
                                                      ),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "${e['name']}",
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          Text(
                                                            "${e['subname']}",
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 18,
                                                              color:
                                                                  CupertinoColors
                                                                      .systemGrey,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              top: 10,
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  height: 30,
                                                                  width: 70,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .blue
                                                                        .shade50,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            25),
                                                                  ),
                                                                  child:
                                                                      const Text(
                                                                    "GET",
                                                                    style:
                                                                        TextStyle(
                                                                      color: CupertinoColors
                                                                          .activeBlue,
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                    left: 10,
                                                                  ),
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: const [
                                                                      Text(
                                                                        "In-App",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              10,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          color:
                                                                              CupertinoColors.systemGrey3,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        "Purchases",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              10,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          color:
                                                                              CupertinoColors.systemGrey3,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                              ),
                                              child: Divider(
                                                indent: 100,
                                                endIndent: 10,
                                              ),
                                            )
                                          ],
                                        ),
                                      ).toList(),
                                    ))
                              ],
                            ),
                          ),
                        );
                      }
                      return const Center(
                        child: Text(
                          "Invalid",
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: CupertinoColors.destructiveRed,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          );
  }
}
