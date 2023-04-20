#import "helpers.typ": *
#import "reference.typ": *

#outline()

#counter(page).update(0)
#set smartquote(enabled: false)
#set par(justify: true)
#set page(numbering: "1")
#set heading(numbering: "1")
#show heading: it => {
  pagebreak(weak: true)
  it
  v(1em)
}

= Two Sum

Given an array of integers `nums` and an integer `target`, return indices of the two numbers such that they add up to `target`.

You may assume that each input would have *exactly one solution*, and you may not use the same element twice.

You can return the answer in any order.

#let two-sum(nums, target) = {
  // Solve the problem here
}

#testcases(two-sum, two-sum-ref, (
  (nums: (2, 7, 11, 15), target: 9),
  (nums: (3, 2, 4), target: 6),
  (nums: (3, 3), target: 6),
  (nums: (0, 0), target: 1),
  (nums: range(1, 100, step: 3), target: 191),
))

= Add Two Numbers

You are given two *non-empty* linked lists representing two non-negative integers. The digits are stored in *reverse order*, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

#let add-two-numbers(l1, l2) = {
  // Solve the problem here
  // 
  // The linked list is defined as a special dictionary
  // with keys `val` and `next`.
  // You can see the definition in `helpers.typ`.
}

#testcases(add-two-numbers, add-two-numbers-ref, (
  (l1: linkedlist((2, 4, 3)), l2: linkedlist((5, 6, 4))),
  (l1: linkedlist((0,)), l2: linkedlist((0,))),
  (l1: linkedlist((9, 9, 9, 9, 9, 9, 9)), l2: linkedlist((9, 9, 9, 9))),
  (l1: linkedlist((2, 4, 3)), l2: linkedlist((5, 6, 4, 9))),
))

= Longest Substring Without Repeating Characters

Given a string `s`, find the length of the *longest substring* without repeating characters.

#let longest-substring-without-repeating-charaters(s) = {
  // Solve the problem here
}

#testcases(
  longest-substring-without-repeating-charaters,
  longest-substring-without-repeating-charaters-ref, (
    (s: "abcabcbb"),
    (s: "bbbbb"),
    (s: "pwwkew"),
  )
)

= Median of Two Sorted Arrays

Given two sorted arrays `nums1` and `nums2` of size `m` and `n` respectively, return the *median* of the two sorted arrays.

The overall run time complexity should be $cal(O)(log (m+n))$.

#let median-of-two-sorted-arrays(nums1, nums2) = {
  // Solve the problem here
}

#testcases(
  median-of-two-sorted-arrays,
  median-of-two-sorted-arrays-ref, (
    (nums1: (1, 3), nums2: (2,)),
    (nums1: (1, 2), nums2: (3, 4)),
    (nums1: range(100, step: 3), nums2: range(200, step: 6)),
  )
)

= Longest Palindromic Substring

Given a string `s`, return the *longest palindromic substring* in `s`.

#let longest-palindromic-substring(s) = {
  // Solve the problem here
}

#testcases(
  longest-palindromic-substring,
  longest-palindromic-substring-ref, (
    (s: "babad"),
    (s: "cbbd"),
    (s: "abcdefgfedcbb"),
    (s: "accc"),
    (s: "a"),
    (s: "aa"),
    (s: "asasfsafdaasfsaasa")
  )
)

= Zigzag Conversion

The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this:

```
P   A   H   N
A P L S I I G
Y   I   R
```

And then read line by line: "PAHNAPLSIIGYIR"

Write the code that will take a string and make this conversion given a number of rows.

#let zigzag-conversion(s, numRows) = {
  // Solve the problem here
}

#testcases(
  zigzag-conversion,
  zigzag-conversion-ref, (
    (s: "PAYPALISHIRING", numRows: 3),
    (s: "PAYPALISHIRING", numRows: 4),
    (s: "A", numRows: 1),
  )
)

= Reverse Integer

Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range $[-2^31, 2^31 - 1]$, then return 0.

*Assume the environment does not allow you to store 64-bit integers (signed or unsigned).*

#let reverse-integer(x) = {
  // Solve the problem here
}

#testcases(
  reverse-integer,
  reverse-integer-ref, (
    (x: 123),
    (x: -123),
    (x: 120),
    (x: 0),
    (x: 23498423),
    (x: -213898800),
    (x: 1534236469),
    (x: 2147483647),
    (x: -2147483648),
  )
)

= String to Integer (atoi)

Implement the `myAtoi(string s)` function, which converts a string to a 32-bit signed integer (similar to C/C++'s atoi function).

The algorithm for `myAtoi(string s)` is as follows:

+ Read in and ignore any leading whitespace.
+ Check if the next character (if not already at the end of the string) is '-' or '+'. Read this character in if it is either. This determines if the final result is negative or positive respectively. Assume the result is positive if neither is present.
+ Read in next the characters until the next non-digit character or the end of the input is reached. The rest of the string is ignored.
+ Convert these digits into an integer (i.e. "123" -> 123, "0032" -> 32). If no digits were read, then the integer is 0. Change the sign as necessary (from step 2).
+ If the integer is out of the 32-bit signed integer range $[-2^31, 2^31 - 1]$, then clamp the integer so that it remains in the range. Specifically, integers less than $-2^31$ should be clamped to $-2^31$, and integers greater than $2^31 - 1$ should be clamped to $2^31 - 1$.
+ Return the integer as the final result.
*Note:*

- Only the space character ' ' is considered a whitespace character.
- *Do not ignore* any characters other than the leading whitespace or the rest of the string after the digits.

#let string-to-integer(s) = {
  // Solve the problem here
}

#testcases(
  string-to-integer,
  string-to-integer-ref, (
    (s: "42"),
    (s: "   -42"),
    (s: "4193 with words")
  )
)

= Palindrome Number

Given an integer `x`, return `true` if `x` is a *palindrome*, and `false` otherwise.

#let palindrome-number(x) = {
  // Solve the problem here
}

#testcases(
  palindrome-number,
  palindrome-number-ref, (
    (x: 121),
    (x: -121),
    (x: 10),
  )
)

= Regular Expression Matching

Given an input string s and a pattern p, implement regular expression matching with support for `'.'` and `'*'` where:

- `'.'` Matches any single character.​​​​
- `'*'` Matches zero or more of the preceding element.
The matching should cover the *entire* input string (not partial).

#let regular-expression-matching(s, p) = {
  // Solve the problem here
}

#testcases(
  regular-expression-matching,
  regular-expression-matching-ref, (
    (s: "aa", p: "a"),
    (s: "aa", p: "a*"),
    (s: "ab", p: ".*"),
    (s: "aab", p: "c*a*b"),
    (s: "mississippi", p: "mis*is*p*."),
    (s: "ab", p: ".*c"),
    (s: "ab", p: ".*c*"),
    (s: "香蕉x牛奶", p: "香.*牛.")
  )
)
