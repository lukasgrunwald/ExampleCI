using ExampleCI
using Test

println("Hello World!")
println("We have implemented a fancy new feature!")
@testset "ExampleCI.jl" begin
    # Write your tests here.
    @test true
end

println("Yay! Everything worked!!")
