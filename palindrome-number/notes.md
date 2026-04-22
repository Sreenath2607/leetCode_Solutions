# Palindrome Number

🔗 Problem Link: https://leetcode.com/problems/palindrome-number/

## 🧾 Problem Summary

Given an integer `x`, return `true` if `x` is a palindrome, and `false` otherwise.

A palindrome number reads the same backward as forward.

* Negative numbers are not palindrome
* No leading zeros allowed

## 🧠 Approach

Convert the integer to a string and compare it with its reverse.

## ⚡ Logic

* Convert integer `x` to string
* Reverse the string using slicing `[::-1]`
* Compare original string with reversed string
* If equal → return `True`, else → `False`

## ⏱ Complexity

* Time: O(n)
* Space: O(n)

## 🔑 Key Insight

String reversal is a simple way to check palindrome without extra math operations.

## 📌 Example

Input: x = 121
Output: true

Explanation: "121" reversed is "121"

## ⚠️ Edge Cases

* Negative numbers → always false
* Numbers ending with 0 (except 0 itself) → not palindrome
