describe MaxDepthOfTree do
  it 'should create tree' do
    arr = [1, 2, 3, 4, 5]
    depth = MaxDepthOfTree.new.run(arr)
    expect(depth).to eq(3)
  end
end
