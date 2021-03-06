# 给定一数组内含数字，请实作选择排序法进行排序。
# https://zh.wikipedia.org/wiki/选择排序

# def selection_sort(arr)
#   (0..arr.size - 1).each do |i|
#     min = arr[i]
#     k = i
#     (i + 1..arr.size - 1).each do |j|
#       if arr[j] < min
#         min = arr[j]
#         k = j
#       end
#     end
#     arr[k] = arr[i]
#     arr[i] = min
#   end
#   arr
# end

def selection_sort(arr)
  sorted = []
  arr.size.times do |_i|
    min = arr.min
    sorted << min
    arr.delete_at(arr.index(min))
  end
  sorted
end

arr =  [7, 68, 42, 46, 9, 91, 77, 46, 86, 1]

answer = selection_sort(arr)

puts answer.to_s # 应该是 [1, 7, 9, 42, 46, 46, 68, 77, 86, 91]
