// Feel free to contribute with any features or components you think are missing.
// Version: v0.0.1

// -- Cover Page --

#let cover(
  title: "",
  degree: "",
  program: "",
  author: "",
) = {
  set document(title: title, author: author)
  set page(
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    numbering: none,
    number-align: center,
  )

  let body-font = "New Computer Modern"
  let sans-font = "New Computer Modern Sans"

  set text(
    font: body-font, 
    size: 12pt, 
    lang: "en"
  )
  
  set par(leading: 1em)

  
  // --- Cover ---
  v(1cm)
  align(center, image("util/logo.png", width: 26%))

  v(5mm)
  align(center, text(font: sans-font, 2em, weight: 700, "Technical University of Munich"))

  v(5mm)
  align(center, text(font: sans-font, 1.5em, weight: 100, "School of Computation, Information and Technology \n -- Informatics --"))
  
  v(15mm)

  align(center, text(font: sans-font, 1.3em, weight: 100, degree + "’s Thesis in " + program))
  v(15mm)
  

  align(center, text(font: sans-font, 2em, weight: 700, title))
  
  v(10mm)
  align(center, text(font: sans-font, 2em, weight: 500, author))
  
  pagebreak()
}


// -- Title Page --

#let titlepage(
  title: "",
  titleGerman: "",
  degree: "",
  program: "",
  supervisor: "",
  advisors: (),
  author: "",
  startDate: none,
  submissionDate: none,
) = {
  set document(title: title, author: author)
  set page(
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    numbering: none,
    number-align: center,
  )

  let body-font = "New Computer Modern"
  let sans-font = "New Computer Modern Sans"

  set text(
    font: body-font, 
    size: 12pt, 
    lang: "en"
  )

  set par(leading: 1em)

  
  // --- Title Page ---
  v(1cm)
  align(center, image("util/logo.png", width: 26%))

  v(5mm)
  align(center, text(font: sans-font, 2em, weight: 700, "Technical University of Munich"))

  v(5mm)
  align(center, text(font: sans-font, 1.5em, weight: 100, "School of Computation, Information and Technology \n -- Informatics --"))
  
  v(15mm)

  align(center, text(font: sans-font, 1.3em, weight: 100, degree + "’s Thesis in " + program))
  v(8mm)
  

  align(center, text(font: sans-font, 2em, weight: 700, title))
  

  align(center, text(font: sans-font, 2em, weight: 500, titleGerman))

  pad(
    top: 3em,
    right: 15%,
    left: 15%,
    grid(
      columns: 2,
      gutter: 1em,
      strong("Author: "), author,
      strong("Supervisor: "), supervisor,
      strong("Advisors: "), advisors.join(", "),
      strong("Start Date: "), startDate,
      strong("Submission Date: "), submissionDate,
    )
  )

  pagebreak()
}


// -- Abstract (German) --
#let abstract_de() = {
  set page(
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    numbering: none,
    number-align: center,
  )

  let body-font = "New Computer Modern"
  let sans-font = "New Computer Modern Sans"

  set text(
    font: body-font, 
    size: 12pt, 
    lang: "en"
  )
  
  set par(leading: 1em)

  
  v(1fr)
  align(center, text(font: body-font, 1em, weight: "semibold", "Zusammenfassung"))
  
  align(
    center, 
    text[
      Note: Insert the German translation of the English abstract here.
    ]
  )
  
  v(1fr)
}


// -- Abstract (English) --
#let abstract_en() = {
  set page(
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    numbering: none,
    number-align: center,
  )

  let body-font = "New Computer Modern"
  let sans-font = "New Computer Modern Sans"

  set text(
    font: body-font, 
    size: 12pt, 
    lang: "en"
  )

  set par(leading: 1em)

  
  v(1fr)
  align(center, text(font: body-font, 1em, weight: "semibold", "Abstract"))
  
  text[
    Note:
    1. *paragraph:* What is the motivation of your thesis? Why is it interesting from a scientific point of view? Which main problem do you like to solve?
    2. *paragraph:* What is the purpose of the document? What is the main content, the main contribution?
    3. *paragraph:* What is your methodology? How do you proceed?
  ]
  
  v(1fr)
}


// -- Acknowledgements --
#let acknowledgement() = {
  set page(
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    numbering: none,
    number-align: center,
  )

  let body-font = "New Computer Modern"
  let sans-font = "New Computer Modern Sans"

  set text(
    font: body-font, 
    size: 12pt, 
    lang: "en"
  )

  set par(leading: 1em)

  
  align(left, text(font: sans-font, 2em, weight: 700,"Acknowledgements"))
  v(15mm)
}


// -- Disclaimer --
#let disclaimer(
  title: "",
  degree: "",
  author: "",
  submissionDate: none,
) = {
  set document(title: title, author: author)  
  set page(
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    numbering: none,
    number-align: center,
  )

  let body-font = "New Computer Modern"
  let sans-font = "New Computer Modern Sans"

  set text(
    font: body-font, 
    size: 12pt, 
    lang: "en"
  )

  set par(leading: 1em)

  pagebreak()
  
  v(75%)
  text("I confirm that this " + degree + "’s thesis is my own work and I have documented all sources and material used.")

  v(15mm)
  grid(
      columns: 2,
      gutter: 1fr,
      "Munich, " + submissionDate, author
  )

  pagebreak()
  pagebreak()
}
