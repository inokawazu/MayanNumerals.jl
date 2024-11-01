module MayanNumerals

export Mayan

const MAYAN_NUMERALS = [
                        '𝋠',  # 0
                        '𝋡',  # 1
                        '𝋢',  # 2
                        '𝋣',  # 3
                        '𝋤',  # 4
                        '𝋥',  # 5
                        '𝋦',  # 6
                        '𝋧',  # 7
                        '𝋨',  # 8
                        '𝋩',  # 9
                        '𝋪',  # 10
                        '𝋫',  # 11
                        '𝋬',  # 12
                        '𝋭',  # 13
                        '𝋮',  # 14
                        '𝋯',  # 15
                        '𝋰',  # 16
                        '𝋱',  # 17
                        '𝋲',  # 18
                        '𝋳',  # 19
                       ]

struct Mayan{T}
    value::T
    function Mayan(n::T) where T<:Integer
        if n < 0
            throw(ArgumentError("Mayan numbers are only positive."))
        end
        return new{T}(n)
    end
end

placevalue(n) = n == 1 ? 18 : 20

function digit2mayanchar(digit)
    @assert 0 <= digit < 20
    return MAYAN_NUMERALS[digit + 1]
end

Base.:+(m1::Mayan, m2::Mayan) = Mayan(m1.value + m2.value)
Base.:-(m1::Mayan, m2::Mayan) = Mayan(m1.value - m2.value)
Base.:*(m1::Mayan, m2::Mayan) = Mayan(m1.value * m2.value)
Base.div(m1::Mayan, m2::Mayan) = Mayan(m1.value ÷ m2.value)

Base.:^(m1::Mayan, m2::Mayan) = Mayan(m1.value ^ m2.value)

Base.isless(m1::Mayan, m2::Mayan) = isless(m1.value, m2.value)
Base.:(==)(m1::Mayan, m2::Mayan) = m1.value == m2.value

function digits(m::Mayan{T}) where T

    n = m.value

    if iszero(n)
        return T[0]
    end

    ds = T[]
    for pv in Iterators.countfrom(0)
        n, d = divrem(n, placevalue(pv))
        push!(ds, d)
        if iszero(n)
            break
        end
    end

    return ds
end

function Base.show(io::IO, m::Mayan)
    for digit in reverse(digits(m))
        print(io, digit2mayanchar(digit))
    end
end

end # module MayanNumerals
