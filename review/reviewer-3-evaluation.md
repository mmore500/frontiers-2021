Thank you for your detailed review and feedback, which has been greatly helpful in improving the quality of our manuscript.

We have pasted plain text markdown into the "response to comment fields" on the Frontiers forum.
However, a nicer-to-read rendered version of our responses to your feedback may be viewed at the following url,

https://github.com/mmore500/frontiers-2021/blob/master/review/reviewer-3-evaluation.md

We are taking advantage of the git version control system to track and report changes we make in response to your comments.

In some of our responses, we include "diffs" that show the exact changes we made.
Here is an example diff showing a line "deleted text" being replaced by "inserted text."
Note the leading "-" in front of deleted text and the leading "+" in front of inserted text.

```diff
--- a/source.tex
+++ b/source.tex
@@ -1,3 +1,3 @@
 unchanged text
-deleted text
+inserted text
 more unchanged text
```

These diffs are syntax highlighted for easy skimmability on the rendered version of our notes linked above.
We also provide some links so that diffs may be viewed directly on GitHub.

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

We are planning a full rework of the introduction, discussion, and conclusion to better serve non-Alife audiences.
This will require several draft exchanges between the co-authors, so we will finalize those changes after returning these comments to you.

> Moreover, the manuscript lacks a description of the experimental protocol in the main text, which is almost entirely relegated to the appendix, making the reading difficult as it is necessary to dig into the supplementary material to get basic information such as the grid size, the number of simulated iterations, the number of replicates, etc.

We reinstalled several details into the methods section we had omitted for brevity.

```diff
--- a/tex/body/methods.tex
+++ b/tex/body/methods.tex
@@ -7,11 +7,12 @@ We will first describe the environment and hereditary grouping system cells evol

 \subsection{Cells and Hereditary Groups}

-Cells occupy individual tiles on a toroidal grid.
+Cells occupy individual tiles on a 60-by-60 toroidal grid.
 Over discrete time steps (``updates''), cells can collect a resource.
 Collected resource decays at a rate of 0.1\% per update, incentivizing its quick use.
 Once sufficient resource accrues, cells may pay one unit of resource to place a daughter cell on an adjoining tile of the toroidal grid (i.e., reproduce), replacing any existing cell already there.
 Daughter cells inherit their parent's genetic program, except any novel mutations that may arise.
+We used standard SignalGP mutation parameters from \citep{lalejini2018evolving}, but only applied mutations 1\% of daughter cells at birth.
 Daughter cells may also inherit hereditary group ID, introduced and discussed below.

 Cells accrue resource via a cooperative resource-collection process.
@@ -75,10 +76,12 @@ Our experiments use cell-level digital organisms controlled by genetic programs
 We employ the SignalGP event-driven genetic programming representation.
 As sketched in Figure \ref{fig:signalgp-dishtinygp}\textbf{(A)}, this representation is specially designed to express function-like modules of code in response to internal signals or external stimuli.
 This process can be considered somewhat akin to gene expression.
+In our experiments, virtual CPUs can execute responses to up to 24 signals at once, with any further signals usurping the longest-running signal handlers.
 The event-driven framework facilitates the evolution of dynamic interactions between digital organisms and their environment (including other organisms) \citep{lalejini2018evolving}.

 Special module components allow evolving programs to sense and interact with their environment, through mechanisms including resource sharing, hereditary group sensing, apoptosis, cell reproduction, and arbitrary cell-cell messaging.
 Modules can also include general purpose computational elements like conditionals and loops, which allows cells to evolve sophisticated behaviors conditioned on current (and even previous) local conditions.
+A simple ``regulatory'' system provides special CPU instructions that dynamically adjust which modules are activated by particular signals.

 Previous work evolving digital organisms in grid-based problem domains has relied on a single computational agent that designates a direction to act in via an explicit cardinal ``facing'' \citep{goldsby2014evolutionary, goldsby2018serendipitous, grabowski2010early, biswas2014causes, lalejini2018evolving}.
 Here, we introduce novel methodology to facilitate the evolution of directionally-symmetric phenotypes.
@@ -106,4 +109,11 @@ We combined these two manipulations to yield four surveyed conditions:
 \item ``Nested-Wave'': Two hierarchically-nested hereditary group levels (nested) with group-mediated resource collection (wave). In-browser simulation: \url{https://hopth.ru/l}.
 \end{enumerate}

-Supplementary Section \ref{sup:treatments} provides full details of surveyed evolutionary conditions.
+Supplementary Section \ref{sup:treatments} provides full details for each of the four surveyed evolutionary conditions.
+
+For each condition, we simulated 40 replicate populations for up to
+1,048,576 ($2^{20}$) updates.
+During this time, on the order of 4,000 cellular generations and 500 apex-level group generations elapsed in runs.
+(Full details appear in Supplementary Table \ref{sup:systematics}.)
+Due to variability in simulation speed, four replicates only completed 262,144 updates.
+All analyses involving inter-replicate comparisons were therefore performed at this earlier time point.
```

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

TODO

> Also, I have concerns about some concepts the authors should discuss more rigorously in the manuscript:
> - Digital evolution should be defined in a few words,

TODO

> - The concept of open-endedness (which is not obvious at all for readers outside the Artificial Life community) is brought in the Introduction with no real definition, and then not re-assessed in the Discussion.
> Open-endedness is a debated concept; the authors should introduce it more rigorously, or remove it entirely from the manuscript.

TODO

> - I also would have been happy to read more about the concept of emergence. It could also be debated here as hereditary groups are explicitly encoded in the model, and (if I understand well from Supp. mat. L432-434) as cells can communicate some signals only with their own hereditary group.
> It deserves a few more words in the main text.

TODO

## Q4 Check List

> Reviewer 3 | 01 Nov 2021 | 11:51
>
> Is the English language of sufficient quality?
> - Yes
>
> Is the quality of the figures and tables satisfactory?
> - No

TODO

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

[Fixed some typos](https://github.com/mmore500/frontiers-2021/commit/4e5de1afebe5f6b8bb6933c8eff0357907d85148).

> ### Introduction:
> - L26-32: I would first present the two concepts, and then precise what is the focus on.

TODO

> - L33-39: This part lacks some details and examples about what is a major transition.

TODO

> - L39: Digital evolution should be defined.

TODO

> - L83: Why "as expected"? (maybe explain in a few words).

TODO

> ### Methods:
> - A description of the experimental protocol is missing.
> - Figure 1: The figure caption is not complete (what are A and B panels?).
> Also, in my opinion very hard to grasp for non-initated readers.
> Maybe a more conceptual figure showing how cells interact and communicate would be better.

TODO

> - L95: How has the decay rate value been chosen?

TODO

> - L97: Is the circular mid-size optimal layout hardcoded, or is it an emergent property of the system?

TODO

> - L120: Please better explain L0 and L1 (it was unclear for me if L0 was embedded in L1 or the opposite, I got an answer only in Figure 2 caption).

TODO

> - L145: Please detail implicit selective pressures

TODO

> - L156-163: Too technical for non-initiated readers, I think it should be in appendix.

TODO

> ### Results:
> - L170: Are subgroups equivalent to cell differentiation?

TODO

> - L186-195: How many iterations or generations did you run to get the result?

TODO

> - L218: Unclear which case you are speaking about.

TODO

> - Figure 3: The figure is difficult to read (black borders and yellow arrows are not visible).

TODO

> - L232: Does it mean that there is no adaptive messaging in all the other replicates (if I understand, there are 40*4 in all)?

TODO

> - L266: What are these single-file strings? (should be in appendix)

TODO

> - The section (3.5) must be rewritten more clearly, and the figure 6 should be better presented.

TODO

> - Figure 6: two terms introduced in the figure 6C (P/sqrt(A)) but not defined in the caption nor in the main text.

TODO

> ### Discussion:
> - L307 "unlike previous work"; Please provide references.

TODO

> - L309: Differenciation should be evoked in the Methods when L0/L1 groups are described.

TODO

> - L324-337: This part of the discussion is oriented towards technical and modeling considerations and limitations.
> In my opinion, it should focus more on evolutionary theory, and the limitations and potential improvements of the conceptual model.

TODO
