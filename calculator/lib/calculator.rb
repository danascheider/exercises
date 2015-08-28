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
      expression = string.match(/\d+(?:\.(?:\d+))? (?:\+|\-) \d+(?:\.(?:\d+))?/)[0]
      string.gsub!(expression, calculate!(expression))
      add! string
    end

    def multiply! string
      return string unless string.match(/\*|\//)
      expression = string.match(/\d+(?:\.(?:\d+))? (?:\*|\/) \d+(?:\.(?:\d+))?/)[0]
      string.gsub!(expression, calculate!(expression))
      multiply! string
    end

    def calculate! expression
      array = expression.split(' ')
      convert_expression! array
      array[0].send(array[1], array[2]).to_s
    end

    def substitute! old_string, new_string
      old_string.gsub!
    end
end