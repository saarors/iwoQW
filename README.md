# 🧪 iwoQW – Single-header Unit Testing Framework for C/C++

`iwoQW.h` is a lightweight **single-header library** for unit testing in C/C++.  
It allows you to write and run tests without any external dependencies or compilation steps.  

[View raw header file](https://raw.githubusercontent.com/saarors/iwoQW/main/iwoQW.h)

---

## 📦 Features

- Single-header, no separate compilation needed  
- Works with both C and C++  
- Easy-to-read test output  
- Support for assertions, expectations, test filtering, and more  

---

## 🚀 How to Use

### 1. Include in Your Project

with git:
 ```bash
git clone https://github.com/saarors/iwoQW
cd iwoQW
chmod +x test.sh
sudo ./test.sh --install iwoQW.h globally
```

---

### 2. Define the Main Function

In C/C++, you need an entry point to run the tests:

```c
#define UTEST_MAIN()  // defines main() for running tests
#include "iwoQW.h"
```
Or simply:
```C
#include "iwoQW.h"
UTEST_MAIN();
3. Write Tests

Define tests using UTEST and assertions:

#include "iwoQW.h"

// Define a test named MyTest in suite MySuite
UTEST(MySuite, MyTest)
{
    EXPECT_EQ(1 + 1, 2);       // basic expectation
    ASSERT_TRUE(3 > 2);        // stops on failure
}


Common macros:

EXPECT_EQ(a, b) – check equality, continues on failure

ASSERT_TRUE(cond) – check condition, stops on failure

4. Compile and Run
gcc -o tests main.c
./tests

```
Output will show results for each test: Passed / Failed / Skipped, etc.

🧩 Full Example
```c
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
```
# 🛠 Tips

Filter tests: ./tests --filter=Math

List all tests: ./tests --list-tests

Randomize test order: ./tests --random
