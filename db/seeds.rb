User.create(first_name: "Asim", last_name: "Kaghzi", username: "akaghzi", user_type: "doctor", password: "hussain7", password_confirmation: "hussain7")
User.create(first_name: "Jamila", last_name: "Kureshi", username: "jkureshi", user_type: "doctor", password: "jamila", password_confirmation: "jamila")
Patient.create(first_name: "John", middle_name: "Smith", last_name: "Doe", gender: "male", date_of_birth: "1968-01-01", phone: "4035552345", externalid: "123211")
Patient.create(first_name: "Mary", middle_name: "Smith", last_name: "Jane", gender: "female", date_of_birth: "1998-12-11", phone: "3035552345", externalid: "123213")
Patient.create(first_name: "Little", middle_name: "Smith", last_name: "Jonny", gender: "male", date_of_birth: "2007-11-21", phone: "2035552345", externalid: "1332221")
RegQuestion.create(content: 'existing medical problems [put none, if none]',minimum_age: 0,gender: 'both')
RegQuestion.create(content: 'past medical problems [excluding surgeries]',minimum_age: 0,gender: 'both')
RegQuestion.create(content: 'list surguries [include surgeon name, hospital, date of surgery etc]',minimum_age: 0,gender: 'both')
RegQuestion.create(content: 'for children < 18 years, problems or complications of pregnancy, labor, delivery, or early newborn period, adults skip this ',minimum_age: 0,gender: 'both')
RegQuestion.create(content: 'other healthcare provider, if so, include names and for what condition they are involved',minimum_age: 0,gender: 'both')
RegQuestion.create(content: 'indicate history of medical problems of your family and your relationship, like heart disease, cancer, brother , mother etc',minimum_age: 0,gender: 'both')
RegQuestion.create(content: 'vaccination record, for children please bring in vaccination certificates, for adults list year and type of vaccination',minimum_age: 0,gender: 'both')
RegQuestion.create(content: 'recent tests done, i.e., cholestrol, blood work, urine analysis, x-ray, please bring in test reports for accuracy',minimum_age: 0,gender: 'both')
RegQuestion.create(content: 'reproductive history, i.e., pregnancy, still births, births , mamograms, menopause, bone density test',minimum_age: 18,gender: 'female')
RegQuestion.create(content: 'men\'s screening, i.e., prostrate cancer etc',minimum_age: 40,gender: 'male')
RegQuestion.create(content: 'occupation, include number of hours per week work',minimum_age: 18,gender: 'both')
RegQuestion.create(content: 'recreational activities you enjoy',minimum_age: 5,gender: 'both')
RegQuestion.create(content: 'smoking or pan / gutka chewing , if so then frequenct of use, if quite then what year',minimum_age: 14,gender: 'both')
RegQuestion.create(content: 'alchohol drinking, if so, what frequency?',minimum_age: 14,gender: 'both')
RegQuestion.create(content: 'substance abuse, if so, what type of substance, quantities and frequency, if quit then what year',minimum_age: 14,gender: 'both')
RegQuestion.create(content: 'recent changes to weight, chills, fever, excessive fatigue',minimum_age: 0,gender: 'both')
RegQuestion.create(content: 'recent changes to sense of smell, ability to chew or swallow, vision, hearing',minimum_age: 5,gender: 'both')
RegQuestion.create(content: 'any recent occurance of shortness of breath, wheezing, heart racing, difficulty breathing while sleeping or leg swelling etc',minimum_age: 5,gender: 'both')
RegQuestion.create(content: 'recent problems of digestion, nasuea, vomiting, abdominal pain, diarrhea, constipation, blood in stool, changes in bowel movement, color or frequency etc',minimum_age: 5,gender: 'both')
RegQuestion.create(content: 'recent problems of back pain, joint pain, injuries',minimum_age: 5,gender: 'both')
RegQuestion.create(content: 'recent problems of dizziness, headache, unusual numbness or tingling sensation, if none, put none',minimum_age: 18,gender: 'both')
RegQuestion.create(content: 'during the past month have you felt depressed, down, or hopeless, if none, put none',minimum_age: 18,gender: 'both')
RegQuestion.create(content: 'any concerned related to sexual functions, if none, put none',minimum_age: 18,gender: 'both')
RegQuestion.create(content: 'recent changes in urination, frequency, color , pain, burning sensation, difficulty starting or stopping stream of urine, blood in urine, leakage etc',minimum_age: 10,gender: 'both')
RegQuestion.create(content: 'any other problem or concern',minimum_age: 0,gender: 'both')
RegQuestion.create(content: 'how did you hear about us',minimum_age: 18,gender: 'both')
LabTest.create(full_name: "ABO BLOOD GROUP & Rh FACT", short_name: "ABO", unit_of_measure: "text", low_threshold: 0.0, high_threshold: 0.0)
LabTest.create(full_name: "ESR", short_name: "ESR", unit_of_measure: "text",  low_threshold: 0.0, high_threshold: 0.0)
LabTest.create(full_name: "BLOOD CULTURE", short_name: "BLCS", unit_of_measure: "text", low_threshold: 0.0, high_threshold: 0.0)