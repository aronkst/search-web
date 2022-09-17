require 'json'

class Show
  attr_reader :final

  def initialize(data, values)
    @data = data
    @values = values

    create
  end

  private

  def create
    
  rescue
    @data = nil
  end

  def body
    {
      html: @html,
      find: JSON.parse(@find)["find"]
    }.to_json
  end
end

{
  title: {
    type: "",
    value: ""
  },
  list: {
    abc: {
      type: "",
      value: ""
    }
  }
}