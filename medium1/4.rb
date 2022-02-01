# # 1000 Lights

# def initialize_lights(number_of_lights)
#   lights = Hash.new
#   1.upto(number_of_lights) do |number|
#     lights[number] = "off"
#   end
#   lights
# end

# def on_lights(lights)
#   lights.select { |_position, state| state == "on" }.keys
# end

# def toggle_every_nth_light(lights, nth)
#   lights.each do |position, state|
#     if position % nth == 0
#       lights[position] = (state == "off") ? "on" : "off"
#     end
#   end
# end

# def toggle_lights number_of_lights
#   lights = initialize_lights(number_of_lights)
#   1.upto(lights.size) do |iteration_number|
#     toggle_every_nth_light(lights, iteration_number)
#   end

#   on_lights(lights)
# end

# p toggle_lights(1000)

def lights(n)
  result = []
  (1..n).each do |switch_num|
    switch_state = false
    (1..n).each do |pass_num|
      switch_state = !switch_state if switch_num % pass_num == 0
    end
    result << switch_num if switch_state
  end
  result
end

p lights(1000)