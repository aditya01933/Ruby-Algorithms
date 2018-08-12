class CheckBST
  def run(arr)
    root = Tree::Node.new(arr[0])
    root.left = Tree::Node.new(arr[1])
    root.right = Tree::Node.new(arr[2])
    root.left.left = Tree::Node.new(arr[3])
    root.left.right = Tree::Node.new(arr[4])
    bst?(root)
  end

  def bst?(tree)
    if tree.left.nil? && tree.right.nil?
      return
    end

    if bst?(tree.left) && bst?(tree.right)
      if tree.left.value < tree.value && tree.right.value > tree.value
        return true
      end
    end

    # if tree.left.value < tree.value && tree.right.value > tree.value
    #   return true
    #   if bst?(tree.left) && bst?(tree.right)
    #     return true
    #   end

    #   return false
    # else
    #   return false
    # end
  end
end
