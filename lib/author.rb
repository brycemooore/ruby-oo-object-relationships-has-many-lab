class Author

    attr_reader :name

    @@all =[]

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def posts
        Post.all.select{|post|
            post.author == self
        }
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        self.add_post(post)
    end

    def self.all
        @@all
    end

    def self.post_count
        count = 0
        self.all.each{|author|
            count += author.posts.count 
        }
        return count
    end

end