(* 模式匹配，通过判断数据内部结构来选择执行分支 *)
let rec fib n = 
  match n with
  | 0 -> 0
  | 1 -> 1
  | 2 -> 2
  | x -> fib ( n - 1) + fib (n - 2);;

(* 可以使用默认匹配 *)
let rec factorial n =
  match n with
  | 0 | 1 -> 1
  | _ -> n * factorial (n - 1);;