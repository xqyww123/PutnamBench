theory putnam_1964_b1 imports Complex_Main
begin

theorem putnam_1964_b1:
  fixes a :: "nat \<Rightarrow> nat"
  assumes apos: "\<forall>k::nat. a k > 0"
  and ha: "summable (\<lambda>n::nat. 1 / real (a n))"
  defines "b \<equiv> (\<lambda>n::nat. card {k::nat. a k \<le> n})"
  shows "filterlim (\<lambda>n::nat. real (b n) / real n) (nhds 0) at_top"
  sorry

end
