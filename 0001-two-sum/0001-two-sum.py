class Solution(object):
    def twoSum(self, nums, target):
        """
        Finds two indices such that their values sum to target.
        
        Args:
            nums (list): List of integers.
            target (int): The sum we are looking for.
            
        Returns:
            list: Indices of the two numbers.
        """
        # 1. Initialize an empty dictionary (Hash Map)
        prevMap = {} 

        # 2. Loop through the array using index (i) and value (n)
        for i, n in enumerate(nums): 
            
            # 3. Calculate the 'complement' needed to hit the target
            diff = target - n 
            
            # 4. Check if we have seen this complement before
            if diff in prevMap: 
                # 5. Success! Return the index of the complement and the current index
                return [prevMap[diff], i] 
                
            # 6. Otherwise, store the current number and its index for future reference
            prevMap[n] = i