{ cabal, async, foldl, mvc }:

cabal.mkDerivation (self: {
  pname = "mvc-updates";
  version = "1.2.0";
  sha256 = "125bwc79qcmwb8dn8yqkrxlbqf3vwdzhjx66c69j2jbrp70061n6";
  buildDepends = [ async foldl mvc ];
  meta = {
    description = "Concurrent and combinable updates";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
