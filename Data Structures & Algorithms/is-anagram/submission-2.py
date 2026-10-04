class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t):
            return False
        count = {}

        for a in range(len(s)):
            count[s[a]] = count.get(s[a],0)+1
            count[t[a]] = count.get(t[a],0)-1

        return all(x==0 for x in count.values())