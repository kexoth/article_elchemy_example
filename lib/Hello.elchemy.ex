
# Compiled using Elchemy v0.6.6
defmodule Hello do
  use Elchemy

  
  @moduledoc """
  Example module, It says hello if you ask it nicely
  
  """
  @doc """
  Prints "world!"
  
      iex> import Hello
      iex> hello()
      "world!"

  
  """
  @spec hello() :: String.t
  def hello() do
    "world!"
  end

  @doc """
  Returns the sum of every integer in the function
  
      iex> import Hello
      iex> Hello.sum([1, 2, 3, 4, 5])
      15

      iex> import Hello
      iex> Hello.sum([10])
      10

      iex> import Hello
      iex> Hello.sum([])
      0

  
  """
  @spec sum(list(integer)) :: integer
  curry sum/1
  def sum(list) do
    case list do
      [first | rest] ->
        (first + sum(rest))
      [] ->
        0
    end
  end

end
