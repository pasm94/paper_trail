defmodule PaperTrail.RepoClient do
  @doc """
  Gets the configured repo module or defaults to Repo if none configured
  """
  @repo Application.compile_env(:paper_trail, :repo, Repo)
  @originator Application.compile_env(:paper_trail, :originator, nil)
  @strict_mode Application.compile_env(:paper_trail, :strict_mode, false)
  @item_type Application.compile_env(:paper_trail, :item_type, :integer)
  @originator_type Application.compile_env(:paper_trail, :originator_type, :integer)
  @originator_relationship_opts Application.compile_env(
                                  :paper_trail,
                                  :originator_relationship_options,
                                  []
                                )
  @timestamps_type Application.compile_env(:paper_trail, :timestamps_type, :utc_datetime)
  @origin_read_after_writes Application.compile_env(:paper_trail, :origin_read_after_writes, true)

  def repo, do: @repo
  def originator, do: @originator
  def strict_mode, do: @strict_mode
  def item_type, do: @item_type
  def originator_type, do: @originator_type
  def originator_relationship_opts, do: @originator_relationship_opts
  def timestamps_type, do: @timestamps_type
  def origin_read_after_writes, do: @origin_read_after_writes
end
