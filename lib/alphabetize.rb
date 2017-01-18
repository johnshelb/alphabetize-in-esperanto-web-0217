def alphabetize(array)
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  custom_sort = ->(a, b) do
    a.split('').each_with_index do |char, i|
      return alphabet.index(a[i]) <=> alphabet.index(b[i]) if a[i] != b[i]
    end
  end
  result=array.sort(&custom_sort)
end
