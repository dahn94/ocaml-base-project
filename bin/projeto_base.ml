open Math_utils

let () =
  let result = add 5 3 in
  let product = multiply 5 4 in
  Printf.printf "5 + 3 = %d\n" result;
  Printf.printf "5 * 3 = %d\n" product;
  
  if is_even result then
    Printf.printf "%d is even!\n" result
  else
    Printf.printf "%d is odd!\n" result
