require_relative 'palindrome_finder'

class UserInterface
  def initialize
    @palindrome_finder = PalindromeFinder.new
  end

  def prompt_for_string
    puts 'Enter a string: '
  end

  def get_string
    string = gets.chomp
  end

  def evaluate string
    @palindrome_finder.is_palindrome?(string) ? "\nThe string is a palindrome." : "\nThe string is not a palindrome."
  end

  def print_response string
    puts evaluate string
  end

  def prompt_for_continuation
    puts "\nCheck another string? [Y/N] "
  end

  def continue_running?
    gets.chomp.downcase === 'y'
  end

  def run!
    loop do 
      prompt_for_string
      print_response get_string
      prompt_for_continuation
      break unless continue_running?
    end
  end
end