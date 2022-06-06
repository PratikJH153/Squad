import 'package:flutter/material.dart';
import 'package:squadapp/views/widgets/constants.dart';

class CreateBottomSheet extends StatefulWidget {
  const CreateBottomSheet({Key? key}) : super(key: key);

  @override
  State<CreateBottomSheet> createState() => _CreateBottomSheetState();
}

class _CreateBottomSheetState extends State<CreateBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 5,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white70,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 1,
            ),
            decoration: BoxDecoration(
              color: kLightDarkColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                  left: 20,
                ),
                hintText: "Add a title",
                hintStyle: TextStyle(
                  color: Colors.white38,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 1,
            ),
            decoration: BoxDecoration(
              color: kLightDarkColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const TextField(
              maxLines: 3,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                  left: 20,
                  top: 15,
                  bottom: 10,
                ),
                hintText: "Add a description",
                hintStyle: TextStyle(
                  color: Colors.white38,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Row(
            children: [],
          )
        ],
      ),
    );
  }
}
