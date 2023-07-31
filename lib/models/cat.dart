class Cat {
   String? id;
  List<dynamic>? tags;
  String? owner;
  String? createdAt;
  String? updatedAt;

  Cat({
    required this.id,
    required this.tags,
    required this.owner,
    required this.createdAt,
    required this.updatedAt,
  });

   Cat.fromJson(Map <String,dynamic> json){
    id= json['_id'];
    tags=json['tags'];
    owner=json['owner'];
    createdAt=json['createdAt'];
    updatedAt=json['updatedAt'];
  }

}