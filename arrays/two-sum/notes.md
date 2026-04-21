
# Two Sum

🔗 Problem Link: https://leetcode.com/problems/two-sum/

## 🧾 Problem Summary
Given an array of integers `nums` and an integer `target`, return indices of two numbers such that they add up to the target.

- Each input has exactly one solution
- You cannot use the same element twice
- Return indices in any order

## 🧠 Approach
Use a hashmap to store visited numbers and their indices.

## ⚡ Logic
- Iterate through array
- For each number, compute complement = target - num
- Check if complement exists in hashmap
- If yes → return indices
- Else → store number

## ⏱ Complexity
- Time: O(n)
- Space: O(n)

## 🔑 Key Insight
Hashing avoids nested loops and reduces time complexity from O(n²) to O(n)
