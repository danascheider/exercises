class Calculator
  def evaluate string
    multiply! string
    add! string
  end

  private

    # Convert the expression in form ['number', 'operator', 'number'] to a series of
    # [Float, :operator, Float], for example, convert ['1', '+', '1'] to [1.0, :+, 1.0]

    def convert_expression! array
      array.map! do |str|
        str.match(/^(\+|\-|\*|\/)$/) ? str.to_sym : str.to_f
      end
    end

    def add! string
      return string unless string.match(/\+|\-/)
      expression = [string.match(/\d+(?:\.(?:\d+))? (?:\+|\-) \d+(?:\.(?:\d+))?/)[0]]
      calculate! expression, string
      add! string
    end

    def multiply! string
      return string unless string.match(/\*|\//)
      expression = [string.match(/\d+(?:\.(?:\d+))? (?:\*|\/) \d+(?:\.(?:\d+))?/)[0]]
      calculate! expression, string
      multiply! string
    end

    def calculate! expressions, string
      array = expressions.dup.map! {|arr| arr.split(' ') }

      array.map! do |arr|
        convert_expression! arr
        arr[0].send(arr[1], arr[2]).to_s
      end

      expressions.each do |match|
        string.gsub!(match, array[expressions.index(match)])
      end

      string
    end
end