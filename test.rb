
# Imports the Google Cloud client library

module Test
    def score 
        # Instantiates a client
        require "google/cloud/language"

        language = Google::Cloud::Language.language_service

        # The text to analyze
        text = "testing"

        # Detects the sentiment of the text
        document = { content: text, type: :PLAIN_TEXT }
        response = language.analyze_sentiment document: document

        # Get document sentiment from response
        sentiment = response.document_sentiment

        puts "Text: #{text}"
        puts "Score: #{sentiment.score}, #{sentiment.magnitude}"
    end
end 

score
