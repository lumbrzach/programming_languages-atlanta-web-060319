require "pry"

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}


def reformat_languages(languages)
  masterhash = {}
  languages.map do |style, language|
    # binding.pry
    language.map do |language, info|
      # binding.pry
      if style == :oo && style == :functional
        info[:style] = [:oo, :functional]
      elsif style == :oo
        info[:style] = [:oo]
      else style == :functional
        info[:style] = [:functional]
      end
      masterhash[language] = info
      # binding.pry
    end
  end
  # binding.pry
  return masterhash
# binding.pry
end
