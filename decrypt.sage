# decrypt a messagecypher
# using the private decryption exponent (de)
# and the public modulus of arithmetic (ma)
# example usage: decrypt(18, 23, 55)

def decrypt(cypher, de, ma):
  message = (cypher^de)%ma
  print cypher, "is decryped as", message

decrypt(18, 23, 55)
