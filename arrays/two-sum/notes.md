# Two Sum

## 🧠 Approach
Use a hashmap to store numbers and their indices.

## ⚡ Logic
- Iterate through array
- For each number, calculate complement = target - num
- Check if complement exists in hashmap
- If yes → return indices
- Else → store number

## ⏱ Complexity
- Time: O(n)
- Space: O(n)

## 🔑 Key Insight
Hashing avoids nested loops
