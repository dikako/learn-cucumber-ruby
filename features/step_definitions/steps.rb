Given(/a list of numbers on table/) do |table|
    @list = table.raw
end

Then(/the total for the horizontal list is "(.*)"/) do |int|
    total = 0
    @list.first.each { |a| total += a.to_i }
    expect(total).to eq(int.to_i)
end

Then(/the total for the vertical list is "(.*)"/) do |int|
    total = 0
    @list.each { |a| total += a.first.to_i }
    expect(total).to eq(int.to_i)
end

Then(/the total for all numbers in 2D array is "(.*)"/) do |int|
    total = 0
    print @list
    @list.each { |a| a.each { |b| total += b.to_i } }
    expect(total).to eq(int.to_i)
end

