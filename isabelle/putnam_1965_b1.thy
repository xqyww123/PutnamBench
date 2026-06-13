theory putnam_1965_b1 imports Complex_Main
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Lebesgue_Measure"
begin

(* Note: term n of the sequence integrates over the (n+1)-dimensional unit cube {0..n} \<rightarrow> [0,1] *)

definition putnam_1965_b1_solution :: "real" where "putnam_1965_b1_solution \<equiv> undefined"
(* 1/(2 :: real) *)
theorem putnam_1965_b1: 
  shows "filterlim (\<lambda> n :: nat. set_lebesgue_integral (PiM {0..n} (\<lambda>_. lborel)) {x. (\<forall>i\<in>{0..n}. 0 \<le> x i \<and> x i \<le> 1)} (\<lambda> x. cos (pi/(2*(real (n+1))) * (\<Sum> k \<in> {0::nat..n}. x k))^2)) (nhds putnam_1965_b1_solution) at_top"
  sorry

end