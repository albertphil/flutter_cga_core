# flutter_cga_core

Low-level functions for CGA written in DART. Similar structure to [jnano-commons](https://github.com/rotilho/jnano-commons) for Java
Original Source from [flutter_nano_core](https://#)


Examples:

```
# Generate a random seed
String randomSeed = NanoSeeds.generateSeed();
# Validate a seed
bool seedIsValid = NanoSeeds.isValid(randomSeed);

# Create private key from seed at index 0
String privateKey = NanoKeys.seedToPrivate(seed, 0);
# Create public key from private key
String publicKey = NanoKeys.createPublicKey(privateKey);
# Create account from public get (xpd_ address)
String address = NanoAccounts.createAccount(NanoAccountType.XPD, publicKey);

# Compute state block hash
computeStateHash(int accountType, String account, String previous, String representative, BigInt balance, String link);

# Sign a block
NanoSignatures.signBlock(hash, privateKey);
```