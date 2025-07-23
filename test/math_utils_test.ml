open Alcotest
open Math_utils

let test_add () =
  check int "same ints" 8 (add 5 3);
  check int "negative" (-2) (add 5 (-7))

let test_multiply () =
  check int "positive" 15 (multiply 5 3);
  check int "by zero" 0 (multiply 5 0)

let test_is_even () =
  check bool "even" true (is_even 4);
  check bool "odd" false (is_even 5)

let () =
  run "MathUtils" [
    ("Addition", [ test_case "Addition" `Quick test_add ]);
    ("Multiplication", [ test_case "Multiplication" `Quick test_multiply ]);
    ("Even Check", [ test_case "Even Check" `Quick test_is_even ]);
  ]