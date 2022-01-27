class Tokenizer
    TOKEN_SCANNERS = [
        SimpleScanner, # Recognizes simple one-char tokens like `_` and `*`
        TextScanner # Recognizes everything but a simple token
    ].freeze

    def tokenize(plain_markdown)
        tokens_array = tokens_as_array(plain_markdown)
        TokenList.new(tokens_array)
    end

    private

    def tokens_as_array(plain_markdown)
        if plain_markdown.nil? || plain_markdown == ''
            [Token.end_of_file]
        else
            token = scan_one_token(plain_markdown)
            [token] + tokens_as_array(plain_markdown[token.length..-1])
        end
    end

    def scan_one_token(plain_markdown)
        TOKEN_SCANNERS.each do |scanner|
            token = scanner.from_string(plain_markdown)
            return token unless token.null?
        end
        raise "The Scanners could not match the given input: #{plain_markdown}"
    end
end