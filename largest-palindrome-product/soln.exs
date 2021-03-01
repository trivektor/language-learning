# https://projecteuler.net/problem=4
defmodule ProblemSoln do
  defp largest_number_with_digits(number_of_digits) do
    1..number_of_digits |> Enum.reduce(0, fn(num, acc) ->
      acc + 9 * :math.pow(10, num - 1)
    end) |> trunc
  end

  def largest_palindrome_product(number_of_digits) do
    largest_num = largest_number_with_digits(number_of_digits)
    largest_product = largest_num |> :math.pow(2) |> trunc

    largest_product..1 |> Enum.find(fn(num) ->
      num_as_string = Integer.to_string(num)

      num_as_string === (num_as_string |> String.reverse())
    end)
  end
end

ProblemSoln.largest_palindrome_product(2) |> IO.puts()
