import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/widgets/custom_color_items.dart';

class EditCircleAvatarListView extends StatefulWidget {
  const EditCircleAvatarListView({super.key, required this.note});
  final NotesModel note;
  @override
  State<EditCircleAvatarListView> createState() =>
      _EditCircleAvatarListViewState();
}

class _EditCircleAvatarListViewState extends State<EditCircleAvatarListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34 * 2,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kColors[index].value;
                setState(() {});
              },
              child: CustomCircleAvatar(
                isSelected: currentIndex == index,
                color: kColors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
