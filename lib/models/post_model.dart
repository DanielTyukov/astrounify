import 'package:astrounify/models/author_model.dart';
import 'package:astrounify/models/replies_model.dart';

class Question {
  String question;
  String content;
  int votes;
  int repliesCount;
  int views;
  // ignore: non_constant_identifier_names
  String created_at;
  Author author;
  List<Reply> replies;

  Question(
      {this.question,
      this.content,
      this.votes,
      this.repliesCount,
      this.views,
      // ignore: non_constant_identifier_names
      this.created_at,
      this.author,
      this.replies});
}

List<Question> questions = [
  Question(
      author: mike,
      question: 'Satellite Technology Is Revolutionary',
      content:
          "I have been reading a lot about this topic and would with confidence say that I have some idea on what I will talk about.",
      created_at: "1h ago",
      views: 120,
      votes: 100,
      repliesCount: 80,
      replies: replies),
  Question(
      author: john,
      question: 'The Time Projection For Mars Launch',
      content:
          "Mars may have been a science fiction to all of us for a long time, but not anymore.",
      created_at: "2h ago",
      views: 20,
      votes: 10,
      repliesCount: 10,
      replies: replies),
  Question(
      author: sam,
      question: 'I love Europa and here is why.',
      content:
          "This icy moon is the closest body in space that has the biggest chance of hosting life in its oceans.",
      created_at: "4h ago",
      views: 220,
      votes: 107,
      repliesCount: 67,
      replies: replies),
  Question(
      author: mark,
      question: 'Any Recommendations For Astrophysics',
      content:
          "I have recently finished the general relativity and want to now proceed to learn quantum physics.",
      created_at: "10h ago",
      views: 221,
      votes: 109,
      repliesCount: 67,
      replies: replies),
  Question(
      author: justin,
      question: 'Any recommendations which telescope I should buy',
      content:
          "I have been looking everywhere to buy a new telescope but unsure of which one it should actually be.",
      created_at: "24h ago",
      views: 325,
      votes: 545,
      repliesCount: 120,
      replies: replies),
];
