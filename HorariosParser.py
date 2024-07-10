import fitz  # PyMuPDF
import pandas as pd
import re

def extract_text_from_pdf(pdf_path):
    doc = fitz.open(pdf_path)
    text = ""
    for page_num in range(len(doc)):
        page = doc.load_page(page_num)
        text += page.get_text()
    return text

def parse_text_to_dataframe(text):
    lines = text.split('\n')
    data = []

    current_period = ""
    current_turma = ""

    for line in lines:
        line = line.strip()
        
        # Check for period headers
        period_match = re.match(r"(\d+º Período)", line)
        if period_match:
            current_period = period_match.group(1)
            continue
        
        # Check for turma headers
        turma_match = re.match(r"T(\d+)", line)
        if turma_match:
            current_turma = turma_match.group(0)
            continue
        
        # Match the schedule entries
        schedule_match = re.match(r"(\d{2}:\d{2})\s*-\s*(\d{2}:\d{2})", line)
        if schedule_match:
            start_time, end_time = schedule_match.groups()
            schedule = f"{start_time}-{end_time}"
            
            # Extract course and instructor info
            course_info = line.split(schedule)[1].strip()
            if '-' in course_info:
                course, instructor = course_info.rsplit('-', 1)
                course = course.strip()
                instructor = instructor.strip()
                data.append([current_period, current_turma, course, instructor, schedule])
                
    # Create DataFrame
    df = pd.DataFrame(data, columns=["Period", "Turma", "Course", "Instructor", "Schedule"])
    return df

def save_to_csv(df, csv_path):
    df.to_csv(csv_path, index=False)

def main(pdf_path, csv_path):
    text = extract_text_from_pdf(pdf_path)
    df = parse_text_to_dataframe(text)
    save_to_csv(df, csv_path)

if __name__ == "__main__":  
    pdf_path = "2024-2-HorárioCC - Horário CE (2).pdf"  # Path to your PDF file
    csv_path = "schedule.csv"  # Desired output CSV file path
    main(pdf_path, csv_path)
