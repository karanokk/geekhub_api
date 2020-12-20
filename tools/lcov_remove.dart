import 'dart:io';

void main(List<String> arguments) {
  final f = File(arguments[0]);
  final lines = f.readAsLinesSync();
  final result = <String>[];
  bool generatedLineStart = false;
  for (final line in lines) {
    if (line.startsWith('SF') && line.split('.').length > 2) {
      generatedLineStart = true;
      continue;
    }

    if (generatedLineStart) {
      if (line == 'end_of_record') {
        generatedLineStart = false;
      }
      continue;
    }
    result.add(line);
  }
  assert(!generatedLineStart && result.isNotEmpty);
  f.writeAsStringSync(result.join('\n'));
}
