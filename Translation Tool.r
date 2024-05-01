class TranslationTool
  def initialize
    @translations = {}
  end

  def add_translation(source_language, target_language, source_text, translated_text)
    key = "#{source_language}->#{target_language}"
    @translations[key] ||= {}
    @translations[key][source_text] = translated_text
    puts "Translation added: #{source_text} (#{source_language}) -> #{translated_text} (#{target_language})"
  end

  def translate(source_language, target_language, source_text)
    key = "#{source_language}->#{target_language}"
    if @translations[key] && @translations[key][source_text]
      puts "Translated text: #{@translations[key][source_text]}"
    else
      puts "Translation not found for '#{source_text}' from #{source_language} to #{target_language}."
    end
  end
end

# Example usage
translator = TranslationTool.new

translator.add_translation("English", "French", "Hello", "Bonjour")
translator.add_translation("English", "Spanish", "Hello", "Hola")

translator.translate("English", "French", "Hello")
translator.translate("English", "Spanish", "Hello")
translator.translate("English", "German", "Hello")
