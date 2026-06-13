theory putnam_1978_b2 imports Complex_Main
begin


definition putnam_1978_b2_solution :: "rat" where "putnam_1978_b2_solution \<equiv> undefined"
(* (real_of_nat 7)/4 *)
theorem putnam_1978_b2:
  shows "(\<Sum> i. (\<Sum> j. (real_of_nat 1)/(real_of_nat ((i+1)^2 * (j+1) + 2 * (i+1) * (j+1) + (i+1) * (j+1)^2)))) = putnam_1978_b2_solution"
  sorry

end