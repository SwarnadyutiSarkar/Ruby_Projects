class Language
  attr_accessor :name, :level

  def initialize(name, level)
    @name = name
    @level = level
  end

  def to_s
    "#{@name}: #{@level}"
  end
end

class LanguageLearningApp
  def initialize
    @languages = []
  end

  def add_language(name, level)
    language = Language.new(name, level)
    @languages << language
    puts "Language #{name} has been added to your profile with level #{level}."
  end

  def update_language_level(name, new_level)
    language = @languages.find { |language| language.name == name }
    if language
      language.level = new_level
      puts "Level for #{name} has been updated to #{new_level}."
    else
      puts "#{name} is not found in your profile."
    end
  end

  def view_languages
    if @languages.empty?
      puts "You haven't added any languages yet."
    else
      puts "Your Language Profile:"
      @languages.each do |language|
        puts language
      end
    end
  end
end

# Example usage
language_app = LanguageLearningApp.new

language_app.add_language("Spanish", "Intermediate")
language_app.add_language("French", "Beginner")

language_app.update_language_level("Spanish", "Advanced")
language_app.update_language_level("German", "Intermediate")

language_app.view_languages
