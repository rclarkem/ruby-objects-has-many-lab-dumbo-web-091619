class Author
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def add_post(post)
        post.author = self
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

   def add_post_by_title(arg)
       new_post = Post.new(arg)
       new_post.author = self
   end

   def self.post_count
       Post.all.size
   end
 
end