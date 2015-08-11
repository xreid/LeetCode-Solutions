# Hard
# There are two sorted arrays nums1 and nums2 of size m and n respectively. Find
# the median of the two sorted arrays. The overall run time complexity should be
# O(log (m+n)).

# ~170ms
def find_median_sorted_arrays(nums1, nums2)
  nums = []
  until nums1.empty? && nums2.empty?
    if nums1.empty?
      nums += nums2
      nums2 = []
    elsif nums2.empty?
      nums += nums1
      nums1 = []
    elsif nums1.first < nums2.first
      nums << nums1.shift
    else
      nums << nums2.shift
    end
  end
  size = nums.size
  size.even? ? (nums[(size / 2) - 1] + nums[size / 2]).to_f / 2 : nums[size / 2]
end

# ~300ms
# def find_median_sorted_arrays(nums1, nums2)
#   nums = merge(nums1, nums2)
#   size = nums.size
#   size.even? ? (nums[(size / 2) - 1] + nums[size / 2]).to_f / 2 : nums[size / 2]
# end
#
# def merge(left, right)
#   if left.empty?
#     right
#   elsif right.empty?
#     left
#   elsif left.first < right.first
#     [left.shift] + merge(left, right)
#   else
#     [right.shift] + merge(left, right)
#   end
# end
