todays_previous_departures <- function(drilldown_obj) {
drilldown_obj$todays_trip_departures %>%
  filter(departure_time < ymd_hms(Sys.time())) %>%
  select(trip_id, route_id, direction_id, departure_time)
}
