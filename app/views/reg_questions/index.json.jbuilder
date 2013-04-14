json.array!(@reg_questions) do |reg_question|
  json.extract! reg_question, :content, :sex, :minimum_age
  json.url reg_question_url(reg_question, format: :json)
end