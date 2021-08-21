y = fn f ->
  (fn x -> fn m -> f.(x.(x)).(m) end end).(fn x -> fn m -> f.(x.(x)).(m) end end)
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

y.(fact).(10) |> IO.puts()
