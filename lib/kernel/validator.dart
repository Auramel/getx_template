abstract class Validator {
  final List<String> _messages = <String>[];
  List<String> get messages {
    final List<String> messages = List<String>.from(_messages);
    _messages.clear();
    return messages;
  }

  bool validate();

  void addMessage(String message) {
    _messages.add(message);
  }
}
