from langchain.chains import LLMChain
from langchain.chains.summarize import load_summarize_chain
from langchain.docstore.document import Document
from langchain.llms import VertexAI
from langchain.prompts import PromptTemplate
from langchain.text_splitter import RecursiveCharacterTextSplitter


def get_summarized_text(
    text: str,
    chunk_size: int = 16384,
    temperature: float = 0.25,
    max_output_tokens: int = 2048,
) -> str:
    """
    Summarizes the given text by extracting audio subtitles from a YouTube video.

    Args:
        text (str): The input text to be summarized.
        chunk_size (int, optional): The size of each text chunk for processing. Defaults to 8192.
        temperature (float, optional): The temperature parameter for text generation. Defaults to 0.2.
        max_output_tokens (int, optional): The maximum number of tokens in the generated summary. Defaults to 2048.

    Returns:
        str: The summarized text.
    """
    first_template = """以下の文章はYouTubeの動画から抜き出した音声字幕です。
文章は句読点が欠落していたり、表記揺れがあったりします。
動画を見てない人にもわかりやすく800文字を目安に要約し、結果だけ出力してください。
------
{text}
------
"""
    first_prompt = PromptTemplate(input_variables=["text"], template=first_template)
    subsequent_template = """以下の文章はYouTubeの動画から抜き出した音声字幕です。
文章は句読点が欠落していたり、表記揺れがあったりします。
動画を見てない人にもわかりやすく800文字を目安に要約し、結果だけ出力してください。
------
{existing_answer}
{text}
------
"""
    subsequent_prompt = PromptTemplate(
        input_variables=["existing_answer", "text"], template=subsequent_template
    )
    vertex_ai = VertexAI(
        location="asia-northeast1",
        model_name="text-bison-32k",
        temperature=temperature,
        max_output_tokens=max_output_tokens,
    )
    text_splitter = RecursiveCharacterTextSplitter(
        chunk_size=chunk_size, chunk_overlap=0
    )
    texts = text_splitter.split_text(text)
    print(
        f"{len(text)} chars divided into {len(texts)} chunks by {chunk_size} like: {texts[0][:128]} ..."
    )
    docs = [Document(page_content=text) for text in texts]
    chain = load_summarize_chain(
        vertex_ai,
        chain_type="refine",
        question_prompt=first_prompt,
        refine_prompt=subsequent_prompt,
        verbose=True,
    )
    result = chain.run(docs)
    return result


def get_keywords(
    text: str,
    existing_keywords: list[str] = [],
    temperature: float = 0.0,
    max_output_tokens: int = 256,
) -> list[str]:
    """
    Extracts keywords from the given text using a language model.

    Args:
        text (str): The input text from which keywords will be extracted.
        temperature (float, optional): The temperature parameter for the language model.
            Higher values (e.g., 1.0) result in more random outputs, while lower values (e.g., 0.2)
            make the outputs more focused and deterministic. Defaults to 0.2.
        max_output_tokens (int, optional): The maximum number of tokens in the generated output.
            Defaults to 1024.

    Returns:
        list[str]: A list of extracted keywords.
    """
    prompt_template = """以下の文章から、最大10個のキーワードを抽出し、 `|` で区切って重要度の高い順に出力してください。
------
{text}
------
"""
    prompt = PromptTemplate(input_variables=["text"], template=prompt_template)
    vertex_ai = VertexAI(
        location="asia-northeast1",
        model_name="text-bison-32k",
        temperature=temperature,
        max_output_tokens=max_output_tokens,
    )
    chain = LLMChain(llm=vertex_ai, prompt=prompt, verbose=True)
    result = chain({"text": text})["text"]
    result = [keyword.strip() for keyword in result.split("|")]
    print(f"Existing keywords: {existing_keywords}")
    print(f"Extracted keywords: {result}")
    result = list(
        set([keyword for keyword in result if keyword != ""] + existing_keywords)
    )
    print(f"Keywords: {result}")
    return result
