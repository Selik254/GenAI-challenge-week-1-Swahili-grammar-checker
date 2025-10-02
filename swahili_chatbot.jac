import from byllm.llm { Model }

glob llm = Model(model_name = "gemini/gemini-2.0-flash");

#*
Correct the grammar of the input Swahili text while preserving the original meaning
input and output should be in swahili
*#

def correct_swahili_grammar(text:str) -> str byllm();

with entry {
  print("Welcome to the Swahili Grammar Corrector Chatbot!");
  print("Enter swahili text to correct, or 'quit' to exit");

  while True {
    text = input(">");
    if text == 'quit' {
      break;
    }
    corrected = correct_swahili_grammar(text);
    print("Corrected:" + corrected);
  }
  print("Goodbye!");
}