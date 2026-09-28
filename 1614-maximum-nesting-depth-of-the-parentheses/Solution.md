# Maximum Nesting Depth of the Parentheses

# Intuition
<!-- Describe your first thoughts on how to solve this problem. -->
Keep track of how many open brackets ( are currently active.
The maximum value of this count is the maximum nesting depth.

# Approach
<!-- Describe your approach to solving the problem. -->
1. ( → increase count
2. ) → decrease count
3. After every (, update maxi
4. Return maxi
# Complexity
- Time complexity: O(N)
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity: O(1)
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

# Code
```java []
class Solution {
    public int maxDepth(String s) {
        int count = 0;
        int maxi = 0;
        for(int i=0;i<s.length();i++){
            if(s.charAt(i) == '('){
                count++;
                maxi = Math.max(maxi,count);
            }else if(s.charAt(i) == ')'){
                count--;
            }
        }
        return maxi;
    }
}
```