
static class Keys {
  static boolean T() { 
    return lookup(84);
  }
  static boolean MINUS() { 
    return lookup(45);
  }
  static boolean PLUS() { 
    return lookup(61);
  }
  static boolean SPACE() { 
    return lookup(32);
  }
  static boolean LEFT() { 
    return lookup(37);
  }
  static boolean UP() { 
    return lookup(38);
  }
  static boolean RIGHT() { 
    return lookup(39);
  }
  static boolean DOWN() { 
    return lookup(40);
  }
  static boolean BRACKET_LEFT() {
    return lookup(91);
  }
  static boolean BRACKET_RIGHT() {
    return lookup(93);
  }
  static boolean PAGE_UP() {
    return lookup(16);
    // 33 in processing 2
    // 16 in processing 3
  }
  static boolean PAGE_DOWN() {
    return lookup(11);
    // 33 in processing 2
    // 11 in processing 3
  }

  static boolean[] states = new boolean[256];
  static boolean lookup(int code) {
    if (code < 0) return false;
    if (code >= states.length) return false;
    return states[code];
  }
  static void handleKey(int code, boolean state) {
    if (code < 0) return;
    if (code >= states.length) return;
    states[code] = state;
  }
}


void keyPressed() {
  println(keyCode);
  Keys.handleKey(keyCode, true);
}
void keyReleased() {
  Keys.handleKey(keyCode, false);
}