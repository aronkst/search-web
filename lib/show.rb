require 'json'

class Show
  attr_reader :final

  def initialize(data, values)
    @data = JSON.parse(data)
    @values = JSON.parse(values)

    create
  end

  private

  def create
    @final = {}

    @values.each do |key, value|
      if is_list?(value)
        @final[key] = []

        @data[key].each do |data_values|
          temp_values = {}

          @values[key].each do |key_list, value_list|
            temp_values[key_list] = { 'type' => value_list, 'value' => data_values[key_list] }
          end

          @final[key].append(temp_values)
        end
      else
        @final[key] = { 'type' => value, 'value' => @data[key] }
      end
    end
  rescue
    @final = nil
  end

  def is_list?(value)
    value.is_a?(Hash)
  end
end
