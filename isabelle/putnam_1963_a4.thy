theory putnam_1963_a4 imports MathBench_Prover.MathBench_Prover Minilang_AoA.Minilang_AoA
 "HOL-Library.Liminf_Limsup" "HOL-Library.Extended_Real"
begin
declare [[auto_interpret_for_embedding=false, AoA_use_proof_cache=false, AoA_driver="Codex-API.gpt-5.5-high"]] (*K2-Think*)
theorem putnam_1963_a4:
  fixes apos::"(nat\<Rightarrow>real) \<Rightarrow> bool" and f::"(nat\<Rightarrow>real) \<Rightarrow> nat \<Rightarrow> ereal"
  defines "apos \<equiv> \<lambda>a. \<forall>n. a n > 0"
    and "f \<equiv> \<lambda>a::(nat\<Rightarrow>real). \<lambda>n::nat. ereal (n * (((1 + a (n+1)) / (a n)) - 1))"
  shows "(\<forall>a::(nat\<Rightarrow>real). apos a \<longrightarrow> (limsup (f a)) \<ge> 1) \<and> \<not>(\<exists> c > 1. \<forall>a. apos a \<longrightarrow> (limsup (f a)) \<ge> c)"
  by aoa



end