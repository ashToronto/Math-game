# define what switching players does

class Turn
  def initialize(users)
    @users = users.shuffle
  end

  def current_player
      @users[0]
  end

  def next
    @users.rotate!
  end
end
