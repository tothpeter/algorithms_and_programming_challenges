# Reverse string in place
def reverse_in_place! string
  left_pointer = 0
  right_pointer = string.length - 1

  while left_pointer < right_pointer
    temp_char = string[left_pointer]
    string[left_pointer] = string[right_pointer]
    string[right_pointer] = temp_char

    left_pointer += 1
    right_pointer -= 1
  end

  string
end

# Reverse Words in place

def reverse_words_in_place! string
  reverse_characters! string, 0, string.length - 1
  start_index = 0

  for i in (0..string.length)
    if string[i] == ' ' || i == string.length
      reverse_characters! string, start_index, i - 1
      start_index = i + 1
    end
  end

  string
end

def reverse_characters! string, start_index, end_index
  while start_index < end_index
    temp_char = string[start_index]
    string[start_index] = string[end_index]
    string[end_index] = temp_char

    start_index += 1
    end_index -= 1
  end

  string
end