(* type自定义类型 *)
type color = Red | Blue | Green | Yellow;;
let colorList = [Red; Blue;];;

(* 可以携带“类型数据” *)
type colour =
  | Red
  | Blue
  | Green
  | RGB of int * int * int;;
let colourList = [Red; Blue; Green; RGB (30, 155, 154)];;
let rgb = RGB (30, 155, 154);;
let getGOfRGB rgb = match rgb with
  | RGB (r, g, b) -> g
  | _ -> 0;;
let g = getGOfRGB rgb;;

(* 多态和递归类型 *)
(* 二叉树 *)
type 'a tree =
  | Leaf
  | Node of 'a tree * 'a * 'a tree;;

(* 使用模式匹配对树进行解构计算 *)
let rec total t = 
  match t with
  | Leaf -> 0
  | Node (l, x, r) -> total l + x + total r;;

let rec flip t =
  match t with
  | Leaf -> Leaf
  | Node (l, x, r) -> Node (flip r, x, flip l);;