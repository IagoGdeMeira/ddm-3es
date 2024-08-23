class DTOUser {
  late dynamic id;
  late String email;
  late String password;
  late String username;

  DTOUser({
    this.id,
    required this.email,
    required this.password,
    required this.username
  });
}