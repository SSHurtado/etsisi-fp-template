# TFG LaTeX Template

This repository is a reusable LaTeX template based on `tfg.cls`. The example
`main.tex` demonstrates the custom front matter, styled contents pages, figures,
subfigures, wrapped figures, landscape visualizations, styled tables, inline
code formatting, color palette, hyperlinks, and bibliography heading.

## Project Structure

```text
.
|-- main.tex
|-- tfg.cls
|-- references.bib
|-- images
|   |-- covers
|   |   |-- cover.png
|   |   `-- backcover.png
|   |-- licenses
|   |   |-- CC-0.png
|   |   |-- CC-BY.png
|   |   |-- CC-BYND.png
|   |   |-- CC-BYNC.png
|   |   |-- CC-BYNCND.png
|   |   |-- CC-BYNCSA.png
|   |   `-- CC-BYSA.png
|   |-- others
|   |   `-- codeQR.png
|   `-- plots
|       |-- demo_chart.png
|       |-- demo_plot_a.png
|       |-- demo_plot_b.png
|       |-- demo_wrap.png
|       `-- landscape_timeline.png
|-- latexmkrc
`-- README.md
```

## Requirements

Compile with LuaLaTeX or XeLaTeX. Do not use pdfLaTeX because `tfg.cls` uses
`fontspec` and OpenType fonts.

The bibliography uses `biblatex`, so the complete build sequence is:

```sh
lualatex main.tex
biber main
lualatex main.tex
lualatex main.tex
```

If you use `latexmk`, run:

```sh
latexmk main.tex
```

## Start a Thesis From This Template

1. Replace the metadata in the `licensepage` block in `main.tex`.
2. Replace `images/covers/cover.png` with your own A4 cover.
3. Replace `images/others/codeQR.png` with a QR code or repository image.
4. Add your figures under `images/plots/` or create new image folders.
5. Add your sources to `references.bib`.
6. Keep the bibliography file named `references.bib`, because `tfg.cls` loads it
   directly.

The license image is selected by the first argument of `licensepage`. For
example, `\begin{licensepage}{CC-BYSA}` uses
`images/licenses/CC-BYSA.png`.

## Overleaf

Recommended path:

1. Download this repository as a `.zip` file from GitHub.
2. In Overleaf, choose **New Project** and then **Upload Project**.
3. Upload the `.zip`; Overleaf preserves folders from the archive.
4. Open the project menu and set the compiler to **LuaLaTeX** or **XeLaTeX**.
5. Recompile. Run again if the table of contents, figure list, table list, or
   bibliography needs another pass.

If your Overleaf account supports GitHub import, you can also choose **New
Project** and **Import from GitHub**, then select the repository.

Useful Overleaf references:

- Uploading a project:
  <https://www.overleaf.com/learn/latex/Kb/Uploading_a_project>
- Changing compiler:
  <https://www.overleaf.com/learn/how-to/Changing_compiler>
- Selecting a TeX Live version and compiler:
  <https://docs.overleaf.com/getting-started/recompiling-your-project/selecting-a-tex-live-version-and-latex-compiler>
- Git integration:
  <https://docs.overleaf.com/integrations-and-add-ons/git-integration-and-github-synchronization/git>

## Publish to GitHub

After creating an empty GitHub repository, connect this local repository and
push it:

```sh
git remote add origin git@github.com:YOUR-USER/tfg-latex-template.git
git branch -M main
git push -u origin main
```

Use HTTPS instead of SSH if that is how you authenticate with GitHub.
