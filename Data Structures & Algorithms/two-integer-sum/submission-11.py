class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:

        hashmap ={}
        for i in range(len(nums)):
            val = target -nums[i]
            if val not in hashmap:
                hashmap[nums[i]] = i
            else:
                return [hashmap[val],i] 
        return