import 'package:avtovas_mobile/src/common/constants/app_dimensions.dart';
import 'package:avtovas_mobile/src/features/main/cubit/my_trips_cubit/my_trips_cubit.dart';
import 'package:avtovas_mobile/src/features/main/widgets/my_trips_widgets/my_trip_status/my_completed_trip.dart';
import 'package:common/avtovas_common.dart';
import 'package:core/avtovas_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompletedTrips extends StatelessWidget {
  final List<StatusedTrip>? trips;
  final MockBooking mockBooking;
  final MyTripsCubit cubit;

  const CompletedTrips({
    required this.trips,
    required this.mockBooking,
    required this.cubit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (trips == null || trips!.isEmpty) {
      return Center(
        child: Text(
          context.locale.noCompletedTrips,
          style: context.themeData.textTheme.displayMedium?.copyWith(
            color: context.theme.fivefoldTextColor,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }
    return BlocBuilder<MyTripsCubit, MyTripsState>(
        bloc: cubit,
        builder: (context, state) {
          return ListView.separated(
            padding: const EdgeInsets.all(AppDimensions.large),
            itemCount: trips!.length,
            separatorBuilder: (context, index) {
              return const SizedBox(height: AppDimensions.large);
            },
            itemBuilder: (_, index) {
              final trip = trips![index];

              return MyCompletedTrip(
                  trip: trip,
                  orderNumber: trip.trip.routeNum,
                  userSavedEmail: state.savedUserEmail,
                  onSendTicketToEmailTap: (ticketBytes) {
                    if (state.savedUserEmail.isNotEmpty) {
                      cubit.sendTicketMail(
                        ticketBytes: ticketBytes,
                        trip: trip,
                      );
                    }
                  });
            },
          );
        });
  }
}
