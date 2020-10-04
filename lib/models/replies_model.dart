import 'package:astrounify/models/author_model.dart';

class Reply {
  Author author;
  String content;
  int likes;

  Reply({this.author, this.content, this.likes});
}

List<Reply> replies = [
  Reply(
      author: mike,
      content: 'LMOA this is so not true I believe otherwise...',
      likes: 10),
  Reply(
      author: john,
      content: 'I have actually Just read about this on the news haha.',
      likes: 120),
  Reply(author: mark, content: 'This is a very interesting topic.', likes: 67),
  Reply(
      author: sam,
      content: 'Wow I have never knew about this, thank you for this post.',
      likes: 34),
  Reply(
      author: adam,
      content: 'You should really post more your topics are very intresting.',
      likes: 89),
  Reply(
      author: luther,
      content: 'Hmmm, but I heard that it was actually...',
      likes: 12),
  Reply(
      author: justin,
      content: 'Wait but if you look here, it says otherwise?',
      likes: 27),
];
