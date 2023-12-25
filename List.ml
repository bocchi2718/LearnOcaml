(* 列表有一个头部和一个尾部组成 *)
1 :: [2; 3];;
[1] @ [2; 3];;

(* 计算列表的长度 *)
let rec length l =
  match l with
  | [] -> 0
  | _ :: t -> 1 + length t;;

(* 实现向后插入 *)
let rec append l a =
  match l with
  | [] -> a
  | h :: t -> h :: append t a;;

(* 实现map *)
let rec map f l =
  match l with
  | [] -> []
  | h :: t -> f h :: map f t;;

(* ocaml天然支持函数柯里化 *)
let add a b = a + b;;
add;;
let odd = add 6;;
odd 7;;