defmodule Discussion.TopicController do 
	use Discussion.Web, :controller

	def new(conn, params) do 
		IO.puts "++++"
		IO.inspect conn
		IO.puts "++++"
		IO.inspect params
	end 
end 