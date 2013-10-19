json.array!(@subjects) do |subject|
  json.extract! subject, :section, :name
  json.url subject_url(subject, format: :json)
end
