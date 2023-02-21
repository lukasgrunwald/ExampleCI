using Base.Threads: @threads

struct MyComplex
    real::Float64
    imag::Float64
end

Base.:+(x::MyComplex,y::MyComplex) = MyComplex(x.real+y.real,x.imag+y.imag)
Base.:/(x::MyComplex,y::Int) = MyComplex(x.real/y,x.imag/y)
average(x::Vector{MyComplex}) = sum(x)/length(x)
arr = MyComplex(rand(), rand())

arr = [MyComplex(rand(),rand()) for i in 1:100]
average(arr)
@code_llvm average(arr)
##
