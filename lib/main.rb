class Bowling
   def Bowling.score(pins)
##      pins.inject(0) {|result, item| result + item}
      result = 0
      before_strike = false
      before_spare = false
      pins_size = pins.size
      pins.each_with_index { |item,idx|
         if idx == pins_size - 1 then
            result += pins[idx]
            break
         end
         if idx >= 2 && idx % 2 == 0 then
            if pins[idx - 2] == 10 then
               before_strike = true
            elsif pins[idx - 2] + pins[idx - 1] == 10 then
               before_spare = true
            end
         end
         if before_strike then
            result += pins[idx]
         end
         if before_spare && idx % 2 == 0 then
            result += pins[idx]
         end
         result += pins[idx]
         if idx % 2 == 1 then
            before_strike = before_spare = false
         end

      }
      return result
   end
end
