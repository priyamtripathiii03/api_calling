class PostModal{
  late int id;
  late String title;
  PostModal({required this.id,required this.title});
  factory PostModal.fromMap(Map m1)
  {
    return PostModal(id:m1['id'],title:m1['title']);
  }
}