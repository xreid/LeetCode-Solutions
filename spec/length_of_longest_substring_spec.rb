describe '#length_of_longest_substring' do
  context 'when given an empty string' do
    it 'returns 0' do
      expect(length_of_longest_substring('')).to eq 0
    end
  end
  context 'when given a string of size 1' do
    it 'returns 0' do
      expect(length_of_longest_substring('a')).to eq 1
    end
  end
  it 'returns the length of the longest substring of unique characters' do
    expect(length_of_longest_substring('au')).to      eq 2
    expect(length_of_longest_substring('aau')).to     eq 2
    expect(length_of_longest_substring('aaaa')).to    eq 1
    expect(length_of_longest_substring('aabaa')).to   eq 2
    expect(length_of_longest_substring('pwwkew')).to  eq 3
    expect(length_of_longest_substring('abcabc')).to  eq 3
    expect(length_of_longest_substring('abcabqc')).to eq 4
  end
end
