# Jan 13, 2022

We have pasted plain text markdown into the "Comment" field on the Frontiers forum.
However, a nicer-to-read rendered version of our responses to your feedback may be viewed at the following url,

<https://github.com/mmore500/frontiers-2021/blob/master/review/editorial-revisions.md#jan-13-2022>

> The two reviewers have endorsed the revised manuscript.
> However, before proposing the manuscript for publication, I would like to ask you to make some minor editorial revisions.
> (1) please check and revise the list of references.
> The style of the references is indeed not uniform (especially for the conferences).

I made a pass to retrieve citation metadata directly from publishers or authors where possible.
I took a look at this [recently published article in Frontiers in Ecology in Evolution](https://doi.org/10.3389/fevo.2021.750779) and changed my reference conventions to match: sentence case for titles and title case for journals or proceedings.

> In addition, several references are incomplete (eg Lalejini and Ofria, 2016; Moreno, 2020; Moreno and Ofria, 2020)

The (Moreno, 2020) and (Moreno and Ofria, 2020) are essentially preprints, hosted on the Open Science Framework with a DOI.
I'm not sure how best to cite them and would appreciate advice.
Here's what I have for bibtex for these citations at the moment,

```bibtex
@misc{Moreno_2020,
  title={Profiling foundations for scalable digital evolution methods},
  author={Moreno, Matthew A},
  year=2020,
  month={Jul},
  publisher={Open Science Framework},
  doi={10.17605/OSF.IO/TCJFY},
  url={https://osf.io/tcjfy}
}

@misc{Moreno_Ofria_2020,
  title={Practical steps toward indefinite scalability: In pursuit of robust computational substrates for open-ended evolution},
  author={Moreno, Matthew A and Ofria, Charles},
  year=2020,
  month={Jun},
  publisher={Open Science Framework},
  doi={10.17605/OSF.IO/53VGH},
  url={https://osf.io/53vgh}
}
```

I would also be fine removing these citations if need be.

> and it appears that some references are not cited in the text (eg Ofria et al., 2019 which is by the way "surprising").

The Empirical C++ library (Ofria et al., 2019) is being cited on line 863.
Could you clarify what you mean by surprising?

References that were not cited in the text likely appeared because they were being used in supplemental material, which compiled in the same LaTeX document.
I added a separate bibliography for the supplement and used the `bibunits` LaTeX package to ensure that references that only appear in the supplement only appear in its bibliography and vice versa.

> Finally, the pagination of the reference (Liard et al., 2018) is wrong (the true pagination is 250-257)

Corrected.

> (2) English is not my mother tongue so I will not be affirmative but some sentences sound strange to my French ears (eg in caption of Fig 1.B : "These four instances can communicate with one another via a cell communicate via intracellular messaging" or the sentence of line 334).

Both of these were typos.
Corrected them.

> (3) I found only two typos in the text:
> - the call to reference Knoll, 2011 (line 143) for which parenthesis are misplaced

Corrected.

> - the second one is fun but it must be corrected (line 376 ;)

I'm not sure what you're referring to.

The lines in question (page 14, with gutter numbers 373 thru 377) read,
> This limitation, which commonly manifests as smaller population sizes than natural populations (Liard et al., 2018), only compounds when the unit of selection shifts to computationally expensive groups of dozens or hundreds of component individuals.
> Ongoing work with DISHITNY is testing approaches to harness increasingly abundant parallel processing power for digital evolution simulation (Moreno et al., 2021).

Could you clarify what the typo is so I can fix it?

For the time being, I made a minor change to read `smaller population sizes than natural populations`

> Best regards,
>
> G. Beslon

Thank you for your careful reading and feedback.

# Jan 21, 2022

We have pasted plain text markdown into the "Comment" field on the Frontiers forum.
However, a nicer-to-read rendered version of our responses to your feedback may be viewed at the following url,

<https://github.com/mmore500/frontiers-2021/blob/master/review/editorial-revisions.md#jan-21-2022>

> Hi Matthew,
>
> Ofria, 2019 is surprising because of its title ("empirical") without further reference.
> At least you'd better give the full title to clarify ("The Empirical C++ library").

Ah, that makes sense.
I have expanded the title as follows.

```bibtex
@misc{charles_ofria_2019_2575607,
  title={Empirical C++ scientific software library for research, education, \& public engagement},
  author={Charles Ofria and Emily Dolson and Alex Lalejini and Jake Fenton and Matthew Andres Moreno and Steven Jorgensen and Robin Miller and Jason Stredwick and Luis Zaman and Jory Schossau and Lauren Gillespie and Nitash C G and Anya Vostinar},
  year=2019,
  month=feb,
  publisher={Zenodo},
  doi={10.5281/zenodo.2575606},
  url={https://doi.org/10.5281/zenodo.2575606}
}
```

> By the way you are right, when I checked references, I did not checked the sup mat.
> However, it's better referencing only those papers that are cited in the main text.
>
> for (Moreno, 2020) and (Moreno and Ofria, 2020) the situation is different.
> It's ok to cite preprints but current reference give no information about that.
> Just give complete information in the reference such that the reader can have all necessary information.

Makes sense!
I figured out how to use the `note` bibtex field to provide a link to these pieces,

```bibtex
@preprint{Moreno_2020,
  title={Profiling foundations for scalable digital evolution methods},
  author={Moreno, Matthew A},
  year=2020,
  month={Jul},
  publisher={Open Science Framework},
  doi={10.17605/OSF.IO/TCJFY},
  url={https://osf.io/tcjfy},
  note={Preprint via Open Science Framework at \url{https://doi.org/10.17605/OSF.IO/TCJFY}.}
}

@preprint{Moreno_Ofria_2020,
  title={Practical steps toward indefinite scalability: In pursuit of robust computational substrates for open-ended evolution},
  author={Moreno, Matthew A and Ofria, Charles},
  year=2020,
  month={Jun},
  publisher={Open Science Framework},
  doi={10.17605/OSF.IO/53VGH},
  url={https://osf.io/53vgh},
  note={Preprint via Open Science Framework at \url{https://doi.org/10.17605/OSF.IO/53VGH}.}
}
```

> I am surprised you missed the typo on line 376 (DISHTINY is not DISHITNY ;)

I am also surprised I didn't see that!
Corrected.
:)

> Best,
>
>G__ll___.
