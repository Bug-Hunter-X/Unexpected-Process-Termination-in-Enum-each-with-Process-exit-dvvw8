```elixir
list = [1, 2, 3, 4, 5]

Enum.map(list, fn x ->
  if x == 3 do
    {:halt, x} 
  else
    x
  end
end)
|> Enum.each(fn x ->
  if x == :halt do 
    IO.puts("Process stopped at 3")
  else
    IO.puts(x)
  end
end)
```