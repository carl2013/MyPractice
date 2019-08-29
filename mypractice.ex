defmodule MyPractice do
	def double_function(x) do
		2 * x
	end

  def make_stream1 do
    [1, 2, 3]
    |> Stream.map(&double_function/1)
  end

	def do_stream1 do
		Enum.to_list(make_stream1())
	end

	def make_stream2 do
    [1, 2, 3]
    |> Stream.map(fn x -> 2 * x end)
  end

	def do_stream2 do
		Enum.to_list(make_stream2())
	end

end
