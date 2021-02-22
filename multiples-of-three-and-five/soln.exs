defmodule ProblemSoln do
  def multiple_of_three_and_five(n) do
    sum = 1..n |> Enum.reduce(0, fn(num, acc) ->
      if rem(num, 3) === 0 && rem(num, 5) === 0 do
        acc + num
      else
        acc
      end
    end)

    sum
  end
end

IO.puts ProblemSoln.multiple_of_three_and_five(1000)
