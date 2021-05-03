class User{
  String name;
  String imgProfileUser;

  User(this.name, this.imgProfileUser);

  @override
  String toString() {
    return 'User{name: $name, imgProfileUser: $imgProfileUser}';
  }
}