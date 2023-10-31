import 'package:dicoding_project/details_screen.dart';
import 'package:dicoding_project/model/courses_list.dart';
import 'package:flutter/material.dart';

class CoursesListView extends StatefulWidget {
  const CoursesListView({super.key});

  @override
  State<CoursesListView> createState() => _CoursesListViewState();
}

class _CoursesListViewState extends State<CoursesListView> {
  List<CourseList> filteredCourses = [];

  @override
  void initState() {
    filteredCourses = coursesListData;
    super.initState();
  }

  void _updateFilteredCourses(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredCourses = coursesListData;
      } else {
        filteredCourses = _filterCourses(query);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Hi, Peter Gabriel Sompotan!',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            hintText: 'Search course',
          ),
          onChanged: _updateFilteredCourses,
        ),
        const SizedBox(height: 20),
        const Text(
          'Course Materials',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            itemCount: filteredCourses.length,
            itemBuilder: (context, index) {
              final CourseList course = filteredCourses[index];
              return Material(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailScreen(course: course);
                    }));
                  },
                  child: Center(
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: SizedBox(
                          width: 350,
                          height: 400,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(course.imageAsset)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  course.categoryCourse,
                                  style: TextStyle(
                                      color: Color(0xFF4682FC),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                SizedBox(
                                  width: 280,
                                  child: Text(
                                    course.titleCourse,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  course.reviewCourse,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}


class CoursesGridView extends StatefulWidget {
  const CoursesGridView({Key? key}) : super(key: key);

  @override
  State<CoursesGridView> createState() => _CoursesGridViewState();
}

class _CoursesGridViewState extends State<CoursesGridView> {
  List<CourseList> filteredCourses = [];

  @override
  void initState() {
    filteredCourses = coursesListData;
    super.initState();
  }

  void _updateFilteredCourses(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredCourses = coursesListData;
      } else {
        filteredCourses = _filterCourses(query);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hi, Peter Gabriel Sompotan!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenSize.width < 600 ? 16 : 20,
          ),
        ),
        SizedBox(height: screenSize.width < 600 ? 10 : 20),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            hintText: 'Search course',
          ),
          onChanged: _updateFilteredCourses,
        ),
        SizedBox(height: screenSize.width < 600 ? 10 : 20),
        Text(
          'Course Materials',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenSize.width < 600 ? 16 : 20,
          ),
        ),
        SizedBox(height: screenSize.width < 600 ? 10 : 20),
        Expanded(
          child: GridView.count(
            crossAxisCount: screenSize.width < 600 ? 1 : 2, // Adjust the number of columns based on screen width
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1.0, // Adjust aspect ratio as needed
            children: filteredCourses.map((CourseList course) {
              return Material(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DetailScreen(course: course);
                    }));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(course.imageAsset),
                          ),
                          SizedBox(height: screenSize.width < 600 ? 8 : 10),
                          Text(
                            course.categoryCourse,
                            style: TextStyle(
                              color: Color(0xFF4682FC),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: screenSize.width < 600 ? 5 : 10),
                          SizedBox(
                            width: 250, // Adjust text width as needed
                            child: Text(
                              course.titleCourse,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: screenSize.width < 600 ? 18 : 25,
                              ),
                            ),
                          ),
                          SizedBox(height: screenSize.width < 600 ? 5 : 10),
                          Text(
                            course.reviewCourse,
                            style: TextStyle(
                              fontSize: screenSize.width < 600 ? 12 : 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}



List<CourseList> _filterCourses(String query) {
  query = query.toLowerCase();
  return coursesListData.where((course) {
    final title = course.titleCourse.toLowerCase();
    final category = course.categoryCourse.toLowerCase();
    return title.contains(query) || category.contains(query);
  }).toList();
}
