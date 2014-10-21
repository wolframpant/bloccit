class FavoriteMailer < ActionMailer::Base
  default from: "llnwlfsn@gmail.com"

  def new_comment(user, post, comment)

    # New Headers
    headers["Message-ID"] = "<comments/#{comment.id}@ellen-bloccit.example>"
    headers["In-Reply_To"] = "<post/#{post.id}@ellen-bloccit.example>"
    headers["Rferences"] = "<post/#{post.id}@ellen-bloccit.example>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end

