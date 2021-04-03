class EventList<T> {
  List<DateTime> events;

  EventList({
    required this.events,
  });

  void add(DateTime date) {
    if (!events.contains(date)) events.add(date);
  }

  void remove(DateTime date) {
    if (events.contains(date)) events.remove(date);
  }

  void clear() {
    events.clear();
  }

  // void addAll(DateTime date, List<T> events) {
  //   final eventsOfDate = this.events[date];
  //   if (eventsOfDate == null)
  //     this.events[date] = events;
  //   else
  //     eventsOfDate.addAll(events);
  // }

  // bool remove(DateTime date, T event) {
  //   final eventsOfDate = events[date];
  //   return eventsOfDate != null ? eventsOfDate.remove(event) : false;
  // }

  List<T> getEvents(DateTime date) {
    if (events.contains(date)) {
      date = events.contains(date);
    }

    return date ?? [];
  }

  // List<T> getEvents(DateTime date) {
  //   return events(date) ?? [];
  // }
}

// final Map<String, int> _retryCountMap = {'1times': 1, '3times': 3};
//   Map<String, int> get retryCountMap => _retryCountMap;
