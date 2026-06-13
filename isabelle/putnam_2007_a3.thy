theory putnam_2007_a3 imports Complex_Main
"HOL-Combinatorics.Permutations"
begin

(* Note: Boosts domain from Fin 3k+1 to nat, adding condition to keep sequence count finite *)

definition putnam_2007_a3_solution :: "nat \<Rightarrow> real" where "putnam_2007_a3_solution \<equiv> undefined"
(* \<lambda> k. (fact k) * (fact (k + 1)) / ((3 * k + 1 :: real) * (fact (2 * k))) *)
theorem putnam_2007_a3:
  fixes k :: "nat"
    and perms goodperms :: "(nat \<Rightarrow> nat) set"
  defines "perms \<equiv> {f :: nat \<Rightarrow> nat. f permutes {1::nat..3*k+1} \<and> (\<forall> i. i \<notin> {1::nat..3*k+1} \<longrightarrow> f i = 0)}"
    and "goodperms \<equiv> {f :: nat \<Rightarrow> nat. f \<in> perms \<and> (\<not>(\<exists> j \<in> {1::nat..3*k+1}. 3 dvd (\<Sum> i \<in> {1::nat..3*k+1}. if i \<le> j then f i else 0)))}"
  shows "card goodperms = (card perms) * (putnam_2007_a3_solution k)"
  sorry

end