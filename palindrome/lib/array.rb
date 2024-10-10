
def full_name(first, *rest)
  rest.reduce(first) do |x, o|
    x + " " + o
  end
end
  
p full_name("Pradeep", "Suresh", "Satyanarayana")