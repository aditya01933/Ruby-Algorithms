describe CheckBST do
  it 'should return correct result when not bst' do
    expect(CheckBST.new.run([10, 7, 39, 11])).to be false
  end

  it 'should return correct result when bst' do
    expect(CheckBST.new.run([10, 7, 39, 8])).to be true
  end
end
