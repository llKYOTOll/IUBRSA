import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/controllers/homeframe_controller.dart';

import '../../data/constants/app_data.dart';
import '../widgets/customBackButton.dart';

class ActiveTripsScreen extends StatelessWidget {
  final String mode;
  ActiveTripsScreen({
    Key? key,
    required this.mode,
  }) : super(key: key);

  HomeframController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Active Trips",
          style: AppData.boldTextStyle.copyWith(
            color: AppData.darkBlueColor,
          ),
        ),
        leading: GetBackButton(),
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: AppData.defaultPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mode,
                  style: AppData.lightTextStyle,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'Independent University\nBangladesh',
                  style: AppData.boldTextStyle.copyWith(
                    fontSize: 20,
                    height: .95,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: Get.height / 3,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius:
                          BorderRadius.circular(AppData.defaultBorderRadius)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Obx(
                  () => Row(
                    children: [
                      const SizedBox(
                        width: 2,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.selectedActiveTripFilter.value = "Latest";
                        },
                        child: Text(
                          "Latest",
                          style: AppData.lightTextStyle.copyWith(
                            fontWeight:
                                controller.selectedActiveTripFilter.value ==
                                        "Latest"
                                    ? FontWeight.w800
                                    : FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.selectedActiveTripFilter.value = "Closest";
                        },
                        child: Text(
                          "Closest",
                          style: AppData.lightTextStyle.copyWith(
                            fontWeight:
                                controller.selectedActiveTripFilter.value ==
                                        "Closest"
                                    ? FontWeight.w800
                                    : FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.selectedActiveTripFilter.value =
                              "Cheapest";
                        },
                        child: Text(
                          "Cheapest",
                          style: AppData.lightTextStyle.copyWith(
                            fontWeight:
                                controller.selectedActiveTripFilter.value ==
                                        "Cheapest"
                                    ? FontWeight.w800
                                    : FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        height: 150,
                        width: double.maxFinite,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: AppData.customWhite,
                          borderRadius: BorderRadius.circular(
                            AppData.defaultBorderRadius,
                          ),
                        ),
                        child: Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: SizedBox(
                                height: double.maxFinite,
                                width: double.maxFinite,
                                // color: Colors.red,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Khondakar Morshed Afridi Afridi",
                                      style: AppData.boldTextStyle
                                          .copyWith(height: .95),
                                    ),
                                    Text(
                                      "1820461",
                                      style: AppData.lightTextStyle,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "120 Tk",
                                          style: AppData.boldTextStyle.copyWith(
                                            fontSize: 15,
                                            color: AppData.royalBlueColor,
                                          ),
                                        ),
                                        Text(
                                          " /seat",
                                          style:
                                              AppData.lightTextStyle.copyWith(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Seats\nAvailable:",
                                          style: AppData.boldTextStyle.copyWith(
                                            fontSize: 14,
                                            height: .95,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "4",
                                          style:
                                              AppData.lightTextStyle.copyWith(
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: Container(
                                height: double.maxFinite,
                                width: double.maxFinite,
                                padding: const EdgeInsets.all(10),
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
                                              mode == "From" ? "To" : "From",
                                              style: AppData.lightTextStyle
                                                  .copyWith(
                                                fontSize: 12,
                                              ),
                                            ),
                                            Text(
                                              "Baily road",
                                              style: AppData.boldTextStyle
                                                  .copyWith(
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
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
