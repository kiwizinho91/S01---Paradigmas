N = tonumber(io.read())

numeros = {}

for i = 1, N do
    numeros[i] = tonumber(io.read())
end

impares = {}

for i = 1, N do
    if numeros[i] % 2 ~= 0 then
        table.insert(impares, numeros[i])
    end
end

print("Numeros impares encontrados:")

for i = 1, #impares do
    print(impares[i])
end
