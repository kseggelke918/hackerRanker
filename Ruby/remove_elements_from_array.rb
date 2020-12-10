arr = [5, 6, 5, 4, 3, 1, 2, 5, 4, 3, 3, 3]

# delete an element from the end of the array
arr.pop 
# => 3 (returns the element that was deleted)

# delete an element from the beginning of the array
arr.shift 
# => 5 (returns the element being deleted)

# updated array after above 2 edits:
arr = [6, 5, 4, 3, 1, 2, 5, 4, 3, 3]

# delete an element at a given position 
arr.delete_at(2)
# => 4 (index 2 is deleted and returned)

# delete all occurneces of a given element
arr.delete(5)
# => 5 (returns item being deleted)
# updated array: [6, 3, 1, 2, 4, 3, 3] (no more 5s)
