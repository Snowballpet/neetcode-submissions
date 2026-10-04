class Solution:
    def hasDuplicate(self, nums: List[int]) -> bool:
        numList = list(set(nums))
        if len(numList) == len(nums):
            return False

        return True
        