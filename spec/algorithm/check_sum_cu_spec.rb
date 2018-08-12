describe CheckSumCU do
  it 'should generate correct output' do
    expect(CheckSumCU.new.run([1,2,4,3,10])).to be true
  end
end