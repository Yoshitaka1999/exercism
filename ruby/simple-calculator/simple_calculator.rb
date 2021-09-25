class SimpleCalculator
  class UnsupportedOperation < StandardError; end
  
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  
  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation if !ALLOWED_OPERATIONS.include?(operation)
    raise ArgumentError if first_operand.class != Integer || second_operand.class != Integer
    
    begin
      result = first_operand.send(operation, second_operand)
    rescue ZeroDivisionError
      return "Division by zero is not allowed."
    end
  
    "#{first_operand} #{operation} #{second_operand} = #{result}"
  end
end
