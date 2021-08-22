y = fn f ->
  fn x -> fn m -> f.(x.(x)).(m) end end
  |> (fn x -> fn m -> f.(x.(x)).(m) end end).()
end

fact = fn f ->
  fn n ->
    if n < 2 do
      n
    else
      f.(n - 1) * n
    end
  end
end

gcd = fn f ->
  fn n ->
    {a, b} = n

    if b == 0 do
      a |> abs()
    else
      f.({b, rem(a, b)})
    end
  end
end

y.(fact).(10) |> IO.puts()
y.(gcd).({182, 52}) |> IO.puts()
