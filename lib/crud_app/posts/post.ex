defmodule CrudApp.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset
  use Arc.Ecto.Schema

  schema "posts" do
    field :description, :string
    field :image, CrudApp.ImageUploader.Type
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :image, :description])
    |> cast_attachments(attrs, [:image])
    |> validate_required([:title, :image, :description])
  end
end
