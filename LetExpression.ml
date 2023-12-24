(* let表达式 *)
let x = 50;;

(* let是表达式，不是变量赋值 *)
let x = 50 in x * x;;
let x = 50 in
let y = 50 in
  x * y;;

(* let表达式可以定义函数 *)
let square x = x * x;;
(* 多参函数 *)
let ordered a b c = a <= b && b <= c;;
(* 递归函数 *)
let rec fib n = 
  if n < 2 then
    n
  else
    fib (n - 1) + fib (n - 2);;

