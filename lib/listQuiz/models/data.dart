class Model {
  Model(
      {this.description,
      this.image,
      this.time,
      this.videolink,
      this.name,
      this.beginner,
      this.model,
      this.mainimg});
  final String? name, description, beginner, time, mainimg, videolink;
  final List<String>? image;
  final Model? model;
}

String des =
    "Dart is an open-source general-purpose programming language. It is originally developed by Google and later approved as a standard by ECMA. Dart is a new programming language meant for the server as well as the browser. Introduced by Google, the Dart SDK ships with its compiler – the Dart VM. The SDK also includes a utility -dart2js, a transpiler that generates JavaScript equivalent of a Dart Script. This tutorial provides a basic level understanding of the Dart programming language. Audience This tutorial will be quite helpful for all those developers who want to develop single-page web applications using Dart. It is meant for programmers with a strong hold on object-oriented concepts. Prerequisites The tutorial assumes that the readers have adequate exposure to object-oriented programming concepts. If you have worked on JavaScript, then it will help you further to grasp the concepts of Dart quickly.";
String des2 =
    'C programming is a general-purpose, procedural, imperative computer programming language developed in 1972 by Dennis M. Ritchie at the Bell Telephone Laboratories to develop the UNIX operating system. C is the most widely used computer language. It keeps fluctuating at number one scale of popularity along with Java programming language, which is also equally popular and most widely used among modern software programmers. Why to Learn C Programming? C programming language is a MUST for students and working professionals to become a great Software Engineer specially when they are working in Software Development Domain. I will list down some of the key advantages of learning C Programming: Easy to learn Structured language It produces efficient programs It can handle low-level activities It can be compiled on a variety of computer platforms Facts about C C was invented to write an operating system called UNIX. C is a successor of B language which was introduced around the early 1970s. The language was formalized in 1988 by the American National Standard Institute (ANSI). The UNIX OS was totally written in C. Today C is the most widely used and popular System Programming Language. Most of the state-of-the-art software have been implemented using C';
String des3 =
    "Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible. It is a general-purpose programming language intended to let programmers write once, run anywhere (WORA),[17] meaning that compiled Java code can run on all platforms that support Java without the need to recompile.[18] Java applications are typically compiled to bytecode that can run on any Java virtual machine (JVM) regardless of the underlying computer architecture. The syntax of Java is similar to C and C++, but has fewer low-level facilities than either of them. The Java runtime provides dynamic capabilities (such as reflection and runtime code modification) that are typically not available in traditional compiled languages. As of 2019, Java was one of the most popular programming languages in use according to GitHub,[citation not found][19][20] particularly for client–server web applications, with a reported 9 million developers.[21] Java was originally developed by James Gosling at Sun Microsystems. It was released in May 1995 as a core component of Sun Microsystems' Java platform. The original and reference implementation Java compilers, virtual machines, and class libraries were originally released by Sun under proprietary licenses. As of May 2007, in compliance with the specifications of the Java Community Process, Sun had relicensed most of its Java technologies under the GPL-2.0-only license. Oracle offers its own HotSpot Java Virtual Machine, however the official reference implementation is the OpenJDK JVM which is free open-source software and used by most developers and is the default JVM for almost all Linux distributions.";

List<Model> data = [
  Model(
    name: 'Dart Programming Tutorial',
    videolink: 'Ej_Pcr4uC2Q',
    mainimg: 'assets/Dart-Tutorial.png',
    description: des,
    time: '3,00',
    beginner: 'beginner',
  ),
  Model(
    name: 'C Programming Tutorial',
    videolink: 'KJgsSFOSQv0',
    mainimg: 'assets/c-Tutorial.png',
    description: des2,
    time: '3,00',
    beginner: 'beginner',
  ),
  Model(
    name: 'Cpp Programming Tutorial',
    videolink: 'UmnCZ7-9yDY',
    mainimg: 'assets/C-Language2.png',
    description: des,
    time: '3,00',
    beginner: 'beginner',
  ),
  Model(
    name: 'Java Programming Tutorial',
    videolink: 'Ej_Pcr4uC2Q',
    mainimg: 'assets/java.png',
    description: des,
    time: '3,00',
    beginner: 'beginner',
  ),
];
// List<Model> slider = [
//   Model(
//     image: [
//       'https://dttdrlk9qx747.cloudfront.net/cms/thumbnails/00/445x300/sub/49822/images/bigstock-Curly-Caregiver-Cleaning-The-G-296802931.0000000000000.jpg',
//       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvPviWq2g5ZfhHna4RZL837FNa_7YbCQcCVA&usqp=CAU',
//       'https://www.houseofficeshift.com/wp-content/uploads/2019/03/03B61082.jpg',
//       'https://www.houseofficeshift.com/wp-content/uploads/2019/03/03B61082.jpg'
//     ],
//   )
// ];
