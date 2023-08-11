import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_hotel_booking_ui/constants/localfiles.dart';
import 'package:flutter_hotel_booking_ui/models/room_data.dart';

class HotelListData {
  String imagePath;
  String titleTxt;
  String subTxt;
  DateText? date;
  String dateTxt;
  String roomSizeTxt;
  RoomData? roomData;
  double dist;
  double rating;
  int reviews;
  int perNight;
  bool isSelected;
  PeopleSleeps? peopleSleeps;
  LatLng? location;
  Offset? screenMapPin; // we used this screen Offset for adding on Map layer

  HotelListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.subTxt = "",
    this.dateTxt = "",
    this.roomSizeTxt = "",
    this.roomData,
    this.dist = 1.8,
    this.reviews = 80,
    this.rating = 4.5,
    this.perNight = 1800,
    this.isSelected = false,
    this.date,
    this.peopleSleeps,
    this.location,
    this.screenMapPin,
  });

  // we need location in this hotelList bcz we using that in map
  static List<HotelListData> hotelList = [
    HotelListData(
      imagePath: Localfiles.hotel_1,
      titleTxt: 'Gurung Cottage',
      subTxt: 'Ghandruk',
      dist: 2.0,
      reviews: 80,
      rating: 4.4,
      perNight: 1200,
      roomData: RoomData(1, 2),
      isSelected: true,
      date: DateText(1, 5),
      location: const LatLng(28.376065, 83.807775),
    ),
    HotelListData(
      imagePath: Localfiles.hotel_2,
      titleTxt: 'Home Old Village',
      subTxt: 'Ghandruk',
      dist: 4.0,
      reviews: 74,
      rating: 4.5,
      perNight: 1500,
      roomData: RoomData(1, 3),
      isSelected: false,
      date: DateText(2, 6),
      location: const LatLng(28.3759540720889, 83.80768749523213),
    ),
    HotelListData(
      imagePath: Localfiles.hotel_3,
      titleTxt: 'Kaji tamusyo Homestay',
      subTxt: 'Sikles',
      dist: 3.0,
      reviews: 62,
      rating: 4.0,
      perNight: 1600,
      roomData: RoomData(2, 3),
      isSelected: false,
      date: DateText(5, 9),
      location: const LatLng(28.35684910449756, 84.10493832215737),
    ),
    HotelListData(
      imagePath: Localfiles.hotel_4,
      titleTxt: 'Yaman Suba Home Stay',
      subTxt: 'Sikles',
      dist: 7.0,
      reviews: 90,
      rating: 4.4,
      perNight: 1700,
      isSelected: false,
      roomData: RoomData(2, 2),
      date: DateText(1, 5),
      location: const LatLng(28.357477543915703, 84.10467384284215),
    ),
    HotelListData(
      imagePath: Localfiles.hotel_5,
      titleTxt: 'Ghale Gaun Cottage',
      subTxt: 'Ghalegaun',
      dist: 2.0,
      reviews: 240,
      rating: 4.5,
      isSelected: false,
      perNight: 2000,
      roomData: RoomData(1, 7),
      date: DateText(1, 4),
      location: const LatLng(28.277866822828333, 84.310213894503),
    ),
  ];

  static List<HotelListData> popularList = [
    HotelListData(
      imagePath: Localfiles.popular_1,
      titleTxt: 'Ghandruk',
    ),
    HotelListData(
      imagePath: Localfiles.popular_2,
      titleTxt: 'Sikles',
    ),
    HotelListData(
      imagePath: Localfiles.popular_3,
      titleTxt: 'Ghalegaun',
    ),
    HotelListData(
      imagePath: Localfiles.popular_4,
      titleTxt: 'Poon Hill',
    ),
    HotelListData(
      imagePath: Localfiles.popular_5,
      titleTxt: 'Bandipur',
    ),
    HotelListData(
      imagePath: Localfiles.popular_6,
      titleTxt: 'Pokhara',
    ),
  ];

  static List<HotelListData> reviewsList = [
    HotelListData(
      imagePath: Localfiles.avatar1,
      titleTxt: 'Sagar Baral',
      subTxt:
          'Thank you so much all of those cottages family member for responding us as a guest and serve as very good and delicious food for us thank you for your service',
      rating: 8.0,
      dateTxt: '21 May, 2023',
    ),
    HotelListData(
      imagePath: Localfiles.avatar3,
      titleTxt: 'Sajan Paudel',
      subTxt:
          'The facility is very comfortable. The food is also good and great views after a short walk.',
      rating: 8.0,
      dateTxt: '17 May, 2023',
    ),
    HotelListData(
      imagePath: Localfiles.avatar5,
      titleTxt: 'Prakash Neupane',
      subTxt:
          'Truly enjoy with scenic views, culture and birding around the village.',
      rating: 6.0,
      dateTxt: '11 April, 2023',
    ),
    HotelListData(
      imagePath: Localfiles.avatar2,
      titleTxt: 'Resham Gurung',
      subTxt:
          'Amazing homestay with amazing people...Loved every moment there ❤️❤️❤️',
      rating: 9.0,
      dateTxt: '10 April, 2023',
    ),
    HotelListData(
      imagePath: Localfiles.avatar4,
      titleTxt: 'Swagat Thapa',
      subTxt:
          'Great service. Beds are comfortable. The owner is very friendly and good. He provided good recommendations for the area around to visit.',
      rating: 8.0,
      dateTxt: '21 May, 2019',
    ),
    HotelListData(
      imagePath: Localfiles.avatar6,
      titleTxt: 'Ujjwal Devkota',
      subTxt:
          'Best place to stay with friendly gurung community in entire my travel experience. Must go here',
      rating: 7.0,
      dateTxt: '21 May, 2019',
    ),
    HotelListData(
      imagePath: Localfiles.avatar7,
      titleTxt: 'Richard Katila',
      subTxt:
          'Great accommodation,family environment,helpful and friendly people',
      rating: 9.0,
      dateTxt: '21 May, 2019',
    ),
  ];

  static List<HotelListData> romeList = [
    HotelListData(
        imagePath:
            'assets/images/room_1.jpg assets/images/room_2.jpg assets/images/room_3.jpg',
        titleTxt: 'Normal Room',
        perNight: 1200,
        dateTxt: 'Sleeps 2 people',
        roomData: RoomData(2, 2)),
    HotelListData(
        imagePath:
            'assets/images/room_4.jpg assets/images/room_5.jpg assets/images/room_6.jpg',
        titleTxt: 'Room + Food',
        perNight: 2000,
        dateTxt: 'Sleeps 2 people + 2 children',
        roomData: RoomData(3, 2)),
  ];

  static List<HotelListData> hotelTypeList = [
    HotelListData(
      imagePath: Localfiles.hotelType_1,
      titleTxt: 'hotel_data',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotelType_2,
      titleTxt: 'Backpacker_data',
      isSelected: false,
    ),
  ];
  static List<HotelListData> lastsSearchesList = [
    HotelListData(
      imagePath: Localfiles.popular_4,
      titleTxt: 'Ghandruk',
      roomData: RoomData(1, 3),
      date: DateText(12, 22),
      dateTxt: '12 - 22 Dec',
    ),
    HotelListData(
      imagePath: Localfiles.popular_1,
      titleTxt: 'Sikles',
      roomData: RoomData(1, 3),
      date: DateText(12, 24),
      dateTxt: '12 - 24 Sep',
    ),
    HotelListData(
      imagePath: Localfiles.city_3,
      titleTxt: 'Ghalegaun',
      roomData: RoomData(1, 3),
      date: DateText(20, 22),
      dateTxt: '20 - 22 Sep',
    ),
    HotelListData(
      imagePath: Localfiles.city_4,
      titleTxt: 'Poon Hill',
      roomData: RoomData(12, 22),
      date: DateText(12, 22),
      dateTxt: '12 - 22 Nov',
    ),
    HotelListData(
      imagePath: Localfiles.city_5,
      titleTxt: 'Bandipur',
      roomData: RoomData(10, 15),
      date: DateText(10, 15),
      dateTxt: '10 - 15 Dec',
    ),
    HotelListData(
      imagePath: Localfiles.city_6,
      titleTxt: 'Pokhara',
      roomData: RoomData(12, 14),
      date: DateText(12, 14),
      dateTxt: '12 - 14 Dec',
    ),
  ];
}
