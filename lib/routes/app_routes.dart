import 'package:flutter/material.dart';
import 'package:shiv_s_application216/presentation/home_page_one_container_screen/home_page_one_container_screen.dart';
import 'package:shiv_s_application216/presentation/top_playlists_one_screen/top_playlists_one_screen.dart';
import 'package:shiv_s_application216/presentation/artists_screen/artists_screen.dart';
import 'package:shiv_s_application216/presentation/profile_screen/profile_screen.dart';
import 'package:shiv_s_application216/presentation/setting_one_screen/setting_one_screen.dart';
import 'package:shiv_s_application216/presentation/list_screen/list_screen.dart';
import 'package:shiv_s_application216/presentation/album_screen/album_screen.dart';
import 'package:shiv_s_application216/presentation/albums_screen/albums_screen.dart';
import 'package:shiv_s_application216/presentation/login_one_screen/login_one_screen.dart';
import 'package:shiv_s_application216/presentation/artist_screen/artist_screen.dart';
import 'package:shiv_s_application216/presentation/home_page_screen/home_page_screen.dart';
import 'package:shiv_s_application216/presentation/top_playlists_screen/top_playlists_screen.dart';
import 'package:shiv_s_application216/presentation/artists_one_screen/artists_one_screen.dart';
import 'package:shiv_s_application216/presentation/profile_one_screen/profile_one_screen.dart';
import 'package:shiv_s_application216/presentation/favorites_screen/favorites_screen.dart';
import 'package:shiv_s_application216/presentation/setting_screen/setting_screen.dart';
import 'package:shiv_s_application216/presentation/list_one_screen/list_one_screen.dart';
import 'package:shiv_s_application216/presentation/album_one_screen/album_one_screen.dart';
import 'package:shiv_s_application216/presentation/albums_one_screen/albums_one_screen.dart';
import 'package:shiv_s_application216/presentation/login_screen/login_screen.dart';
import 'package:shiv_s_application216/presentation/artist_one_screen/artist_one_screen.dart';
import 'package:shiv_s_application216/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homePageOnePage = '/home_page_one_page';

  static const String homePageOneContainerScreen =
      '/home_page_one_container_screen';

  static const String topPlaylistsOneScreen = '/top_playlists_one_screen';

  static const String artistsScreen = '/artists_screen';

  static const String profileScreen = '/profile_screen';

  static const String favoritesOnePage = '/favorites_one_page';

  static const String settingOneScreen = '/setting_one_screen';

  static const String listScreen = '/list_screen';

  static const String albumScreen = '/album_screen';

  static const String albumsScreen = '/albums_screen';

  static const String loginOneScreen = '/login_one_screen';

  static const String artistScreen = '/artist_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String topPlaylistsScreen = '/top_playlists_screen';

  static const String artistsOneScreen = '/artists_one_screen';

  static const String profileOneScreen = '/profile_one_screen';

  static const String favoritesScreen = '/favorites_screen';

  static const String settingScreen = '/setting_screen';

  static const String listOneScreen = '/list_one_screen';

  static const String albumOneScreen = '/album_one_screen';

  static const String albumsOneScreen = '/albums_one_screen';

  static const String loginScreen = '/login_screen';

  static const String artistOneScreen = '/artist_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        homePageOneContainerScreen: HomePageOneContainerScreen.builder,
        topPlaylistsOneScreen: TopPlaylistsOneScreen.builder,
        artistsScreen: ArtistsScreen.builder,
        profileScreen: ProfileScreen.builder,
        settingOneScreen: SettingOneScreen.builder,
        listScreen: ListScreen.builder,
        albumScreen: AlbumScreen.builder,
        albumsScreen: AlbumsScreen.builder,
        loginOneScreen: LoginOneScreen.builder,
        artistScreen: ArtistScreen.builder,
        homePageScreen: HomePageScreen.builder,
        topPlaylistsScreen: TopPlaylistsScreen.builder,
        artistsOneScreen: ArtistsOneScreen.builder,
        profileOneScreen: ProfileOneScreen.builder,
        favoritesScreen: FavoritesScreen.builder,
        settingScreen: SettingScreen.builder,
        listOneScreen: ListOneScreen.builder,
        albumOneScreen: AlbumOneScreen.builder,
        albumsOneScreen: AlbumsOneScreen.builder,
        loginScreen: LoginScreen.builder,
        artistOneScreen: ArtistOneScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: HomePageOneContainerScreen.builder
      };
}
