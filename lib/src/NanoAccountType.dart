class NanoAccountType {
  static const int CGA = 1;
  static const int XPD = 2;
  static const String CGA_REGEX =
      r"(cga)(_)(1|3)[13456789abcdefghijkmnopqrstuwxyz]{59}";

  static const String XPD_REGEX =
      r"(xpd)(_)(1|3)[13456789abcdefghijkmnopqrstuwxyz]{59}";


  static String getPrefix(int type) {
    switch (type) {
      case XPD:
        return "xpd_";
      case CGA:
        return "cga_";
      default:
        return "cga_";
    }
  }

  static String getRegex(int type) {
    switch (type) {
      case XPD:
        return XPD_REGEX;
      case CGA:
        return CGA_REGEX;
      default:
        return CGA_REGEX;
    }
  }
}
