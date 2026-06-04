import { openai } from "@ai-sdk/openai"
import { generateText } from "ai"
import SYSTEM_PROMPT from "./prompts/research.txt"

const main = async () => {
  const topic = "The future of AI in healthcare"

  const res = await generateText({
    model: openai("gpt-4o-mini"),
    system: SYSTEM_PROMPT,
    messages: [
      {
        role: "user",
        content: `Write a blog post about: "${topic}"`,
      },
    ],
  })

  console.log(res.text)
}

main()
