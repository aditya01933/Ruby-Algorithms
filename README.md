# 1. Print Bracket Number 
https://practice.geeksforgeeks.org/problems/print-bracket-number/0

Given an expression exp of length n consisting of some brackets. The task is to print the bracket numbers when the expression is being parsed.

Examples :

Input : (a+(b*c))+(d/e)
Output : 1 2 2 1 3 3
The highlighted brackets in the given expression
(a+(b*c))+(d/e) has been assigned the numbers as:
1 2 2 1 3 3.

Input : ((())(()))
Output : 1 2 3 3 2 4 5 5 4 1

# 2. Find if there is a subarray with 0 sum
https://www.geeksforgeeks.org/find-if-there-is-a-subarray-with-0-sum/

Given an array of positive and negative numbers, find if there is a subarray (of size at-least one) with 0 sum.

Examples:

Input: {4, 2, -3, 1, 6}
Output: true 
There is a subarray with zero sum from index 1 to 3.

Input: {4, 2, 0, 1, 6}
Output: true 
There is a subarray with zero sum from index 2 to 2.

Input: {-3, 2, 3, 1, 6}
Output: false
There is no subarray with zero sum.


# 3. [TODO] Largest subarray with equal number of 0s and 1s
sol: https://leetcode.com/articles/contiguous-array/

Given an array containing only 0s and 1s, find the largest subarray which contain equal no of 0s and 1s. Expected time complexity is O(n).

Examples:

Input: arr[] = {1, 0, 1, 1, 1, 0, 0}
Output: 1 to 6 (Starting and Ending indexes of output subarray)

Input: arr[] = {1, 1, 1, 1}
Output: No such subarray

Input: arr[] = {0, 0, 1, 1, 0}
Output: 0 to 3 Or 1 to 4

# 4. Given an array of integers, replace every element with the next greatest element (greatest element on the right side) in the array. Since there is no element next to the last element, replace it with -1. For example, if the array is {16, 17, 4, 3, 5, 2}, then it should be modified to {17, 5, 5, 5, 2, -1}.
sol: https://www.geeksforgeeks.org/replace-every-element-with-the-greatest-on-right-side/

# 5. Merge Sort in Ruby

# 6. The problem is to print all the possible paths from top left to bottom right of a mXn matrix with the constraints that from each cell you can either move only to right or down.
