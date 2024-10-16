class FormatStringUtils {
  static String formatDurationVideo(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '${duration.inHours > 0 ? '${twoDigits(duration.inHours)}:' : ''}$minutes:$seconds';
  }

  static String shortenString(String input, {int? selectQuantityNumber}) {
    if (input.length <= 12) {
      return input;
    }
    String start = input.substring(0, selectQuantityNumber ?? 6);
    String end = input.substring(input.length - (selectQuantityNumber ?? 6));
    return '$start...$end';
  }
}
