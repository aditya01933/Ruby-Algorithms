describe EqualEdge do
  it 'should return true for given tree' do
    arr = [5, 1, 6, 3, 7, 4]
    root = Tree::Node.new(arr[0])
    root.left = Tree::Node.new(arr[1])
    root.right = Tree::Node.new(arr[2])
    root.left.left = Tree::Node.new(arr[3])
    root.right.left = Tree::Node.new(arr[4])
    root.right.right = Tree::Node.new(arr[5])
    expect(EqualEdge.new.run(root)).to eq true
  end

  it 'should return false for given tree' do
    arr = [5, 1, 6, 3, 7]
    root = Tree::Node.new(arr[0])
    root.left = Tree::Node.new(arr[1])
    root.right = Tree::Node.new(arr[2])
    root.left.left = Tree::Node.new(arr[3])
    root.right.left = Tree::Node.new(arr[4])
    expect(EqualEdge.new.run(root)).to eq false
  end
end
