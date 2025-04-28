(*
Given a function 𝐹 that takes a parameter of
product type with 𝑛 components and the
𝑛 components, define a function curry that
applied to 𝐹 produces a function G such that
𝐺 x1 ... xn = F (x1, ... , xn)
• 𝑛 should be fixed (e.g., 𝑛=3)
• For instance
▪ curry (fn (x,y,z)=>x*y*z) 1 2 3 = 6 
*)


fun curry F= fn x => fn y => fn z => F(x,y,z);

curry (fn (x,y,z)=>x*y*z) 1 2 3;