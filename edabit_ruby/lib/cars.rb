# https://edabit.com/challenge/iCsLtYnrNT6tNWTxk

def cars(wheels, bodies, figures)
 array = [
    wheels / 4,
    bodies,
    figures / 2
  ]
  array.min(1).first

end