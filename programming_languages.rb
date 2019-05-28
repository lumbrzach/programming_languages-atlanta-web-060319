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
    language.map do |lang, info|
      # binding.pry
      #if style == :oo && style == :functional
        #info[:style] = [:oo, :functional]
      if style == :functional
        info[:style] = [:functional]
      else style == :oo
        info[:style] = [:oo]
      end
      languages[:functional][:javascript][:style] = :oo, :functional
      masterhash[lang] = info
      # binding.pry
    end
  end
  # binding.pry
  return masterhash
# binding.pry
end
