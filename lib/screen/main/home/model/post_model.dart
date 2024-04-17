class PostModel {
  final String profilePic;
  final String name;
  final String postPic;
  final String likeCount;
  final String commentsCount;
  final bool isBlueTike;

  PostModel(
      {required this.profilePic,
      required this.name,
      required this.postPic,
      required this.likeCount,
      required this.commentsCount,
      required this.isBlueTike 
      });
}
