ADJECTIVES = %w(quick lazy sleepy ugly).freeze
NOUNS      = %w(fox dog head leg cat tail).freeze
VERBS      = %w(spins bites licks hurdles).freeze
ADVERBS    = %w(easily lazily noisly excitedly).freeze

File.open('madlibs.txt') do |file|
  file.each do |line|
    puts format(line, noun:      NOUNS.sample,
                      verb:      VERBS.sample,
                      adjective: ADJECTIVES.sample,
                      adverb:    ADVERBS.sample)
  end
end

REPLACEMENTS = {
  adjective: %w(quick lazy sleepy ugly),
  noun:      %w(fox dog head leg),
  verb:      %w(jumps lifts bites licks),
  adverb:    %w(easily lazily noisily excitedly),
}

template_text = File.read('madlibs.txt')
mad_text = template_text.gsub(/%{([a-z]*)}/) do |_|
  REPLACEMENTS[$1.to_sym].sample
end
