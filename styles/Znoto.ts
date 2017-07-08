<TeXmacs|1.99.5>

<style|source>

<\body>
  \;

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

  From: progs/fonts/fonts-truetype.scm & progs/fonts/fonts-math.scm

  <\active*>
    <\src-comment>
      Header
    </src-comment>
  </active*>

  <assign|page-even-header|<underline|P. <page-number><hflush>>>

  <assign|page-odd-header|<underline|<hflush>P. <page-number>>>

  <\active*>
    <\src-comment>
      Section and their titles
    </src-comment>
  </active*>

  <assign|header-primary|>

  <assign|header-secondary|>

  \;

  <assign|display-subsection|<macro|head|<arg|head>>>

  <assign|display-subsubsection|<macro|head|<number|<arg|head>|Alpha>.>>

  <assign|paragraph-display-numbers|<macro|true>>

  <assign|display-paragraph|<macro|head|<number|<arg|head>|Roman>.>>

  <assign|subparagraph-display-numbers|<macro|true>>

  <assign|display-subparagraph|<macro|head|<number|<arg|head>|roman>.>>

  \;

  <assign|part-title|<style-with|src-compact|none|<macro|name|<style-with|src-compact|none|<sectional-normal-bold|<vspace*|1cm><really-large|<with|color|black|<arg|name>>><vspace|0.5cm>>>>>>

  <assign|chapter-title|<style-with|src-compact|none|<macro|name|<style-with|src-compact|none|<sectional-normal-bold|<vspace*|0.2cm><really-large|<with|color|black|<with|font-family|ss|<arg|name>>>><vspace|0.1cm>>>>>>

  <assign|section-numbered-title|<\macro|name>
    <\sectional-normal-bold>
      <vspace*|0.2cm>

      <\with|font-family|ss>
        <very-large|<with|color|dark brown|<the-chapter>-<the-section>.<space|2spc><arg|name>>>
      </with>

      <vspace|0.1cm>
    </sectional-normal-bold>

    \;
  </macro>>

  <assign|subsection-numbered-title|<\macro|name>
    <\sectional-normal-bold>
      <vspace*|0.2cm>

      <\with|font-family|ss>
        <very-large|<\with|color|dark brown>
          <the-chapter>-<the-section>-<the-subsection>.<space|2spc><arg|name>
        </with>>
      </with>

      <vspace|0.1cm>
    </sectional-normal-bold>

    \;
  </macro>>

  <assign|subsubsection-title|<style-with|src-compact|none|<macro|name|<style-with|src-compact|none|<sectional-normal-bold|<vspace*|0.2cm><large|<with|color|dark
  brown|<with|font-family|ss|<arg|name>>>><vspace|0.1cm>>>>>>

  <assign|paragraph-title|<style-with|src-compact|none|<macro|name|<style-with|src-compact|none|<sectional-normal-bold|<vspace*|0.2cm><with|color|dark
  orange|<arg|name>><vspace|0.1cm>>>>>>

  <assign|subparagraph-title|<style-with|src-compact|none|<macro|name|<style-with|src-compact|none|<sectional-normal-bold|<vspace*|0.2cm><with|color|dark
  orange|<arg|name>><vspace|0.1cm>>>>>>
</body>

<initial|<\collection>
</collection>>