import UIKit

// https://leetcode.com/problems/two-sum/

/*
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 You can return the answer in any order.

  

 Example 1:

 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
 
 */




class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }
        return []
    }
}

// Hashmap solution

class Solution2 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]() // Map to store (element, index)
        
        for i in 0..<nums.count {
            let complement = target - nums[i]
            if let complementIndex = map[complement] {
                return [complementIndex, i]
            }
            map[nums[i]] = i
        }
        
        return [] // No solution found
    }
}




var obj = Solution2()
print(obj.twoSum([2,7,11,15], 9))
