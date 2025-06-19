# Vincent Franstyo's Thesis Project Structure

## 📁 Main Directories
```
├── src/                    # All your LaTeX source files
│   ├── thesis.tex         # Main thesis document (START HERE)
│   ├── chapters/ta/       # Your thesis chapters
│   ├── config/            # LaTeX configuration and styling
│   ├── resources/         # Images, diagrams, data
│   └── references.thesis.bib  # Your bibliography
├── output/                # Compiled PDFs appear here
└── build/                 # Temporary build files (ignore this)
```

## 📚 Chapter Organization
Your thesis follows this structure:
- `chapter-1.tex` → Pendahuluan (Introduction)
- `chapter-2.tex` → Studi Literatur (Literature Review) 
- `chapter-3.tex` → Analisis Masalah dan Desain (Analysis & Design)
- `chapter-4.tex` → Implementasi (Implementation)
- `chapter-5.tex` → Evaluasi dan Kesimpulan (Evaluation & Conclusions)

## 🛠️ How to Work with This Project

### Writing Content
1. Edit chapter files in `src/chapters/ta/`
2. Add images to `src/resources/chapter-X/`
3. Add references to `src/references.thesis.bib`

### Building Your Thesis
```bash
make thesis          # Compile thesis
make clean          # Clean temporary files
make format         # Auto-format your LaTeX code
```

### VSCode Integration
- Install "LaTeX Workshop" extension
- Use Ctrl+Alt+V to preview PDF
- Auto-completion and syntax highlighting included

## 🎯 Your Next Steps
1. ✅ Personal info updated
2. ✅ Bibliography created  
3. ⚠️ Update bibliography reference (manual fix needed)
4. 🔄 Start writing Chapter 1 content
5. 🔄 Add your proposal diagrams to resources/
6. 🔄 Test build system

## 📖 LaTeX Basics for Your Project

### Adding Images
```latex
\begin{figure}[htbp]
    \centering
    \includegraphics[width=0.8\textwidth]{resources/chapter-1/qris-stats.png}
    \caption{QRIS Adoption Statistics}
    \label{fig:qris-stats}
\end{figure}
```

### Citing References
```latex
According to \parencite{kim2021donut}, the Donut model...
```

### Cross-References
```latex
As shown in Figure \ref{fig:system-architecture}...
See Chapter \ref{ch:implementation} for details...
```
