import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../data/constants/app_data.dart';

class TravellingWithTab extends StatelessWidget {
  const TravellingWithTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: AppData.defaultPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "You're currently\ntravelling with:",
                style: AppData.boldTextStyle.copyWith(
                  fontSize: 20,
                  height: .95,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'View details',
                  style: AppData.regularTextStyle.copyWith(
                    color: Colors.blue.withOpacity(.5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: AppData.defaultPadding,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 150,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: AppData.royalBlueColor,
                borderRadius: BorderRadius.circular(
                  AppData.defaultBorderRadius,
                ),
              ),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 15,
                        bottom: 15,
                      ),
                      height: double.maxFinite,
                      width: double.maxFinite,
                      // color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: AppData.customWhite,
                                      borderRadius: BorderRadius.circular(
                                        40,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: AppData.royalBlueColor,
                                      borderRadius: BorderRadius.circular(
                                        35,
                                      ),
                                    ),
                                    child: Hero(
                                      tag: "",
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          35,
                                        ),
                                        child: Image.network(
                                            'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Khondakar Morshed Afridi",
                                      style: AppData.boldTextStyle.copyWith(
                                        height: .95,
                                        color: AppData.customWhite,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      "1820461",
                                      style: AppData.lightTextStyle.copyWith(
                                        color: AppData.customWhite,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "120 Tk",
                                style: AppData.boldTextStyle.copyWith(
                                  fontSize: 15,
                                  color: AppData.customWhite,
                                ),
                              ),
                              Text(
                                " /seat",
                                style: AppData.lightTextStyle.copyWith(
                                  fontSize: 12,
                                  color: AppData.babyBlueColor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Seats\nAvailable:",
                                style: AppData.boldTextStyle.copyWith(
                                  fontSize: 14,
                                  height: .95,
                                  color: AppData.customWhite,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "4",
                                style: AppData.lightTextStyle.copyWith(
                                  fontSize: 20,
                                  color: AppData.customWhite,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 10,
                          width: 20,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: AppData.scaffoldBackgroundColor,
                          ),
                        ),
                        Expanded(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              LayoutBuilder(
                                builder: ((context, constraints) {
                                  return Flex(
                                    direction: Axis.vertical,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 3)
                                          .floor(),
                                      (index) => const SizedBox(
                                        width: 1,
                                        height: 3,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color:
                                                AppData.scaffoldBackgroundColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                              const RotatedBox(
                                quarterTurns: 3,
                                child: Icon(
                                  Icons.cut,
                                  color: AppData.customWhite,
                                  size: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 10,
                          width: 20,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            color: AppData.scaffoldBackgroundColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppData.customWhite,
                        borderRadius: BorderRadius.only(
                          topRight:
                              Radius.circular(AppData.defaultBorderRadius),
                          bottomRight:
                              Radius.circular(AppData.defaultBorderRadius),
                        ),
                      ),
                      padding: const EdgeInsets.only(
                        top: 15,
                        // right: 15,
                        bottom: 15,
                      ),
                      height: double.maxFinite,
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          Flexible(
                            flex: 2,
                            child: SizedBox(
                              height: double.maxFinite,
                              width: double.maxFinite,
                              child: SvgPicture.asset(
                                'assets/svgs/car.svg',
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: SizedBox(
                              height: double.maxFinite,
                              width: double.maxFinite,
                              child: Column(
                                children: [
                                  Text(
                                    "From",
                                    style: AppData.lightTextStyle.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    "Baily road",
                                    style: AppData.boldTextStyle.copyWith(
                                      fontSize: 14,
                                      height: .95,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
