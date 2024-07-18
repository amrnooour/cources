import 'package:cources/features/blog/presentation/views/blog_view.dart';
import 'package:cources/features/book/presentation/views/book_view.dart';
import 'package:cources/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:cources/features/questions/presentation/views/question_view.dart';

class Constants {
 static List tabs = const [
    HomeViewBody(),
    QuestionView(),
    BookView(),
    BlogView(),
    BookView()
  ];
}
