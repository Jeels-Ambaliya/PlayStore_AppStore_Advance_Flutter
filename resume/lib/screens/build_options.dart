import 'package:flutter/material.dart';

class Build_Options extends StatefulWidget {
  const Build_Options({Key? key}) : super(key: key);

  @override
  State<Build_Options> createState() => _Build_OptionsState();
}

class _Build_OptionsState extends State<Build_Options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'builder');
          },
          child: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text(
          "Resume Workspace",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'contact_info');
                  },
                  child: myOption(
                    Img: "assets/images/contact_info.png",
                    Title: "Contact Info",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'carrier_objective');
                  },
                  child: myOption(
                      Img: "assets/images/briefcase.png",
                      Title: "Carrier Objective"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'personal_detail');
                  },
                  child: myOption(
                    Img: "assets/images/user.png",
                    Title: "Personal Detail",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'education');
                  },
                  child: myOption(
                    Img: "assets/images/mortarboard.png",
                    Title: "Education",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'experience');
                  },
                  child: myOption(
                    Img: "assets/images/thinking.png",
                    Title: "Experience",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'technical_skills');
                  },
                  child: myOption(
                    Img: "assets/images/achievement.png",
                    Title: "Technical Skills",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'hobbies');
                  },
                  child: myOption(
                    Img: "assets/images/open-book.png",
                    Title: "Hobbies",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'projects');
                  },
                  child: myOption(
                    Img: "assets/images/project.png",
                    Title: "Projects",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'achievements');
                  },
                  child: myOption(
                    Img: "assets/images/experience.png",
                    Title: "Achievements",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'references');
                  },
                  child: myOption(
                    Img: "assets/images/handshake.png",
                    Title: "References",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'declaration');
                  },
                  child: myOption(
                    Img: "assets/images/declaration.png",
                    Title: "Declaration",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget myOption({required String Img, required String Title}) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        left: 6,
        right: 6,
      ),
      child: Container(
        height: 72,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.teal.shade50,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 60,
                width: 60,
                child: Image.asset(Img),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: SizedBox(
                width: 250,
                child: Text(
                  Title,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 28,
            ),
          ],
        ),
      ),
    );
  }
}
