#include "sum.h"

#define CATCH_CONFIG_MAIN
#include "catch.hpp"

TEST_CASE("Temp") {
  REQUIRE(sum(2,5) == 7);
}
