#include "iwoQW.h"

UTEST(Math, Addition)
{
    EXPECT_EQ(2 + 3, 5);
    EXPECT_NE(2 + 2, 5);
}

UTEST(Main, AlwaysTrue)
{
    ASSERT_TRUE(1);
}

UTEST_MAIN();
