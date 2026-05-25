theory putnam_1997_a4 imports Complex_Main "HOL-Algebra.Group"
begin

theorem putnam_1997_a4:
  fixes G :: "'g monoid" (structure) and \<phi>::"'g\<Rightarrow>'g"
  assumes Ggroup: "Group.group G"
  and hphi_closed: "\<forall> x \<in> carrier G. \<phi> x \<in> carrier G"
  and hphi: "\<forall> g1 \<in> carrier G. \<forall> g2 \<in> carrier G. \<forall> g3 \<in> carrier G.
    \<forall> h1 \<in> carrier G. \<forall> h2 \<in> carrier G. \<forall> h3 \<in> carrier G.
    (g1 \<otimes> g2 \<otimes> g3 = \<one> \<and> h1 \<otimes> h2 \<otimes> h3 = \<one>) \<longrightarrow>
    \<phi> g1 \<otimes> \<phi> g2 \<otimes> \<phi> g3 = \<phi> h1 \<otimes> \<phi> h2 \<otimes> \<phi> h3"
  shows "\<exists>a \<in> carrier G. \<forall>x \<in> carrier G. \<forall>y \<in> carrier G.
    a \<otimes> \<phi> (x \<otimes> y) = (a \<otimes> \<phi> x) \<otimes> (a \<otimes> \<phi> y)"
  sorry

end
