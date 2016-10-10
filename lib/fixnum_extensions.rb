class PrimeChecker
    
    def is_prime?(num)
        (2..Math.sqrt(num).to_i).each { |v| return false if num % v == 0 }
        true
    end
    
end

prime = PrimeChecker.new
puts prime.is_prime?(13)