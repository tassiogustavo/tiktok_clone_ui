class UserModel {
  final String user;
  final String description;
  final String songName;
  final String avatarUrl;
  final String likesNumber;
  final String commentsNumber;
  final String forwardNumber;
  final String videoBackground;

  UserModel(
      {required this.user,
      required this.description,
      required this.songName,
      required this.avatarUrl,
      required this.likesNumber,
      required this.commentsNumber,
      required this.forwardNumber,
      required this.videoBackground});
}

List<UserModel> userData = [
  UserModel(
    user: "@tassio.gustavo",
    description: "Viajando Sonhar é minha realidade #foryou #goodvibes #car #trip",
    songName: '♫ Las Hope • Original Sound',
    avatarUrl: "https://avatars.githubusercontent.com/u/70405308?v=4",
    likesNumber: "20.0k",
    commentsNumber: "48",
    forwardNumber: "5",
    videoBackground: "assets/vid1.mp4",
  ),
  UserModel(
    user: "@billieeilish",
    description: "I have a dream I could everthing I wanted #foryou #goodvibes #car #trip",
    songName: '♫ Hostage • Original Sound',
    avatarUrl: "https://s2.glbimg.com/AH3jMC-tpdxOOuAQgciytQro8To=/top/smart/e.glbimg.com/og/ed/f/original/2021/03/17/whatsapp_image_2021-03-17_at_14.22.55.jpeg",
    likesNumber: "456.0k",
    commentsNumber: "978",
    forwardNumber: "246",
    videoBackground: "assets/vid2.mp4",
  ),
  UserModel(
    user: "@faker",
    description: "Viajando Sonhar é minha realidade #foryou #goodvibes #car #trip",
    songName: '♫ Master of Puppets • Original Sound',
    avatarUrl: "https://s2.glbimg.com/4oP5fCQaE1GDydFO3YDMPcjXC48=/0x0:1920x1080/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2020/2/w/eORJw3TuOmAfaA7Bh73g/faker-worlds.jpg",
    likesNumber: "38.0k",
    commentsNumber: "28",
    forwardNumber: "90",
    videoBackground: "assets/vid3.mp4",
  ),
  UserModel(
    user: "@neymarjr",
    description: "Ferrei meu pé de novo #foryou #goodvibes #car #trip",
    songName: '♫ Assim você me mata • Original Sound',
    avatarUrl: "https://upload.wikimedia.org/wikipedia/commons/8/83/Bra-Cos_%281%29_%28cropped%29.jpg",
    likesNumber: "890.0k",
    commentsNumber: "368",
    forwardNumber: "84",
    videoBackground: "assets/vid4.mp4",
  ),
  UserModel(
    user: "@lionel.messi",
    description: "Copa del mundo vienes ahi #foryou #goodvibes #car #trip",
    songName: '♫ Macarena • Original Sound',
    avatarUrl: "https://upload.wikimedia.org/wikipedia/commons/c/c1/Lionel_Messi_20180626.jpg",
    likesNumber: "600.0k",
    commentsNumber: "88",
    forwardNumber: "78",
    videoBackground: "assets/vid5.mp4",
  ),
];
