json.array!(@gynecology_problems) do |gynecology_problem|
  json.extract! gynecology_problem, :name
  json.url gynecology_problem_url(gynecology_problem, format: :json)
end