module LearningCrystal
  class NumberSplitter 
    def self.split_numbers(number, interval)
      blocks = Array(Int32).new
      repeat = number / interval
      if number % interval == 0
        repeat.times { blocks << interval}
      elsif number % interval != 0
        remainder = number - ((number / interval) * interval)
        repeat.times { blocks << interval}
        blocks << remainder        
      end
      blocks
    end    
  end
end