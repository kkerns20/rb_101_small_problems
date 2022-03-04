def five_fridays(year)
  Date.new(year).step(Date.new(year,-1,-1))
    .select(&:friday?)
    .group_by(&:month)
    .select { |_, fridays| fridays.length > 4 }
    .keys
end

def friday_13th(year)
  fridays = 0
  1.upto(12) do |month|
    fridays += 1 if Time.new(year, month, 13).friday?
  end
  fridays 
end
