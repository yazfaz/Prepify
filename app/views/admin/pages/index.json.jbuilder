json.array!(@pages) do |page|
  json.extract! page, :sequence_id, :pageable_id, :pageable_type, :subject_id
  json.url page_url(page, format: :json)
end
