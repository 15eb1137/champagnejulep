  int fastHash(String id) {
    int hash = 0xcbf29ce484222325;
    int i = 0;
    while (i < id.length) {
      final codeUnit = id.codeUnitAt(i++);
      hash ^= codeUnit >> 8;
      hash *= 0x100000001b3;
      hash ^= codeUnit & 0xFF;
      hash *= 0x100000001b3;
    }
    return hash;
  }
