class Kangaroo
  attr_reader :parent,
              :children
  def initialize(parent, children)
    @parent = parent
    @children = children
  end
end