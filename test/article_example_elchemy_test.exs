defmodule ArticleExampleElchemyTest do
  use ExUnit.Case
  doctest ArticleExampleElchemy

  test "greets the world" do
    assert ArticleExampleElchemy.hello() == :world
  end
end
