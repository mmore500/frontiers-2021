
## Q1 Please summarize the main findings of the study.

> Reviewer 2 | 03 Sep 2021 | 22:38
>
> The study concerns the evolution of multicellular digital organisms.
> Each cell consists of a computer program that acquires resources, communicates with other cells and change its state according to an evolutionary scheme.
> Groups of such cells form a multicellular individual (and groups of multicellular individuals are also considered).
> Group formation is rewarded when groups have an intermediate size and a circular shape, and groups can age - which facilitates turnover.
> However, there is no predefined group-level explicit coordination of group-replication strategies.
> This has to evolve, and the plethora of possible rules are such that its evolution is quite open-ended.
> They report a number of case studies on developmental and reproductive patterns observed in preliminary runs of their model.
These case studies highlight the striking similarity between digital evolution > and empirical ("biological") multicellularity.

## Q2 Please highlight the limitations and strengths.

> Reviewer 2 | 03 Sep 2021 | 22:38
>
> The strength of this study lies, to me, in showing:
> 1. the diversity of possible evolutionary outcomes a complex model can achieve
> 2. that these outcomes are evolved in a non pre-determined (open ended) manner - i.e. cells must evolve the program which specifies both their own and group behaviour
> 3. that these outcomes bear a clear resemblance to those observed in biological systems.
>
> The main weaknesses are:
> 1. They do not explain in depth how this information evolves (no evolutionary dynamics - only the final results)
> 2. They do not explain "how" information encoded by individual cells generates the organism-level features they report.
> 3. The main text and the captions of their figures should give more detail about the figures.

## Q3 Please comment on the methods, results and data interpretation. If there are any objective errors, or if the conclusions are not supported, you should detail your concerns.

> Reviewer 2 | 03 Sep 2021 | 22:38
>
> The method is an extension of a series of models developed by the group over the course of many years.
> I think the method is sound, though very A-Life oriented.
>Their conclusions are supported by their results.
>
> The occasional methodological awkwardness that comes with modelling biological cells as abstract computer programs is more than offset by the resemblance of their results to biological systems.

## Q4 Check List

> Reviewer 2 | 03 Sep 2021 | 22:38
>
> Is the English language of sufficient quality?
> - Yes
>
> Is the quality of the figures and tables satisfactory?
> - No
>
> Does the reference list cover the relevant literature adequately and in an unbiased manner?
> - Yes
>
> Are the statistical methods valid and correctly applied? (e.g. sample size, choice of test)
> - Yes
>
> Are the methods sufficiently documented to allow replication studies?
> - No
>
> Are the data underlying the study available in either the article, supplement, or deposited in a repository? (Sequence/expression data, protein/molecule characterizations, annotations, and taxonomy data are required to be deposited in public repositories prior to publication)
> - Not Applicable
>
> Does the study adhere to ethical standards including ethics committee approval and consent procedure?
> - Not Applicable
>
> Have standard biosecurity and institutional safety procedures been adhered to?
> - Not Applicable

# Q5 Please provide your detailed review report to the editor and authors (including any comments on the Q4 Check List):

> Reviewer 2 | 03 Sep 2021 | 22:38#1
>
> My major point for revision, and what I think is the main weakness of the paper, is that the authors do not explain "how" information encoded by individual cells generates the organism-level features they report.
> They only shows that each feature out-competes a corresponding knockout.
> I think the paper would be much richer if this was added.
>
> My second major point is that I could not always understand what exactly is shown in the figures.
> I think that adding more explanation in the text and in the caption will improve readability.
> Lastly, although the authors do not provide enough information to reproduce the entire methodology, they do provide the link to run one's own simulations and, following the links, the source code.
> I think this suffices.
>
> ### Detailed comments:
>
> line 64: *cells

[Fixed](https://github.com/mmore500/frontiers-2021/commit/4e5de1afebe5f6b8bb6933c8eff0357907d85148).

> 74: part *of* their

[Fixed](https://github.com/mmore500/frontiers-2021/commit/4e5de1afebe5f6b8bb6933c8eff0357907d85148).

> 84-87: Why/how are these case studies chosen?
> Are these e.g. the "best-cases", do these cases examplify the breadth of possible evolutionary outcomes?
>
> 94: What does a new-born cell inherit from its parent?
>
> 97: Is this an explict modelling choice? Could you please motivate it?
> I understand that physical realism is not the point here, it would just be useful to briefly explain why the circular layout is selected for.
> After all, resource aquisition through surface (on a 2D space that would be the perimeter) should increase with a concave layout.
>
> 99: Could you summarise how cells cooperate in the main text?
>
> 138-141: I am not sure of the relevance of this comparison, given that this is a biology journal.
> Perhaps expanding on the multicellularity-eusociality nested transition would be more appropriate.
>
> 145: What is the intended here with "implicit selection" pressure? Group aging and selection on group size and circular layout seems quite explicit group-level selection pressures.
>
> 146: *driven

[Fixed](https://github.com/mmore500/frontiers-2021/commit/4e5de1afebe5f6b8bb6933c8eff0357907d85148).

> 151-155: Are all these modules always active? Why are these particular modules chosen (is there a criterion)?
>
> 174: *the

[Fixed](https://github.com/mmore500/frontiers-2021/commit/4e5de1afebe5f6b8bb6933c8eff0357907d85148).

> 196-202: Could you summarise "how" resource sharing between kins evolves?
> Do they share information about "with whom" they are cooperating?
>
> 204-213: I cannot see how I should infer the different life-histories from the figures.
> Please expand the caption or the main text to clearly explain what is represented by the different parts of the figure.
> This is a recurring problem - I think the text would be much more accessible if the figures were better described.
>
> 218: The "burst" life cycle is referred to here as described above - but this is the first time this term is mentioned.
> What does it refer to?
>
> 226: What is the point of a p-value here?
> What would be the null model?
>
> Fig 3: Please clarify what different colors represent.
> Also, the terminology is inconsistent: what do "Endogenous daughter groups" mean?
>
> Fig 5: I cannot see white borders
>
> 306: transitions *in* individuality

[Fixed](https://github.com/mmore500/frontiers-2021/commit/4e5de1afebe5f6b8bb6933c8eff0357907d85148).

> 332: Could you please quantify how many multicellular organisms are typically alive at any point (after evolution)?
> This is important because a higher-level individuality also entails competition (and thus evolution) at the higher level.
> If the number is very small, then it is difficult to envision how competition between groups can overcome drift.
>
> ### Supplementary material:
>
> Line 519-520: twice the same text

[Fixed](https://github.com/mmore500/frontiers-2021/commit/4e5de1afebe5f6b8bb6933c8eff0357907d85148).

> 689: ...took place *on*

[Fixed](https://github.com/mmore500/frontiers-2021/commit/4e5de1afebe5f6b8bb6933c8eff0357907d85148).

> 710-711: The system just recovered the L0 situation, though with an L1 set-up. Why do the authors think this is surprising?
