## Q1 Please summarize the main findings of the study.

> Reviewer 3 | 01 Nov 2021 | 11:51
>
> In this article, the authors investigate the ability of their model to simulate a major transition in silico by studying the emergence of multicellular phenotypes.
> By using an individual-based modeling approach known as digital evolution (i.e. the evolution of genetically encoded computer programs), they run simulations in a spatialized environment (2D toroidal grid) with resource influx and diffusion. In this simulation setting, each cell (which occupies a single spot on the grid) processes information based on computer instructions, is able to consume resource, sense its environment and neighboring cells, communicate with them, and takes complex decisions such that producing somatic tissue or descendants, or trigger apoptosis.
> Cells are attributed unique hereditary group tags, and are able to sense neighboring cells hereditary group, allowing for the evolution of kin cooperation and multicellular behaviors.
>
> By exploring different scenarii, the authors describe various complex behaviors that emerged in the simulations (evolution of multicellular lifecycles, adaptive cell-to-cell communication, multicellular morphology and apoptosis).
>
> Doing so, the authors demonstrate the ability of their model to generate complex multicellular evolutive strategies, and the usefulness of complex individual-based simulations to tackle the modeling of major evolutionary transitions.

## Q2 Please highlight the limitations and strengths.

> Reviewer 3 | 01 Nov 2021 | 11:51
>
> I enjoyed reading this manuscript, which tackles an important question in evolutionary biology (major evolutionary transitions and more specifically the emergence of multicellular units of selection).
> Numerical simulations are an important tool to explore this question and this work brings valuable results in this field where modeling approaches are still scarce.
>
> According to me, the main strength of this work is indeed the usage of complex individual-based numerical simulations (called here digital evolution) to tackle such a challenging modeling question and offer original insights.
>
> I have no major objections on the general approach used and the results.
> However, I have concerns about how the model and the results are presented and discussed.
> It sounds like the paper is intended for a very targeted audience (the Artificial Life community).
> In its current form, it relies more on field-specific and technical considerations than biological considerations.
> For example, the SignalGP model is abruptly brought, as well as some concepts such as open-endedness.
> In my opinion, it may challenge non-initiated readers, while it brings results that may be of interest for a wider audience, outside of the modeling community.
>
> Moreover, the manuscript lacks a description of the experimental protocol in the main text, which is almost entirely relegated to the appendix, making the reading difficult as it is necessary to dig into the supplementary material to get basic information such as the grid size, the number of simulated iterations, the number of replicates, etc.
>
> As a conclusion, I think that the modeling approach, the analyses and the results presented by the authors make a nice contribution, and as such would deserve to be presented in order to reach a maximum of readers.
> I thus suggest to the authors to re-organize the manuscript to make it more accessible.
> In particular, the model and the results should be understandable without detailed knowledge of digital evolution modeling, with more focus on the theoretical and biological insights (as done for example by Wilke et al 2001; <https://doi.org/10.1038/35085569>).
> I think it is possible to do so without running any new experiment, just by re-equilibrating the content and vocabulary of the manuscript.

## Q3 Please comment on the methods, results and data interpretation. If there are any objective errors, or if the conclusions are not supported, you should detail your concerns.

> Reviewer 3 | 01 Nov 2021 | 11:51
>
> I have no major concerns regarding the modeling approach the results and the analyses, which (as mentioned above) are an important way to explore theoretical concepts in evolutionary biology.
> I also appreciated to be able to see live simulations if needed, through the numerous available links in the Results section.
>
> As discussed above, a description of the experimental protocol is missing in the main text, making it necessary to dig into the appendix to find some essential information.
>
> Also, I have concerns about some concepts the authors should discuss more rigorously in the manuscript:
> - Digital evolution should be defined in a few words,
> - The concept of open-endedness (which is not obvious at all for readers outside the Artificial Life community) is brought in the Introduction with no real definition, and then not re-assessed in the Discussion.
> Open-endedness is a debated concept; the authors should introduce it more rigorously, or remove it entirely from the manuscript.
> - I also would have been happy to read more about the concept of emergence. It could also be debated here as hereditary groups are explicitly encoded in the model, and (if I understand well from Supp. mat. L432-434) as cells can communicate some signals only with their own hereditary group.
> - It deserves a few more words in the main text.

## Q4 Check List

> Reviewer 3 | 01 Nov 2021 | 11:51
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
> - Yes
>
> Are the data underlying the study available in either the article, supplement, or deposited in a repository? (Sequence/expression data, protein/molecule characterizations, annotations, and taxonomy data are required to be deposited in public repositories prior to publication)
> - Yes
>
> Does the study adhere to ethical standards including ethics committee approval and consent procedure?
> - Not Applicable
>
> Have standard biosecurity and institutional safety procedures been adhered to?
> - Not Applicable

## Q5 Please provide your detailed review report to the editor and authors (including any comments on the Q4 Check List):

> Reviewer 3 | 01 Nov 2021 | 11:51
>
> I am listing here all my minor comments:
>
> ### General:
> - There are a few typos here and there.
>
> ### Introduction:
> - L26-32: I would first present the two concepts, and then precise what is the focus on.
> - L33-39: This part lacks some details and examples about what is a major transition.
> - L39: Digital evolution should be defined.
> - L83: Why "as expected"? (maybe explain in a few words).
>
> ### Methods:
> - A description of the experimental protocol is missing.
> - Figure 1: The figure caption is not complete (what are A and B panels?).
> Also, in my opinion very hard to grasp for non-initated readers.
> Maybe a more conceptual figure showing how cells interact and communicate would be better.
> - L95: How has the decay rate value been chosen?
> - L97: Is the circular mid-size optimal layout hardcoded, or is it an emergent property of the system?
> - L120: Please better explain L0 and L1 (it was unclear for me if L0 was embedded in L1 or the opposite, I got an answer only in Figure 2 caption).
> - L145: Please detail implicit selective pressures
> - L156-163: Too technical for non-initiated readers, I think it should be in appendix.
>
> ### Results:
> - L170: Are subgroups equivalent to cell differentiation?
> - L186-195: How many iterations or generations did you run to get the result?
> - L218: Unclear which case you are speaking about.
> - Figure 3: The figure is difficult to read (black borders and yellow arrows are not visible).
> - L232: Does it mean that there is no adaptive messaging in all the other replicates (if I understand, there are 40*4 in all)?
> - L266: What are these single-file strings? (should be in appendix)
> - The section (3.5) must be rewritten more clearly, and the figure 6 should be better presented.
> - Figure 6: two terms introduced in the figure 6C (P/sqrt(A)) but not defined in the caption nor in the main text.
>
> ### Discussion:
> - L307 "unlike previous work"; Please provide references.
> - L309: Differenciation should be evoked in the Methods when L0/L1 groups are described.
> - L324-337: This part of the discussion is oriented towards technical and modeling considerations and limitations.
> In my opinion, it should focus more on evolutionary theory, and the limitations and potential improvements of the conceptual model.