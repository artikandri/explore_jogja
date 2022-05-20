const kAnimationDuration = Duration(milliseconds: 200);

class LanguageOption {
  final String value;
  final String label;

  const LanguageOption({required this.value, required this.label});
}

const kLanguageOptions = [
  LanguageOption(value: "en", label: "English"),
  LanguageOption(value: "id", label: "Indonesia"),
];
