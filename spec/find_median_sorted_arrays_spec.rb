describe '#find_median_sorted_arrays' do
  it 'returns the median' do
    expect(find_median_sorted_arrays([1, 2, 3], [4, 5, 6, 7])).to eq 4
    expect(find_median_sorted_arrays([], [2, 3])).to eq 2.5
  end
end
