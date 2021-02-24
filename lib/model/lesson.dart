class Lessons {
  final int id;
  final String name;
  final String imageUrl;
  final int progress;
  final String subtitle;

  Lessons({
    this.id,
    this.name,
    this.imageUrl,
    this.progress,
    this.subtitle,
  });
}

//indectorsize
List<Lessons> designs = [
  Lessons(
    id: 0,
    name: 'UI Design',
    imageUrl: 'assets/Bitmap.jpg',
    progress: 2,
    subtitle: 'Visual appearance of app sjd',
  ),

// USERS
  Lessons(
    id: 1,
    name: 'UX Design',
    imageUrl: 'assets/Bitmap (1).jpg',
    progress: 2,
    subtitle: 'Brain behind the design',
  ),

  Lessons(
    id: 2,
    name: 'Interaction Design',
    imageUrl: 'assets/Bitmap (2).jpg',
    progress: 0,
    subtitle: 'Includes animations and eff…',
  ),
  Lessons(
    id: 3,
    name: 'Industrial Design',
    imageUrl: 'assets/Bitmap (3).jpg',
    progress: 0,
    subtitle: 'Visual appearance of app &…',
  ),
];
