import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MySetting(),
    ),
  );
}

class MySetting extends StatefulWidget {
  const MySetting({Key? key}) : super(key: key);

  @override
  State<MySetting> createState() => _MySettingState();
}

class _MySettingState extends State<MySetting> {
  bool isAndroid = true;

  bool lockAppSecurity = true;
  bool useFingerSecurity = false;
  bool changePasswordSecurity = true;

  @override
  Widget build(BuildContext context) {
    return isAndroid
        ? MaterialApp(
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            home: Builder(
              builder: (context) {
                return Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.red,
                    title: const Text("Setting UI"),
                    actions: [
                      Switch.adaptive(
                        value: isAndroid,
                        onChanged: (val) {
                          setState(
                            () {
                              isAndroid = val;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  body: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        title(title: "Common"),
                        commonWid(
                          title: "Language",
                          subtitle: "English",
                          icon: const Icon(
                            Icons.language,
                            size: 35,
                          ),
                        ),
                        commonWid(
                          title: "Environment",
                          subtitle: "Production",
                          icon: const Icon(
                            Icons.cloud_outlined,
                            size: 35,
                          ),
                        ),
                        title(title: "Account"),
                        accountWid(
                          title: "Phone number",
                          icon: const Icon(
                            Icons.phone,
                            size: 35,
                          ),
                        ),
                        accountWid(
                          title: "Email",
                          icon: const Icon(
                            Icons.email,
                            size: 35,
                          ),
                        ),
                        accountWid(
                          title: "Sign out",
                          icon: const Icon(
                            Icons.logout,
                            size: 35,
                          ),
                        ),
                        title(title: "Security"),
                        Card(
                          elevation: 0.5,
                          child: ListTile(
                            leading: const Icon(
                              Icons.phonelink_lock,
                              size: 35,
                            ),
                            title: const Text("Lock app in background"),
                            trailing: Switch(
                              activeColor: Colors.red,
                              value: lockAppSecurity,
                              onChanged: (val) {
                                setState(() {
                                  lockAppSecurity = val;
                                });
                              },
                            ),
                          ),
                        ),
                        Card(
                          elevation: 0.5,
                          child: ListTile(
                            leading: const Icon(
                              Icons.fingerprint,
                              size: 35,
                            ),
                            title: const Text("Use Fingerprint"),
                            trailing: Switch(
                              activeColor: Colors.red,
                              value: useFingerSecurity,
                              onChanged: (val) {
                                setState(() {
                                  useFingerSecurity = val;
                                });
                              },
                            ),
                          ),
                        ),
                        Card(
                          elevation: 0.5,
                          child: ListTile(
                            leading: const Icon(
                              Icons.lock,
                              size: 35,
                            ),
                            title: const Text("Change password"),
                            trailing: Switch(
                              activeColor: Colors.red,
                              value: changePasswordSecurity,
                              onChanged: (val) {
                                setState(() {
                                  changePasswordSecurity = val;
                                });
                              },
                            ),
                          ),
                        ),
                        title(title: "Misc"),
                        accountWid(
                          title: "Terms of Service",
                          icon: const Icon(
                            Icons.home_repair_service,
                            size: 35,
                          ),
                        ),
                        accountWid(
                          title: "Open source licences",
                          icon: const Icon(
                            Icons.collections_bookmark,
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        : CupertinoApp(
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            home: Builder(
              builder: (context) {
                return CupertinoPageScaffold(
                  navigationBar: CupertinoNavigationBar(
                    backgroundColor: CupertinoColors.systemRed,
                    middle: const Text(
                      "Setting UI",
                      style: TextStyle(
                        color: CupertinoColors.white,
                        fontSize: 22,
                      ),
                    ),
                    trailing: Switch.adaptive(
                      value: isAndroid,
                      onChanged: (val) {
                        setState(
                          () {
                            isAndroid = val;
                          },
                        );
                      },
                    ),
                  ),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        titleIos(title: "Common"),
                        commonWidIos(
                          title: "Language",
                          subtitle: "English",
                          icon: const Icon(
                            Icons.language,
                            color: CupertinoColors.systemGrey,
                            size: 35,
                          ),
                          size: 125,
                        ),
                        Container(
                          height: 1,
                          color: CupertinoColors.systemGrey5,
                        ),
                        commonWidIos(
                          title: "Environment",
                          subtitle: "Production",
                          icon: const Icon(
                            Icons.cloud_outlined,
                            color: CupertinoColors.systemGrey,
                            size: 35,
                          ),
                          size: 75,
                        ),
                        titleIos(title: "Account"),
                        accountWidIos(
                          title: "Phone number",
                          icon: const Icon(
                            Icons.phone,
                            color: CupertinoColors.systemGrey,
                            size: 35,
                          ),
                          size: 147,
                        ),
                        Container(
                          height: 1,
                          color: CupertinoColors.systemGrey5,
                        ),
                        accountWidIos(
                          title: "Email",
                          icon: const Icon(
                            Icons.email,
                            color: CupertinoColors.systemGrey,
                            size: 35,
                          ),
                          size: 223,
                        ),
                        Container(
                          height: 1,
                          color: CupertinoColors.systemGrey5,
                        ),
                        accountWidIos(
                          title: "Sign out",
                          icon: const Icon(
                            Icons.logout,
                            color: CupertinoColors.systemGrey,
                            size: 35,
                          ),
                          size: 200,
                        ),
                        titleIos(title: "Security"),
                        Container(
                          height: 55,
                          width: double.infinity,
                          color: CupertinoColors.white,
                          child: Row(
                            children: [
                              const SizedBox(
                                height: double.infinity,
                                width: 75,
                                child: Icon(
                                  Icons.phonelink_lock,
                                  color: CupertinoColors.systemGrey,
                                  size: 35,
                                ),
                              ),
                              const Text(
                                "Lock app in background",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 40,
                                ),
                                child: Switch.adaptive(
                                    value: lockAppSecurity,
                                    activeColor: CupertinoColors.systemRed,
                                    onChanged: (val) {
                                      setState(() {
                                        lockAppSecurity = val;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 1,
                          color: CupertinoColors.systemGrey5,
                        ),
                        Container(
                          height: 55,
                          width: double.infinity,
                          color: CupertinoColors.white,
                          child: Row(
                            children: [
                              const SizedBox(
                                height: double.infinity,
                                width: 75,
                                child: Icon(
                                  Icons.fingerprint,
                                  color: CupertinoColors.systemGrey,
                                  size: 35,
                                ),
                              ),
                              const Text(
                                "Use fingerprint",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 118,
                                ),
                                child: Switch.adaptive(
                                    value: useFingerSecurity,
                                    activeColor: CupertinoColors.systemRed,
                                    onChanged: (val) {
                                      setState(() {
                                        useFingerSecurity = val;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 1,
                          color: CupertinoColors.systemGrey5,
                        ),
                        Container(
                          height: 55,
                          width: double.infinity,
                          color: CupertinoColors.white,
                          child: Row(
                            children: [
                              const SizedBox(
                                height: double.infinity,
                                width: 75,
                                child: Icon(
                                  Icons.lock,
                                  color: CupertinoColors.systemGrey,
                                  size: 35,
                                ),
                              ),
                              const Text(
                                "Change password",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 88,
                                ),
                                child: Switch.adaptive(
                                    value: lockAppSecurity,
                                    activeColor: CupertinoColors.systemRed,
                                    onChanged: (val) {
                                      setState(() {
                                        lockAppSecurity = val;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                        titleIos(title: "Misc"),
                        accountWidIos(
                          title: "Terms of service",
                          icon: const Icon(
                            Icons.home_repair_service,
                            color: CupertinoColors.systemGrey,
                            size: 35,
                          ),
                          size: 123,
                        ),
                        Container(
                          height: 1,
                          color: CupertinoColors.systemGrey5,
                        ),
                        accountWidIos(
                          title: "Open source licence",
                          icon: const Icon(
                            Icons.collections_bookmark,
                            color: CupertinoColors.systemGrey,
                            size: 35,
                          ),
                          size: 91,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
  }

  Widget title({required String title}) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
    );
  }

  Widget titleIos({required String title}) {
    return Container(
      height: 55,
      width: double.infinity,
      color: CupertinoColors.systemGrey6,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12,
          top: 30,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 17,
            color: CupertinoColors.inactiveGray,
          ),
        ),
      ),
    );
  }

  Widget commonWid(
      {required String title, required String subtitle, required Icon icon}) {
    return Card(
      elevation: 0.5,
      child: ListTile(
        leading: icon,
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }

  Widget commonWidIos({
    required String title,
    required String subtitle,
    required Icon icon,
    required double size,
  }) {
    return Container(
      height: 55,
      width: double.infinity,
      color: CupertinoColors.white,
      child: Row(
        children: [
          SizedBox(
            height: double.infinity,
            width: 75,
            child: icon,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: size + 10,
            ),
            child: Text(
              subtitle,
              style: const TextStyle(
                fontSize: 17,
                color: CupertinoColors.inactiveGray,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 12,
            ),
            child: Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: CupertinoColors.inactiveGray,
            ),
          ),
        ],
      ),
    );
  }

  Widget accountWidIos({
    required String title,
    required Icon icon,
    required double size,
  }) {
    return Container(
      height: 55,
      width: double.infinity,
      color: CupertinoColors.white,
      child: Row(
        children: [
          SizedBox(
            height: double.infinity,
            width: 75,
            child: icon,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: size + 10,
            ),
            child: const Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: CupertinoColors.inactiveGray,
            ),
          ),
        ],
      ),
    );
  }

  Widget accountWid({required String title, required Icon icon}) {
    return Card(
      elevation: 0.5,
      child: ListTile(
        leading: icon,
        title: Text(title),
      ),
    );
  }
}
