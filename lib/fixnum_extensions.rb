class Fixnum
    
    def is_prime?
        (2..Math.sqrt(self).to_i).each { |v| return false if self % v == 0 }
        true
    end
    
end