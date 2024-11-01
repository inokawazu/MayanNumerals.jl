A fun package for doing math with historic Mayan numerals.

# Usage 

Check out how Mayan numbers are made. The leftmost symbol represents the largest place value. 
In the decimal system, every place value is a multiple of ten times the previous value.

In the Mayan system, it is base 20, which means there are 19 symbols. 
Thus, every place value is twenty times more than the previous one. 
However, the third position is not 20 times larger than the last; it is 18. 
This is a special exception that makes this numeral system distinct.

```julia
julia> using MayanNumerals

julia> Mayan(0)
𝋠

julia> Mayan(1)
𝋡

julia> Mayan(3)
𝋣

julia> Mayan(5)
𝋥

julia> Mayan(8)
𝋨

julia> Mayan(14)
𝋮

julia> Mayan(20)
𝋡𝋠

julia> Mayan(100)
𝋥𝋠

julia> Mayan(369)
𝋡𝋠𝋩

julia> Mayan(359)
𝋱𝋳

julia> Mayan(360)
𝋡𝋠𝋠

julia> Mayan(420)
𝋡𝋣𝋠

julia> Mayan(1024)
𝋢𝋯𝋤
```

You can do math too!

```julia
julia> using MayanNumerals

julia> mayan"𝋡𝋭𝋲" |> Int
638

julia> mayan"𝋡𝋭𝋲" - mayan"𝋡𝋭"
𝋡𝋬𝋥

julia> mayan"𝋡𝋭𝋲" + mayan"𝋠"
𝋡𝋭𝋲

julia> mayan"𝋡𝋭𝋲" + mayan"𝋣𝋠𝋠"
𝋤𝋭𝋲

julia> mayan"𝋡𝋭𝋲" + mayan"𝋣𝋠𝋠"
𝋤𝋭𝋲
```

# Further Reading

- [Maya numerals - Wikipedia](https://en.wikipedia.org/wiki/Maya_numerals)
- [Positional notation - Wikipedia](https://en.wikipedia.org/wiki/Positional_notation)
- [Mayan Numerals (Unicode block) - Wikipedia](https://en.wikipedia.org/wiki/Mayan_Numerals_(Unicode_block))
