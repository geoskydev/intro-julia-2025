println("Hello, World!")
println(√9)
2^64 > 10^18 

f(x) = x^2 + x

methods(f)

supertypes(typeof(5))

function blowup(x; max_iter=1000)
    for count in 1:max_iter
        x = x^2 + x
        if isinf(x)
            return count
        end
    end
    return max_iter+1
end

blowup(0.00001,max_iter=1_000_000)

