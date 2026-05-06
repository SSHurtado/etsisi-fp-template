# ETSISI Final Project LaTeX Template

Reusable LaTeX template for students of ETSI de Sistemas Informaticos
(ETSISI), Universidad Politecnica de Madrid, to prepare a Final Project or a similar academic report.

The template is based on `fp.cls` and includes an example `main.tex` showing
how to use the available front matter, tables, figures, wrapped figures,
landscape pages, hyperlinks, inline code styling, bibliography, and class color
palette.

This repository is intended as a starting point. Before submitting your work,
check the current ETSISI, degree, department, and tutor requirements, and adapt
the text, license, cover, and metadata accordingly.

## What Is Included

- `fp.cls`: document class with the ETSISI-oriented visual style.
- `main.tex`: complete example document using the main class features.
- `references.bib`: bibliography file loaded by the class.
- `images/covers/`: placeholder front and back covers.
- `images/licenses/`: Creative Commons license images used by `licensepage`.
- `images/others/`: auxiliary images, such as a repository QR code.
- `images/plots/`: placeholder figures used in the examples.
- `latexmkrc`: local build configuration for LuaLaTeX.

## Project Structure

```text
.
|-- main.tex
|-- fp.cls
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

## Start Using It

1. Create your own copy of this repository.
2. Open `main.tex`.
3. Replace the placeholder title, subtitle, author, tutor, date, abstract, and
   keywords.
4. Replace `images/covers/cover.png` with your final A4 cover.
5. Replace `images/others/codeQR.png` with a QR code for your code repository,
   dataset, demo, or other project material.
6. Add your figures under `images/plots/` or create new image folders.
7. Add your bibliography entries to `references.bib`.
8. Delete the example sections once you no longer need them.

Keep the bibliography file named `references.bib`, because `fp.cls` loads that
file directly.

## Important Metadata

The license page is configured in `main.tex` with:

```tex
\begin{licensepage}{CC-BYSA}
  {YOUR PROJECT TITLE\\[0.5ex]
   A short subtitle that explains the scope of the work.}
  {Your Name}
  {Tutor Name}
  {...}
  {...}
  {Madrid, Month 2026}
\end{licensepage}
```

Available license keys are the filenames in `images/licenses/` without `.png`:

```text
CC-0
CC-BY
CC-BYND
CC-BYNC
CC-BYNCND
CC-BYNCSA
CC-BYSA
```

For example, `\begin{licensepage}{CC-BYSA}` uses
`images/licenses/CC-BYSA.png`.

If your degree is not the one currently written in `fp.cls`, update the fixed
degree text inside the `licensepage` environment before submitting.

## Table and Figure Examples

`main.tex` includes several examples that students can copy and adapt:

- Standard figure with a short list-of-figures caption.
- Subfigure layout for comparing two visuals.
- Wrapped figure beside text.
- Landscape figure for wide visualizations.
- Default class table using `mytable`.
- Compact numeric results table.
- Decision matrix table.
- Milestone/status table.
- Landscape table for wide comparisons.

These examples are meant to demonstrate syntax and style. Replace the sample
data and images with your own project material.

## Compile Locally

Use LuaLaTeX or XeLaTeX. Do not use pdfLaTeX, because `fp.cls` uses
`fontspec` and OpenType fonts.

With `latexmk`:

```sh
latexmk main.tex
```

Manual build sequence:

```sh
lualatex main.tex
biber main
lualatex main.tex
lualatex main.tex
```

If the table of contents, list of figures, list of tables, or bibliography does
not appear correctly on the first build, compile again.

## Use It in Overleaf

Recommended workflow:

1. Download this repository as a `.zip` file from GitHub.
2. In Overleaf, choose **New Project** and then **Upload Project**.
3. Upload the `.zip`; Overleaf keeps the folder structure.
4. Open the Overleaf project menu.
5. Set the compiler to **LuaLaTeX** or **XeLaTeX**.
6. Recompile. Run again if references, lists, or bibliography are still being
   generated.

If your Overleaf account supports GitHub import, you can also choose
**New Project** and **Import from GitHub**, then select your repository.

Useful Overleaf references:

- Uploading a project:
  <https://www.overleaf.com/learn/latex/Kb/Uploading_a_project>
- Changing compiler:
  <https://www.overleaf.com/learn/how-to/Changing_compiler>
- Selecting a TeX Live version and compiler:
  <https://docs.overleaf.com/getting-started/recompiling-your-project/selecting-a-tex-live-version-and-latex-compiler>
- Git integration:
  <https://docs.overleaf.com/integrations-and-add-ons/git-integration-and-github-synchronization/git>

## Publish Your Copy to GitHub

After creating an empty GitHub repository, connect your local copy and push it:

```sh
git remote add origin git@github.com:YOUR-USER/YOUR-REPOSITORY.git
git branch -M main
git push -u origin main
```

Use HTTPS instead of SSH if that is how you authenticate with GitHub:

```sh
git remote add origin https://github.com/YOUR-USER/YOUR-REPOSITORY.git
git branch -M main
git push -u origin main
```

## Submission Checklist

Before submitting your report:

- Replace all placeholder text.
- Replace the sample figures and tables.
- Confirm the author, tutor, degree, school, and date are correct.
- Confirm the selected license is the one you want to use.
- Check that every citation appears in the bibliography.
- Check that every figure and table is referenced in the text.
- Compile from a clean project in Overleaf or locally.
- Review the final PDF page by page.

## Notes for ETSISI Students

- Keep the repository structure simple so Overleaf can compile it reliably.
- Use descriptive filenames for figures and avoid spaces in file names.
- Store source code, datasets, and experiments in a separate repository if they
  are too large or not needed for the PDF build.
- Do not commit generated LaTeX files such as `.aux`, `.bbl`, `.log`, `.toc`,
  `.lof`, `.lot`, or the compiled `.pdf` unless your tutor explicitly asks for
  them.
- Treat this template as a writing aid, not as a substitute for the official
  academic instructions for your degree.
