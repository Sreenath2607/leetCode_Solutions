from typing import List

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        lookup = {}
        for i, n in enumerate(nums):
            if target - n in lookup:
                return [lookup[target - n], i]
            lookup[n] = i
        return []  # fallback

if __name__ == '__main__':
    sol = Solution()
    nums = [12, 3, 4, 7, 2]
    target = 9
    result = sol.twoSum(nums, target)
    print(result)
