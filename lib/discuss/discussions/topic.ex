defmodule Discuss.Discussions.Topic do
  use Ecto.Schema
  import Ecto.Changeset

  # Tutorial Code
  schema "topics" do 
    field :title, :string
  end

  @doc false
  # \\ %{} sets default for params
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end

  # Generated Code
  # schema "topics" do
  #   field :title, :string

  #   timestamps()
  # end

  # @doc false
  # def changeset(topic, attrs) do
  #   topic
  #   |> cast(attrs, [:title])
  #   |> validate_required([:title])
  # end
end
