
// موديل مراحل تتبع الطلب (Timeline)
class OrderTrackingStep {
  final String title; // مثل: Order Confirmed
  final String time;  // مثل: 08:00 PM
  final String date;  // مثل: Sep 29, 2021
  final bool isCompleted;

  const OrderTrackingStep({
    required this.title,
    required this.time,
    required this.date,
    required this.isCompleted,
  });

  factory OrderTrackingStep.fromJson(Map<String, dynamic> json) {
    return OrderTrackingStep(
      title: json['title'] as String,
      time: json['time'] as String,
      date: json['date'] as String,
      isCompleted: json['is_completed'] as bool,
    );
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'time': time,
        'date': date,
        'is_completed': isCompleted,
      };
}