class Anagram {
  bool isAnagram(String s, String t) {
    List<String> s1 = s.split('');
    List<String> s2 = t.split('');
    bool result = true;
    if (s1.length != s2.length) {
      result = false;
    } else {
      s1.sort();
      s2.sort();
      for (int i = 0; i < s1.length; i++) {
        if (s1[i] != s2[i]) {
          result = false;
          break;
        }
      }
    }
    return result;
  }
}
