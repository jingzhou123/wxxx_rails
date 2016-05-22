module CommentsHelper
  def possible_comment_id
    begin
      comment.id
    rescue
      nil 
    end
  end
end
