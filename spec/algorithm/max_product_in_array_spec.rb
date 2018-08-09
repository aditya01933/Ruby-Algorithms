describe MaxProduct do
  it 'should work for given cases' do
    cases = [
      {
        in: [1, 4, 3, 6, 7, 0],
        out: 'Pair is 7 & 6'
      },
      {
        in: [-1, -3, -4, 2, 0, -5],
        out: 'Pair is -5 & -4'
      }
    ]

    cases.each do |test|
      expect(MaxProduct.run(test[:in])).to eq(test[:out])
    end
  end
end
