# Two Sum

🔗 Problem Link: https://leetcode.com/problems/two-sum/

## 🧾 Problem Summary

Given an array of integers `nums` and an integer `target`, return indices of two numbers such that they add up to the target.

* Each input has exactly one solution
* You cannot use the same element twice
* Return indices in any order

## 🧠 Approach

Use a dictionary (hashmap) called `lookup` to store numbers and their indices while iterating through the array.

## ⚡ Logic

* Iterate through the array
* For each number, compute complement = target - num
* Check if complement exists in `lookup`
* If yes → return indices
* Else → store the current number with its index in `lookup`

## ⏱ Complexity

* Time: O(n)
* Space: O(n)

## 🔑 Key Insight

Using a hashmap avoids nested loops, reducing time complexity from O(n²) to O(n)

## 📌 Example

Input: nums = [12, 3, 4, 7, 2], target = 9
Output: [3, 4]

Explanation: nums[3] + nums[4] = 7 + 2 = 9

## ⚠️ Edge Cases

* Array may contain negative numbers
* Duplicate values can exist
* Exactly one solution is guaranteed

