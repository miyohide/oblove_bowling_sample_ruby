class Bowling
   def Bowling.score(pins)
##      pins.inject(0) {|result, item| result + item}
      result = 0
      pins_size = pins.size
      pins.each_with_index { |item,idx|
         if idx < 16 then
            if idx % 2 == 0 && pins[idx] == 10 then
               result += pins[idx + 2]
               if pins[idx + 2] == 10 then
                  result += pins[idx + 4]
               else
                  result += pins[idx + 3]
               end
            elsif idx % 2 == 0 && pins[idx] + pins[idx + 1] == 10 then
               result += pins[idx + 2]
            end
         elsif idx < 18 then
            if idx % 2 == 0 && pins[idx] == 10 then
               result += pins[idx + 2] + pins[idx + 3]
            elsif idx % 2 == 0 && pins[idx] + pins[idx + 1] == 10 then
               result += pins[idx + 2]
            end
         else

         end
         result += pins[idx]
      }
      return result
   end
end
