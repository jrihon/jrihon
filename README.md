from os.path import basename

def Greetings():
  Hello_Github = """I'm jrihon, a PhD student over at the lab of Medicinal Chemistry @Rega Institute for Medical Research in Leuven. Contracted by the Catholic University of Leuven (KUL)
I've studied Pharmaceutical Sciences, with a master degree in Drug Design and Development, and decided to completely switch it up and go towards the computational sciences. I'm very interesting in Computational Chemistry and Computational Biology, with an invested fascination for bio-informatics!

I work mainly (or essentially) in Python3 and I dabble in Julia.

I'm currently working on the development of modified nucleic acids and nucleic acid strands. 
I work through static and dynamic modeling approaches, with the intent on making biological systems work by predicting the viability of said systems."""
  print(Hello_Github)

if basename(__file__) == "README.md":
  Greetings()

