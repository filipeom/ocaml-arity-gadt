type expr =
  | Int of int
  | Op : 'a op * 'a ar -> expr

and 'a op =
  | Neg : [ `Unary] op
  | Add : [ `Binary] op

and 'a ar =
  | U : expr -> [ `Unary ] ar
  | B : expr * expr -> [ `Binary] ar

let eval_unop (op : [ `Unary ] op) =
  match op with
  | Neg -> assert false

let eval_binop (op : [ `Binary ] op) =
  match op with
  | Add ->  assert false

let () =
  let _ : expr = Op (Add, B (Int 0, Int 1)) in
  ()
