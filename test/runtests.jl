using ExampleCI
using Test

println("Hello World!")
@testset "ExampleCI.jl" begin
    # Write your tests here.
    @test true
end

println("Yay! Everything worked!!")
