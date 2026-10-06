class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:

        hashmap ={}
        for i, n in enumerate(nums): 
            val = target - n
            if val not in hashmap:
                hashmap[n] = i
            else:
                return [hashmap[val],i] 
        return