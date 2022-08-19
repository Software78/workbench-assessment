import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bloc/location/location_bloc.dart';
import '../../utils/stateless_view.dart';
import 'controller.dart';
import 'widgets.dart';

class ModalView extends StatelessView<ModalScreen, ModalController> {
  const ModalView(ModalController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocationBloc, LocationState>(
      listener: (context, state) {
        if (state is LocationError) {
          controller.showSnackBar(state.message);
        }
      },
      builder: (context, state) {
        if (state is LocationFinal) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.85,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              vertical: 7,
              horizontal: 30,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: Material(
              color: Colors.transparent,
              child: Column(
                children: [
                  Container(
                    width: 66,
                    height: 4,
                    decoration: BoxDecoration(
                      color: const Color(0xff656C6C),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Farm coordinates',
                        style: GoogleFonts.mulish(
                          textStyle: const TextStyle(
                              color: Color(0xff383838),
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        ),
                      ),
                      GestureDetector(
                        onTap: controller.addPoints,
                        child: Container(
                          width: 116,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xff38CB89).withOpacity(0.05),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Add points',
                                style: GoogleFonts.mulish(
                                  textStyle: const TextStyle(
                                      color: Color(0xff38CB89),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14),
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              SvgPicture.asset('assets/svg/Icon-right.svg'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemCount: state.locations.length,
                      separatorBuilder: (context, index) => const Divider(
                        thickness: 2,
                      ),
                      itemBuilder: (context, index) => Container(
                        height: 100,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: () => controller
                                    .deleteLocation(state.locations[index].id),
                                child:
                                    SvgPicture.asset('assets/svg/cancel.svg')),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SmallModalText(
                                  text: 'Latitude',
                                ),
                                const Expanded(child: SizedBox()),
                                Container(
                                  width: 120,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                      color: const Color(0xffD1D5DB),
                                    ),
                                  ),
                                  child: state.locations[index].latitude == null
                                      ? null
                                      : Center(
                                          child: SmallModalContainerText(
                                            text: state
                                                .locations[index].latitude
                                                .toString(),
                                          ),
                                        ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SmallModalText(text: 'Longitude'),
                                const Expanded(child: SizedBox()),
                                Container(
                                  width: 120,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                      color: const Color(0xffD1D5DB),
                                    ),
                                  ),
                                  child:
                                      state.locations[index].longitude == null
                                          ? null
                                          : Center(
                                              child: SmallModalContainerText(
                                                text: state
                                                    .locations[index].longitude
                                                    .toString(),
                                              ),
                                            ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () => controller
                                  .fetchLocation(state.locations[index]),
                              child: SvgPicture.asset(
                                  'assets/svg/getlocation.svg'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Container(
                    width: double.infinity,
                    height: 82,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xff38CB89).withOpacity(0.05),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const BottomTextThick(text: '3 Hectares'),
                            BottomTextThick(
                                text: state.locations.length.toString())
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            BottomTextThin(text: 'Estimated Size'),
                            BottomTextThin(text: 'Points added'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    minWidth: double.infinity,
                    height: 57,
                    color: const Color(0xff54565B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Save coordinates',
                      style: GoogleFonts.mulish(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 43,
                  ),
                ],
              ),
            ),
          );
        }
        return Container();
      },
    );
  }
}
