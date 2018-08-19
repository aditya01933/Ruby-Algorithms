describe CheckCousinBTree do
  it 'should work for given cases' do
    check_cousin = CheckCousinBTree.new
    expect(check_cousin.run([6,2,5,7,8,1,3], 8, 1)).to be true
    expect(check_cousin.run([6,2,5,7,8,1,3], 3, 5)).to be false
    expect(check_cousin.run([6,2,5,7,8,1,3], 7, 8)).to be false
    expect(check_cousin.run([6,2,5,7,8,1,3], 7, 1)).to be true
  end
end
