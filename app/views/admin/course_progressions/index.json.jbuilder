json.array!(@course_progressions) do |course_progression|
  json.extract! course_progression, 
  json.url course_progression_url(course_progression, format: :json)
end
