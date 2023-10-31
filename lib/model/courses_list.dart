class CourseList {
  String imageAsset;
  String categoryCourse;
  String titleCourse;
  String reviewCourse;
  String indicatorSubTitle;
  String indicatorSubsTitle;

  CourseList(
      {required this.imageAsset,
      required this.categoryCourse,
      required this.titleCourse,
      required this.reviewCourse,
      required this.indicatorSubTitle,
      required this.indicatorSubsTitle});
}

var coursesListData = [
  CourseList(
      imageAsset: 'images/Pertemuan_1.png',
      categoryCourse: 'Pertemuan 1',
      titleCourse: 'Introduction to Flutter Environment',
      reviewCourse: '10 lessons • 4.9 rating (120 reviews)',
      indicatorSubTitle: '2 Hours',
      indicatorSubsTitle: '98 Students'),
  CourseList(
      imageAsset: 'images/pertemuan_2.jpeg',
      categoryCourse: 'Pertemuan 2',
      titleCourse: 'Design Thinking for Developers',
      reviewCourse: '10 lessons • 4.8 rating (60 reviews)',
      indicatorSubTitle: '1 Hours',
      indicatorSubsTitle: '50 Students'),
  CourseList(
      imageAsset: 'images/pertemuan_3.jpg',
      categoryCourse: 'Pertemuan 3',
      titleCourse: 'Flutter Fundamentals',
      reviewCourse: '6 lessons • 4.3 rating (80 reviews)',
      indicatorSubTitle: '2 Hours',
      indicatorSubsTitle: '45 Students'),
  CourseList(
      imageAsset: 'images/pertemuan_4.jpeg',
      categoryCourse: 'Pertemuan 4',
      titleCourse: 'Flutter Intermediate',
      reviewCourse: '8 lessons • 4.6 rating (200 reviews)',
      indicatorSubTitle: '3 Hours',
      indicatorSubsTitle: '58 Students'),
  CourseList(
      imageAsset: 'images/pertemuan_5.jpeg',
      categoryCourse: 'Pertemuan 5',
      titleCourse: 'Project Introduction',
      reviewCourse: '5 lessons • 4.0 rating (15 reviews)',
      indicatorSubTitle: '2 Hours',
      indicatorSubsTitle: '20 Students'),
  CourseList(
      imageAsset: 'images/pertemuan_6.jpeg',
      categoryCourse: 'Pertemuan 6',
      titleCourse: 'Project Execution',
      reviewCourse: '2 lessons • 3.9 rating (250 reviews)',
      indicatorSubTitle: '5 Hours',
      indicatorSubsTitle: '70 Students'),
];
