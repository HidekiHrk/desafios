def main():
  cdef unsigned long long int s
  s = int(input("Numero: "))
  cdef list nums = []
  cdef int i
  while s != 1:
    for i in range(2,1000000000000000):
      if s % i == 0:
        nums.append(i)
        s = s / i
        break

  finais = []
  
  cdef int num
  cdef int iguais = 0
  cdef int num2
  for num in list(nums):
    iguais = 0
    for num2 in list(nums):
      if num == num2:
        iguais += 1
        nums.remove(num2)

    if iguais == 1:
      finais.append(f"{num}")
    elif iguais != 0:
      finais.append(f"{num}^{iguais}")

  print(' x '.join(finais))

main()