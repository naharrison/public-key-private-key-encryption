# encrypt a "message" (which must be a positive integer)
# using the public encryption exponent (ee)
# and the public modulus of arithmetic (ma)
# example usage: encrypt(2, 7, 55)

def encrypt(message, ee, ma):
  cypher = (message^ee)%ma
  print message, "is encrypted as", cypher
