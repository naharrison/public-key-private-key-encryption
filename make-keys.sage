# choose two prime numbers (ideally large ones), p1 and p2, and keep them private!
# example usage: make_keys(5, 11)

def make_keys(p1, p2):
  ma = p1*p2 # "modulus of arithmetic"
  fn = (p1-1)*(p2-1) # (no name) (?)
  fn_coprimes = fn.coprime_integers(fn)
  # ^^ the "encryption exponent" can be any one of these, but choose carefully such that you don't get the same number for the "decryption exponent"
  # this isn't actually a huge problem, but it makes the encryption process less secure
  # here I will arbitrarily start with the largest one and work backwards until ee != de

  ee = 0
  de = 0
  for j in range(len(fn_coprimes)-1, 1, -1):
    ee = fn_coprimes[j] # "encryption exponent"
    de = (1/ee)%fn # "decryption exponent" (i.e. de is the number such that (de*ee)%fn = 1)
    if ee != de: break
    

  print "starting primes: ", p1, "and", p2, "  (keep private!)"
  print "public key:   (", ee, ",", ma, ")   (share with the world)"
  print "private key:   (", de, ",", ma, ")   (keep it private!)"
