theory putnam_1977_a6 imports Complex_Main "HOL-Analysis.Interval_Integral"
begin


definition putnam_1977_a6_solution::bool where "putnam_1977_a6_solution \<equiv> undefined"
(* True *)
theorem putnam_1977_a6:
  fixes X::"(real \<times> real) set"
  defines "X \<equiv> {(x, y). 0 \<le> x \<and> x \<le> 1 \<and> 0 \<le> y \<and> y \<le> 1}"
  shows "(\<forall>f::real\<times>real\<Rightarrow>real. continuous_on X f \<longrightarrow>
    (\<forall> a b s. s > 0 \<and> 0 \<le> a \<and> a + s \<le> 1 \<and> 0 \<le> b \<and> b + s \<le> 1 \<and>
        (a = 0 \<or> a + s = 1 \<or> b = 0 \<or> b + s = 1) \<longrightarrow>
      (set_lebesgue_integral lebesgue
        {(p, q). a \<le> p \<and> p \<le> a + s \<and> b \<le> q \<and> q \<le> b + s} f) = 0)
    \<longrightarrow> (\<forall>(x, y) \<in> X. f (x, y) = 0))
    \<longleftrightarrow> putnam_1977_a6_solution"
  sorry

end