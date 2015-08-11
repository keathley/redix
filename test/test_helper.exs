ExUnit.start()

defmodule Recs.TestHelpers do
  def capture_log(fun) do
    Logger.remove_backend :console
    fun.()
    Logger.add_backend :console, flush: true
  end
end