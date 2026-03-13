M = tonumber(io.read())

N = tonumber(io.read())

X = tonumber(io.read())

for i = M, N do
    resultado = X * i
    print(X .. " x " .. i .. " = " .. resultado)
end