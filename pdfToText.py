import fitz  # PyMuPDF

def pdf_to_text(pdf_path, txt_path):
    # Abrir o documento PDF
    pdf_document = fitz.open(pdf_path)
    
    # Abrir um arquivo de texto para escrever
    with open(txt_path, 'w', encoding='utf-8') as txt_file:
        # Percorrer todas as páginas do PDF
        for page_num in range(len(pdf_document)):
            # Obter a página
            page = pdf_document.load_page(page_num)
            # Extrair o texto da página
            text = page.get_text()
            # Escrever o texto no arquivo de texto
            txt_file.write(f"Page {page_num + 1}\n")
            txt_file.write(text)
            txt_file.write("\n" + "="*50 + "\n")
    
    print(f"Texto extraído e salvo em {txt_path}")

# Caminho para o arquivo PDF de entrada
pdf_path = 'Horario.pdf'
# Caminho para o arquivo de texto de saída
txt_path = 'Horario.txt'

# Converter o PDF para texto
pdf_to_text(pdf_path, txt_path)
