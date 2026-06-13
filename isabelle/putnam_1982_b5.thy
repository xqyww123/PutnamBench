theory putnam_1982_b5 imports Complex_Main
begin


theorem putnam_1982_b5:
  fixes T::"real set" and S::"real\<Rightarrow>nat\<Rightarrow>real"
  defines "T \<equiv> {(exp (exp 1))<..}"
  assumes hS : "\<forall>x \<in> T. S x 0 = exp 1 \<and> (\<forall>n::nat. S x (n+1) = log (S x n) x)"
  shows "\<exists>g::real \<Rightarrow> real. (\<forall>x \<in> T. (S x \<longlonglongrightarrow> g x)) \<and> continuous_on T g"
  sorry

end