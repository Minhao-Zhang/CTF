# picoCTF 2023 - two-sum (Binary Exploitation)

## Description

Can you solve this?

What two positive numbers can make this possible: `n1 > n1 + n2 OR n2 > n1 + n2`

Enter them here `nc saturn.picoctf.net 51455`. [Source](https://artifacts.picoctf.net/c/450/flag.c)

## Solution

Upon reading the code, we can see that we need to make the `addIntOvf(sum, num1, num2)`'s output to be -1 in order to get the flag.

```c
static int addIntOvf(int result, int a, int b) {
    result = a + b;
    if(a > 0 && b > 0 && result < 0)
        return -1;
    if(a < 0 && b < 0 && result > 0)
        return -1;
    return 0;
}
```

Looking at the two cases where we return -1, we can clearly see that the integer is overflowing.
Thus, we just need to enter two integer that will over flow when they are added.

```bash
n1 > n1 + n2 OR n2 > n1 + n2
What two positive numbers can make this possible:
2000000000 2000000000
You entered 2000000000 and 2000000000
You have an integer overflow
YOUR FLAG IS: picoCTF{Tw0_Sum_Integer_Bu773R_0v3rfl0w_76f333c8}
```

## Flag

`picoCTF{Tw0_Sum_Integer_Bu773R_0v3rfl0w_76f333c8}`
