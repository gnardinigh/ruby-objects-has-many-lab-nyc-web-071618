class Author
  attr_accessor :name, :posts

  @@count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@count +=1
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    new_post.author = self
    @posts << new_post
    @@count +=1
  end

  def self.post_count
    @@count
  end

end
