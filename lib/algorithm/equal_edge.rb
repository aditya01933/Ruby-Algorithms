class EqualEdge
  attr_accessor :edge_present, :total
  def run(tree)
    @total = count(tree)
    check_rec(tree)
    !!edge_present
  end

  def check_rec(tree)
    return 0 if tree.nil?

    c = check_rec(tree.left) + check_rec(tree.right) + 1

    @edge_present = true if c == total - c

    c
  end

  def count(tree)
    return 0 if tree.nil?

    count(tree.left) + count(tree.right) + 1
  end
end
