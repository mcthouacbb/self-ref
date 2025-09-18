const char* s[] = {
    "",
    "#include <stdio.h>",
    "",
    "int main() {",
    "    const char str0[] = {'c', 'o', 'n', 's', 't', ' ' , 'c', 'h', 'a', 'r', '*', ' ', 's', '[', ']', ' ', '=', ' ', '{', 10, 0};",
    "    const char str1[] = {' ', ' ', ' ', ' ', 34, 0};",
    "    const char formatStr1[] = {37, 's', 0};",
    "",
    "    printf(str0);",
    "    for (int i = 0; i < sizeof(s) / sizeof(const char*); i++) {",
    "        printf(str1);",
    "        printf(formatStr1, s[i]);",
    "        putchar(34);",
    "        if (i != sizeof(s) / sizeof(const char*) - 1)",
    "            putchar(',');",
    "        putchar(10);",
    "    }",
    "",
    "    const char str2[] = {'}', ';', 0};",
    "    puts(str2);",
    "",
    "    const char formatStr2[] = {37, 's', 10, 0};",
    "    for (int i = 0; i < sizeof(s) / sizeof(const char*); i++)",
    "        printf(formatStr2, s[i]);",
    "}"
};

#include <stdio.h>

int main() {
    const char str0[] = {'c', 'o', 'n', 's', 't', ' ' , 'c', 'h', 'a', 'r', '*', ' ', 's', '[', ']', ' ', '=', ' ', '{', 10, 0};
    const char str1[] = {' ', ' ', ' ', ' ', 34, 0};
    const char formatStr1[] = {37, 's', 0};

    printf(str0);
    for (int i = 0; i < sizeof(s) / sizeof(const char*); i++) {
        printf(str1);
        printf(formatStr1, s[i]);
        putchar(34);
        if (i != sizeof(s) / sizeof(const char*) - 1)
            putchar(',');
        putchar(10);
    }

    const char str2[] = {'}', ';', 0};
    puts(str2);

    const char formatStr2[] = {37, 's', 10, 0};
    for (int i = 0; i < sizeof(s) / sizeof(const char*); i++)
        printf(formatStr2, s[i]);
}
