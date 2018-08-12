describe SumTree do
  it 'should give correct result' do
    expect(SumTree.new.run([26,10,3,4,6,1,2])).to be true
  end
end