class PalindromeFinder
  def is_palindrome? string

    # Process the input into usable form for the check_if_palindrome method in order
    # to keep things modular, then call check_if_palindrome to return the result

    check_if_palindrome string.downcase.gsub(/\W/, '').split('')
  end

  def check_if_palindrome array_of_characters

    # Strings with 1 or 0 characters are palindromes, as are strings that have been
    # through this function enough times to have been reduced to 1 or 0 characters

    return true if array_of_characters.length <= 1

    # If the first and last characters in the string are not the same, the string
    # is not a palindrome; if they are, the first and last letters, which have
    # already been checked, will be removed so the rest of the string can be tested

    return false unless array_of_characters.delete_at(0) === array_of_characters.delete_at(-1)

    # If the first and last letters (which were deleted above) are the same, then
    # test the rest of the array
    
    check_if_palindrome array_of_characters
  end
end