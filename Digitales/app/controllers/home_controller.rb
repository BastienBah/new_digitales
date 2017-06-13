class HomeController < ApplicationController

  def index
    @portrait = Portrait.find_by_sql("SELECT * FROM portraits ORDER BY created_at ")
    @indefinitions = Portrait.find_by_sql("SELECT * FROM indefinitions ORDER BY created_at ")
  end

end
