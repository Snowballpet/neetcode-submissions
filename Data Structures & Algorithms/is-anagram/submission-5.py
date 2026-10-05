class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t):
            return False
        # count = {}

        # for a in range(len(s)):
        #     count[s[a]] = count.get(s[a],0)+1 #get to see if the value exists, if not set to 0
        #     count[t[a]] = count.get(t[a],0)-1

        # return all(x==0 for x in count.values()) #all are true then true 

        Scount, Tcount = {}, {}
        for i in range(len(s)):
            Scount[s[i]] = Scount.get(s[i],0) +1 #throws key error if s[i] does not exist in the hashmap, so we use get and set the default to 0 if not exists in  the hashmap
            #count all characters in s and t, store in hashmap
            Tcount[t[i]] = Tcount.get(t[i],0) +1
        if Scount == Tcount:
            return True 
        return False