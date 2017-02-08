<TeXmacs|1.99.5>

<style|source>

<\body>
  <\active*>
    <\active*>
      <\src-title>
        <src-style-file|Znote|0.1>
      </src-title>
    </active*>
  </active*>

  <use-package|std|std-latex|env-base|env-math|env-flush-math|env-float|section-base>

  <\active*>
    <\src-comment>
      Page Layout
    </src-comment>
  </active*>

  <assign|page-type|a4>

  <assign|page-medium|paper>

  \;

  <assign|tex-voffset|<macro|-20mm>>

  <assign|tex-text-height|<macro|<minus|297mm|12mm>>>

  <assign|tex-odd-side-margin|-18mm>

  <assign|tex-even-side-margin|-10mm>

  <assign|tex-text-width|<macro|<minus|210mm|24mm>>>

  \;

  <assign|tex-top-margin|-10mm>

  <assign|tex-head-height|10mm>

  <assign|tex-head-sep|3mm>

  \;

  <assign|marginal-note-width|10mm>

  <assign|marginal-note-sep|3mm>

  <\active*>
    <\src-comment>
      Paragraph Layout
    </src-comment>
  </active*>

  <assign|par-first|0mm>

  <assign|par-hyphen|professional>

  \;

  <assign|math-font|math-bonum>

  From: progs/fonts/fonts-truetype.scm & progs/fonts/fonts-math.scm

  <\active*>
    <\src-comment>
      Header
    </src-comment>
  </active*>

  <assign|page-even-header|<underline|P. <page-number><hflush><date>>>

  <assign|page-odd-header|<underline|<date><hflush>P. <page-number>>>

  <\active*>
    <\src-comment>
      Section and their titles
    </src-comment>
  </active*>

  <assign|header-primary|>

  <assign|header-secondary|>

  \;

  <assign|paragraph-display-numbers|<macro|true>>

  <assign|subparagraph-display-numbers|<macro|true>>

  \;

  <assign|part-title|<style-with|src-compact|none|<macro|name|<style-with|src-compact|none|<sectional-normal-bold|<vspace*|1cm><really-huge|<with|color|black|<arg|name>>><vspace|0.5cm>>>>>>

  <assign|chapter-title|<style-with|src-compact|none|<macro|name|<style-with|src-compact|none|<sectional-normal-bold|<vspace*|1cm><huge|<with|color|black|Chapter.<arg|name>>><vspace|0.5cm>>>>>>

  <assign|section-title|<style-with|src-compact|none|<macro|name|<style-with|src-compact|none|<sectional-normal-bold|<vspace*|0.8cm><very-large|<with|color|dark
  brown|<arg|name>>><vspace|0.4cm>>>>>>

  <assign|subsection-title|<style-with|src-compact|none|<macro|name|<style-with|src-compact|none|<sectional-normal-bold|<vspace*|0.7cm><very-large|<with|color|dark
  brown|<arg|name>>><vspace|0.4cm>>>>>>

  <assign|subsubsection-title|<style-with|src-compact|none|<macro|name|<style-with|src-compact|none|<sectional-normal-bold|<vspace*|0.6cm><very-large|<with|color|dark
  brown|<arg|name>>><vspace|0.3cm>>>>>>

  <assign|paragraph-title|<style-with|src-compact|none|<macro|name|<style-with|src-compact|none|<sectional-normal-bold|<vspace*|0.4cm><compound|large|<with|color|dark
  orange|<arg|name>>><vspace|0.2cm>>>>>>

  <assign|subparagraph-title|<style-with|src-compact|none|<macro|name|<style-with|src-compact|none|<sectional-normal-bold|<vspace*|0.3cm><compound|large|<with|color|dark
  orange|<arg|name>>><vspace|0.1cm>>>>>>
</body>

<initial|<\collection>
</collection>>