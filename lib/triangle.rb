class Triangle
      def initialize(sideA,sideB,sideC)
         @sideA=sideA
         @sideB=sideB
         @sideC=sideC
      end

      def kind
        if (@sideA <=0) || (@sideB <=0) || (@sideC <= 0)
          raise TriangleError
        elsif (@sideA+@sideB <= @sideC) || (@sideA+@sideC <= @sideB) || (@sideB+@sideC <= @sideA)
          raise TriangleError
        else
          if (@sideA== @sideB) && (@sideB == @sideC)
          :equilateral
          elsif (@sideA== @sideB) || (@sideB == @sideC) || (@sideA== @sideC)
            :isosceles
          elsif (@sideA!= @sideB) && (@sideB != @sideC) && (@sideA!= @sideC)
            :scalene
          end
        end
      end
        
      class TriangleError < StandardError
        end
end
