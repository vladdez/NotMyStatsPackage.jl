function rse_sum(range_in)
    out = 0
    @showprogress for i = range_in
        out += i
    end
    return out
end

function rse_mean(range_in)
    return rse_sum(range_in)/ length(range_in)
end

function rse_std(range_in)
    vec_mean = rse_mean(range_in)
    return sqrt(rse_sum((collect(range_in) .- vec_mean).^2)/(length(range_in)-1))
end

function rse_tstat(x; σ = rse_std(x))
    return rse_mean(x)./ (σ / sqrt(length(x)))
end

struct StatResult
    x::Vector
    n::Int64
    std::Float64
    tvalue::Float64
end

function StatResult(x)
    StatResult(
        x,
        length(x),
        rse_std(x),
        rse_tstat(x)
    )
end

function Base.length(s::StatResult)
    return s.n
end

function printOwner()
    println("sims1253")
end


function printOwner2()
    println("vladdez")
end