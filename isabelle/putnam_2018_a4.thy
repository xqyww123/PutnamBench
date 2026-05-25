theory putnam_2018_a4 imports Complex_Main "HOL-Algebra.Group"
begin

(* uses (nat \<Rightarrow> nat) instead of ({1..n} \<Rightarrow> nat) *)
theorem putnam_2018_a4:
  fixes m n :: nat
  and a :: "nat \<Rightarrow> nat"
  and G :: "'G monoid" (structure)
  and g h :: 'G
  and ghprodrec :: "nat \<Rightarrow> 'G"
  assumes Ggroup: "Group.group G"
  and gcarr: "g \<in> carrier G" and hcarr: "h \<in> carrier G"
  and mnpos: "m > 0 \<and> n > 0"
  and mngcd: "gcd m n = 1"
  and ha: "\<forall>k::nat\<in>{1..n}. (int (a k)) = \<lfloor>(real (m*k)) / n\<rfloor> - \<lfloor>(real (m*(k-1))) / n\<rfloor>"
  and hghprodrec: "ghprodrec 0 = \<one> \<and> (\<forall>k::nat\<in>{1..n}. ghprodrec k = ghprodrec (k-1) \<otimes> g \<otimes> h[^](a k))"
  and ghprod: "ghprodrec n = \<one>"
  shows "g \<otimes> h = h \<otimes> g"
  sorry

end
