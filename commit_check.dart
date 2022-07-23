import 'dart:io';

dynamic main() {
  final rootDir = Directory.current;
  final commitFile = File(rootDir.path + '/.git/COMMIT_EDITMSG');
  final commitMessage = commitFile.readAsStringSync();

  final regExp = RegExp(
    r'(fix|feat|wip|none|chore|refactor|doc|style|test|ci)(\((\w|,| )+\))?:\s?(\[\DEV-\d+])?.+',
  );

  final valid = regExp.hasMatch(commitMessage);
  if (!valid) exitCode = 1;
}
