import 'package:dicoding_project/model/courses_list.dart';
import 'package:flutter/material.dart';
import 'package:read_morex/read_morex.dart';
import 'card_details.dart';

class DetailScreen extends StatelessWidget {
  final CourseList course;
  const DetailScreen({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    const backgroundIcon = Color(0xFFDDDDDD);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(course.imageAsset)),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    course.categoryCourse,
                    style: const TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 310,
                  child: Text(
                    course.titleCourse,
                    style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  course.reviewCourse,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    IndicatorWidget(
                      backgroundIcon: backgroundIcon,
                      indicatorIcon: Icons.access_time,
                      indicatorTitle: 'Time',
                      indicatorSubTitle: course.indicatorSubTitle,
                    ),
                    IndicatorWidget(
                      backgroundIcon: backgroundIcon,
                      indicatorIcon: Icons.person,
                      indicatorTitle: 'Enrolled',
                      indicatorSubTitle: course.indicatorSubsTitle,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const ReadMoreX(
                  'This is a course specifically designed for beginners, providing the basic knowledge and creative design skills needed to understand the core principles of design, including color theory, typography, layout, and composition. Gain proficiency in popular design tools like Adobe Photoshop, Illustrator, or Canva, learning how to navigate and create basic designs.',
                  readMoreColor: Colors.blue,
                  fontWeightLabel: FontWeight.normal,
                  textStyle: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                const Text(
                  'The lesson',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const CardDetails(
                  imageCard: 'images/introduction.jpg',
                  titleCard: 'Introduction to UI/UX design',
                  durationCard: '3:4q0 min',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({
    super.key,
    required this.backgroundIcon,
    required this.indicatorIcon,
    required this.indicatorTitle,
    required this.indicatorSubTitle,
  });

  final Color backgroundIcon;
  final IconData indicatorIcon;
  final String indicatorTitle;
  final String indicatorSubTitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              height: 45,
              width: 45,
              color: backgroundIcon,
              child: Icon(
                indicatorIcon,
                size: 25,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  indicatorTitle,
                  style: const TextStyle(fontSize: 17, color: Colors.grey),
                ),
                const SizedBox(height: 5),
                Text(
                  indicatorSubTitle,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
