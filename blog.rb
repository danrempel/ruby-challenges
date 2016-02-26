class Blog

  @@all_posts = []
  @@total_posts = 0

  def self.all
    @@all_posts
  end

  def self.add(post)
    @@all_posts << post
    @@total_posts += 1
  end

  def self.publish
    @@all_posts.each do |post|
      puts post.to_s
    end
  end
end

class Post < Blog
  def self.create
    puts "Would you like to create a post? [Y/N]"
    answer = gets.chomp.capitalize
    while answer == 'Y'
      print "Title: "
      title = gets.chomp
      print "Content: "
      content = gets.chomp
      print "Date: "
      date = gets.chomp
      print "Author: "
      author = gets.chomp
      puts "Would you like to create another post? [Y/N]"
      answer = gets.chomp.capitalize
    end
    post = new(title, content, date, author)
    post.save
  end

  def initialize(title, content, date, author)
    @title = title
    @content = content
    @date = date
    @author = author
  end

  def to_s
    "#{@title}\n  #{@content}\n --#{@date} by #{@author}."
  end

  def save
    Post.add(self)
  end
end

Post.create
all_posts = Post.all
Post.publish
