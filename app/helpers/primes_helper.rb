module PrimesHelper
    class Fixnum
        def isPrime?
            (2..Math.sqrt(self).to_i).each { |v| return false if self % v == 0 }
            true
        end
    end
end
