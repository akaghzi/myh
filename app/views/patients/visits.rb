if @patient.visits?
  @patient.visit.each do |visit|
    visit.full_name
    if visit.lab_tests?
      visit.lab_tests.each do |lab_test|
        lab_test.full_name
      end
    else
      "no lab test record found"
    end
    if visit.vital_signs?
      visit.vital_signs.each do |vital_sign|
        vital_sign.temperature
      end
    else
      "no lab test record found"
    end
  end
  else
    "no visit record found"
  end