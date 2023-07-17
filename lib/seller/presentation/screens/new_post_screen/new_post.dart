import 'package:flutter/material.dart';
import 'package:fresh_pick_app/seller/presentation/widgets/loading_tile/screen_loading_tile.dart';

class NewPost extends StatelessWidget {
  const NewPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ScreenLoadingWidget());
  }
}
