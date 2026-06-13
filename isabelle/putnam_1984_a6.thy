theory putnam_1984_a6 imports Complex_Main
"HOL-Number_Theory.Cong"
begin


definition putnam_1984_a6_solution :: "nat" where "putnam_1984_a6_solution \<equiv> undefined"
(* 4 *)
theorem putnam_1984_a6:
  fixes f :: "nat \<Rightarrow> nat"
    and lnz :: "nat \<Rightarrow> nat"
    and IsPeriodicFrom :: "nat \<Rightarrow> (nat \<Rightarrow> nat) \<Rightarrow> nat \<Rightarrow> bool"
    and P :: "nat \<Rightarrow> (nat \<Rightarrow> nat) \<Rightarrow> nat \<Rightarrow> bool"
  assumes hlnz : "\<forall> m > 0. lnz m = (if m mod 10 \<noteq> 0 then m mod 10 else lnz (m div 10))"
    and hf : "\<forall> n > 0. f n = lnz (fact n)"
    and P_def : "\<forall> x g p. P x g p \<longleftrightarrow> (if p = 0 then (\<forall> q > 0. \<not> IsPeriodicFrom x g q) else p = (LEAST q ::nat. 0 < q  \<and> IsPeriodicFrom x g q))"
    and IsPeriodicFrom_def : "\<forall> x f p. (IsPeriodicFrom x f p \<longleftrightarrow> (\<forall> (s :: nat) \<ge> x. f s = f (s + p)))"
  shows "\<exists> g :: nat \<Rightarrow> nat.
          (\<forall> (k :: nat) (a :: nat \<Rightarrow> nat). (k > 0 \<and> inj a) \<longrightarrow> (f (\<Sum> i=0..(k-1). 5^(a i)) = g (\<Sum> i=0..(k-1). a i)) \<and>
         P 1 g putnam_1984_a6_solution)"
  sorry

end