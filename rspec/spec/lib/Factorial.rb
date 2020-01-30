class Factorial

    def factorialof(n)
        (1..n).inject(:*)
    end
end
p Factorial.new.factorialof("jhvh")