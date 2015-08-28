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
      return string unless (expressions = string.match(/\d+(?:\.(?:\d+))? (?:\+|\-) \d+(?:\.(?:\d+))?/))
      
      string.gsub!(expressions[0], calculate!(expressions[0].split(' ')))
      add! string
    end

    def multiply! string
      return string unless (expressions = string.match(/\d+(?:\.(?:\d+))? (?:\*|\/) \d+(?:\.(?:\d+))?/))

      string.gsub!(expressions[0], calculate!(expressions[0].split(' ')))
      multiply! string
    end

    def calculate! expression
      convert_expression! expression
      expression[0].send(expression[1], expression[2]).to_s
    end
end