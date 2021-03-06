json.array!(@contraceptive_histories) do |contraceptive_history|
  json.extract! contraceptive_history, :patient_id, :birth_control_pills, :birth_control_pill_problems, :patch, :patch_problems, :vaginal_ring, :vaginal_ring_problems, :condoms, :condom_problems, :withdrawal, :withdrawal_problems, :iud, :iud_problems, :norplant_implanon, :norplat_implanon_problems, :depo_provera_injection, :depo_provera_injection_problems, :emergency_contraception, :emergency_contraception_problems
  json.url contraceptive_history_url(contraceptive_history, format: :json)
end