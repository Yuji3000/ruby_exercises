def bracket(bracket)
  bracket_hash = {
    '{' => '}',
    '(' => ')',
    '[' => ']'
  }
  lefts = bracket_hash.keys
  rights = bracket_hash.values
  array = []

  bracket.each_char do |c|
    if lefts.include?(c)
      array.push(c)
    elsif rights.include?(c)
      return false if stack.empty?
      return false unless bracket_hash[stack.pop].eql? char
    end
  end
  stack.empty?
end