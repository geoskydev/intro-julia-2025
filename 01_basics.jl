println("Hello, World!")
println(√9)
2^64 > 10^18 

f(x) = x^2 + x
methods(f)

supertypes(typeof(5))

function blowup(x, c=x; max_iter=1000)
    for count in 1:max_iter
        x = x^2 + c
        if abs(x) > 2
            return count
        end
    end
    return max_iter + 1
end

blowup(0.00001; max_iter=1_000_000)
blowup(100; max_iter=1_000_000)

using Plots

plot(blowup, 0.25, 0.3)

blowup.([0.26, 0.27, 0.3])

m = reshape(range(0.3, 0.4, length=480000), 800,600)
blowup.(m)

# using Images
plot(blowup.(m), aspect_ratio=:equal, seriestype=:heatmap)
plotattr(:Series)
plotattr(:Subplot)
plotattr(:Plot)
plotattr(:Axis)

plotattr("seriestype")
plotattr("aspect_ratio")