class CatCreator < ActiveType::Object
  before_save :perform

  def perform
    @cat = Cat.new(name: "Joe", age:7, color:"Black")
    if @cat.save
      create_kittens
    else
      @cat.errors.full_messages.each { |message| errors[:invoice] << message }
    end
    false
  end

  def create_kittens
    # did not include a name (which is validated), to make the Kitten creation fail
    Kitten.create(age:7, color:"Black", dog_id: Cat.last)
  end
end