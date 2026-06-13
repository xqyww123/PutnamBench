theory putnam_1975_a5 imports
Complex_Main
"HOL-Library.Interval"
"HOL-Analysis.Derivative"
begin

theorem putnam_1975_a5:
  fixes I :: "real set"
  and f y1 y2 :: "real \<Rightarrow> real"
  assumes hI: "is_interval I"
  and hfcont: "continuous_on I f"
  and hycdiff: "y1 C1_differentiable_on I \<and> (deriv y1) C1_differentiable_on I \<and> y2 C1_differentiable_on I \<and> (deriv y2) C1_differentiable_on I"
  and hy1sol: "\<forall> x \<in> I. (deriv^^2) y1 x = (f x) * (y1 x)"
  and hy2sol: "\<forall> x \<in> I. (deriv^^2) y2 x = (f x) * (y2 x)"
  and hylinindep: "\<forall> c1 c2 :: real. (\<forall> x \<in> I. c1 * y1 x + c2 * y2 x = 0) \<longrightarrow> (c1 = 0 \<and> c2 = 0)"
  and hyI: "\<forall> x \<in> I. y1 x > 0 \<and> y2 x > 0"
  shows "\<exists> c :: real. c > 0 \<and> (let z :: real \<Rightarrow> real = \<lambda> x :: real. c * sqrt ((y1 x) * (y2 x)) in (\<forall> x \<in> I. (deriv^^2) z x + 1/(z x)^3 = (f x) * (z x)))"
  sorry

end