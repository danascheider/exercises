import math

def closestSqrt(start, finish):
  if math.sqrt(finish) < max(start, 2):
    return finish

  return closestSqrt(start, math.floor(math.sqrt(finish)))

def transform(start, target, counter=0):
  # should validate inputs, for now just assumes target >= start

  if start == target:
    return(start,counter)

  counter += 1
  closestRoot = closestSqrt(start, target)
  
  if closestRoot == start:
    return transform(pow(start, 2), target, counter)
  else:
    return transform(start + 1, target, counter)

print transform(1,100)