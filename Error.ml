(* 使用Exception处理异常 *)
exception E;;
exception E2 of string;;

let f a b =
  if b = 0 then raise (E2 "division  by zero") else a / b;;

try f 10 0 with E2 _ -> 0;;

(* 使用返回值处理异常 *)
type 'a option = None | Some of 'a;;
let f2 a b =
  if b = 0 then None else Some (a / b);;

let list_find_opt p l =
  try Some (List.find p l) with
    Not_found -> None;;

let list_find_opt2 p l =
  match List.find p l with
    | v -> Some v
    | exception Not_found -> None;;