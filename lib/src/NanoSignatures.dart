import 'package:flutter_cga_core/flutter_cga_core.dart';

class NanoSignatures {
  static String signBlock(String hash, String privKey) {
    return NanoHelpers.byteToHex(Signature.detached(
            NanoHelpers.hexToBytes(hash), NanoHelpers.hexToBytes(privKey)))
        .toUpperCase();
  }
}
