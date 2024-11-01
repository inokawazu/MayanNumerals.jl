using Test
using MayanNumerals

@testset "Mayan 0 through 20 String" begin
    mayan = [
        "𝋠",
        "𝋡", "𝋢", "𝋣", "𝋤", "𝋥",
        "𝋦", "𝋧", "𝋨", "𝋩", "𝋪",
        "𝋫", "𝋬", "𝋭", "𝋮", "𝋯",
        "𝋰", "𝋱", "𝋲", "𝋳", "𝋡𝋠",
    ]
    nums = 0:19

    for (n, m) in zip(nums, mayan)
        @test string(Mayan(n)) == m
    end
end

@testset "Special Values String Tests" begin
    mayan = [
             "𝋡𝋠𝋠"
             "𝋡𝋭𝋠"
             "𝋡𝋭𝋲"
             "𝋯𝋠𝋠"
             "𝋡𝋠𝋠𝋠"
            ]
    nums = [
            360
            360 + 13 * 20
            360 + 13 * 20 + 18
            15*360
            20*360
           ]

    for (n, m) in zip(nums, mayan)
        @test string(Mayan(n)) == m
    end
end
