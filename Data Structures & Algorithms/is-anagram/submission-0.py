class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t):
            return False
        d1, d2 = {}, {}
        for a in s:
            if a not in d1:
                d1[a] = 1
            else:
                d1[a] +=1
        for b in t:
            if b not in d2:
                d2[b] = 1
            else:
                d2[b] +=1
        if d1 == d2:
            return True
        return False

        
