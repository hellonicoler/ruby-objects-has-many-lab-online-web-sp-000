class Author
  attr_accessor :title, :name

  @@post_count = 1

  def initialize(title)
    @title = title
    @posts = []
    @name= name
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count +=1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    post.author = self
    @@post_count +=1
  end

  def posts
    @posts
  end

  def self.post_count
    @@post_count
  end
end