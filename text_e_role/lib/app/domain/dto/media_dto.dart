class MediaDTO {
  dynamic id;
  final String fileName;
  final String filePath;
  final int size;
  final String status;

  MediaDTO({
    this.id,
    required this.fileName,
    required this.filePath,
    required this.size,
    this.status = 'A'
  });
}
