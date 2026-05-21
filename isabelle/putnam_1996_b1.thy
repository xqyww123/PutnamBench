theory putnam_1996_b1 imports
Complex_Main "HOL-Number_Theory.Fib"
begin

theorem putnam_1996_b1:
  fixes selfish :: "nat set \<Rightarrow> bool"
  and n :: nat
  defines "selfish \<equiv> \<lambda> s. card s \<in> s"
  assumes npos: "n \<ge> 1"
  shows "card {s :: nat set. s \<subseteq> {1..n} \<and> selfish s \<and> (\<forall> ss :: nat set. ss \<subset> s \<longrightarrow> \<not>selfish ss)} = fib n"
  sorry

end