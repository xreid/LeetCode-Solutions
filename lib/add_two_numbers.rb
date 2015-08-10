# Medium
# You are given two linked lists representing two non-negative numbers. The
# digits are stored in reverse order and each of their nodes contain a single
# digit. Add the two numbers and return it as a linked list.
# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8

# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

#
def add_two_numbers(l1, l2)
  current_11  = l1
  ccurrent_l2 = l2
  anchor      = ListNode.new(:anchor)
  current     = anchor
  sum         = 0
  until current_11.nil? && ccurrent_l2.nil? && sum == 0
    sum += current_11.val  unless current_11.nil?
    sum += ccurrent_l2.val unless ccurrent_l2.nil?
    if sum > 9
      sum -= 10
      current.next = ListNode.new(sum)
      sum = 1
    else
      current.next = ListNode.new(sum)
      sum = 0
    end
    current     = current.next
    current_11  = current_11.next  unless current_11.nil?
    ccurrent_l2 = ccurrent_l2.next unless ccurrent_l2.nil?
  end
  anchor.next
end
