class DTOUser {
  dynamic id;
  final String username;
  final String email;
  final String password;
  final String status;
  final String? displayName;
  final String? avatarURL;
  final String? biography;

  DTOUser({
    this.id,
    required this.username,
    required this.email,
    required this.password,
    this.status = 'A',
    this.displayName,
    this.avatarURL,
    this.biography    
  });
}