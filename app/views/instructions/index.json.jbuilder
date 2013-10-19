json.array!(@instructions) do |instruction|
  json.extract! instruction, :body, :image
  json.url instruction_url(instruction, format: :json)
end
