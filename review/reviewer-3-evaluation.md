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

We reinstated several important methodological details that you had noted back into the main text, detailed above.
Our motivation in keeping some methodological details in the supplement was to try to present a more intuition-driven (rather than implementation-driven) understanding of our experimental protocol to a more biology-oriented audience.

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

We have made a pass to improve detail in captions for all figures in the main text:
* [Figure 1](https://github.com/mmore500/frontiers-2021/commit/f63adc0bb88b9820dd4704839cc49c1950f67313)
* [Figure 2](https://github.com/mmore500/frontiers-2021/commit/f39a7f6f3c758d39cafc99ed437073fd63fb5f15)
* [Figure 3](https://github.com/mmore500/frontiers-2021/commit/16012e3a4d949ac239056e56c165f48d5624ad16)
* [Figure 4](https://github.com/mmore500/frontiers-2021/commit/bce8fdc5c9d455b92860fd60b136bdd8bf8dd338)
* [Figure 5](https://github.com/mmore500/frontiers-2021/commit/80b9862235d5a606ee7e7cfd9094c859ff49f4db)
* [Figure 6](https://github.com/mmore500/frontiers-2021/commit/318c26b84e5663281b3db0e69886d5908db29086)
* [Figure 7](https://github.com/mmore500/frontiers-2021/commit/b8a214b4a1989fea29b8de96476ec620d4e9a1e2)

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

Clarified.

```diff
--- a/tex/body/introduction.tex
+++ b/tex/body/introduction.tex
 In this work we extend DISHTINY to incorporate a more open-ended event-driven genetic programming representation called SignalGP, which was designed to facilitate dynamic interactions among agents and between agents and their environment \citep{lalejini2018evolving}.
-As expected, we see a far more diverse set of behaviors and strategies arise.
+As expected, with the addition of cell controllers capable of computation we see a far more diverse set of behaviors and strategies arise.

 Here, we perform case studies to characterize notable multicellular phenotypes that evolved via this more dynamic genetic programming underpinning.
```

> ### Methods:
> - A description of the experimental protocol is missing.
> - Figure 1: The figure caption is not complete (what are A and B panels?).
> Also, in my opinion very hard to grasp for non-initated readers.
> Maybe a more conceptual figure showing how cells interact and communicate would be better.

We added some clarifying detail to the Figure 1 caption.

```diff
--- a/fig/signalgp-dishtinygp.tex
+++ b/fig/signalgp-dishtinygp.tex
@@ -9,8 +9,15 @@
 \begin{minipage}{\textwidth}
 \includegraphics[width=\linewidth]{img/signalgp-cartoon}
 {\textbf{(A)}
-A cartoon overview of a single SignalGP instance.
-SignalGP program modules execute pseudo-concurrently in response to tagged signals, which can originate internally, from the environment, or from other agents.
+Overview of a single SignalGP instance.
+SignalGP program modules contain ordered sets of instructions that activate and execute independently in response to tagged signals.
+Above, these modules are shown as rectangular lists with bitstring tags protruding from the SignalGP instance.
+These signals can originate from any of three sources:
+\begin{enumerate}
+  \item internally from execution of ``Signal'' instructions within a program's modules,
+  \item from the outside environment,
+  \item or from other agents executing ``Message'' instructions.
+\end{enumerate}
 }
 % \label{fig:signalgp-cartoon}
 \end{minipage}
@@ -24,12 +31,13 @@ SignalGP program modules execute pseudo-concurrently in response to tagged signa
 % \begin{minipage}{\textwidth}
 \includegraphics[width=0.8\linewidth]{img/dishtinygp-cartoon}\\
 {\textbf{(B)}
-A cartoon overview of how individual SignalGP instances are organized into DISHTINY cells.
-% Each cell contains four independent SignalGP instances.
-% The same genetic program is mirrored across all four SignalGP instances, but each instance executes independently.
-Within each DISHTINY cell, each of four independent instances senses environmental state, receives intercellular messages, and determines cell behavior with respect to a single cardinal direction.
-All four instances sense non-directional environmental cues and non-directional actions may be taken by any instance.
-Instances within a cell communicate via intracellular messaging.
+How individual SignalGP instances are organized into DISHTINY cells.
+Above, DISHTINY cells are depicted as gray squares.
+Each DISHTINY cell is controlled by independent execution of the cell's genetic program on four distinct SignalGP instances, depicted as colored circles.
+Each of four independent instances manages cell behavior with respect to a single cardinal direction: sensing environmental state, receiving intercellular messages, and determining cell actions.
+Above, the special role of each instance is depicted as a reciporical arrow to the neighboring instance in the neighboring cell.
+(All four instances sense non-directional environmental cues and non-directional actions may be taken by any instance.)
+These four instances can communicate with one another via a cell communicate via intracellular messaging, indicated above by smaller reciprocal arrows among instances within a cell.
 }
 % \label{fig:dishtinygp-cartoon}
 % \end{minipage}
@@ -38,7 +46,8 @@ Instances within a cell communicate via intracellular messaging.
 \end{minipage}

 \caption{
-Schematic illustrations of how individual SignalGP instances function and how individual SignalGP instances are organized into DISHTINY cells.
+Schematic illustrations of how an individual SignalGP instance functions and how SignalGP instances control DISHTINY cells.
+Execution of cells' genetic programs on SignalGP instances controls cell behavior in our model.
 Subfigure \textbf{(A)} provided courtesy Alexander Lalejini.
 }
```

> - L95: How has the decay rate value been chosen?

Clarified.
```diff
--- a/tex/body/methods.tex
+++ b/tex/body/methods.tex
@@ -9,7 +9,7 @@ We will first describe the environment and hereditary grouping system cells evol

 Cells occupy individual tiles on a 60-by-60 toroidal grid.
 Over discrete time steps (``updates''), cells can collect a resource.
-Collected resource decays at a rate of 0.1\% per update, incentivizing its quick use.
+Collected resource decays at a rate of 0.1\% per update, incentivizing its quick use but gradual enough so as to not prevent the most naive cells from eventually accumulating enough resource to reproduce.
 Once sufficient resource accrues, cells may pay one unit of resource to place a daughter cell on an adjoining tile of the toroidal grid (i.e., reproduce), replacing any existing cell already there.
```

> - L97: Is the circular mid-size optimal layout hardcoded, or is it an emergent property of the system?

The mid-size is hardcoded (and can be adjusted by tweaking parameters).
We clarified that advantage enjoyed under circular layouts was an arbitrary effect of the implementation we used to detect group size.

```diff
--- a/tex/body/methods.tex
+++ b/tex/body/methods.tex

 Cells accrue resource via a cooperative resource-collection process.
-Cooperating in medium-sized groups (on the order of 100 cells) with a roughly circular layout accelerates per-cell resource collection rate.
-Unicellular, too-small, too-large, or irregularly-shaped groups collect resource at a lesser per-cell rate.
+Cooperating in medium-sized groups (on the order of 100 cells) accelerates per-cell resource collection rate.
+Unicellular, too-small, or too-large groups collect resource at a lesser per-cell rate.
+As an arbitrary side effect of the distributed simulation algorithm employed to instantiate the cooperative resource distribution process, groups with a roughly circular layout collect resource faster than irregularly-shaped groups.

 Cells may grow a cooperative resource-collecting group through cell proliferation.
 ```

> - L120: Please better explain L0 and L1 (it was unclear for me if L0 was embedded in L1 or the opposite, I got an answer only in Figure 2 caption).

Clarified.

```diff
--- a/tex/body/methods.tex
+++ b/tex/body/methods.tex
 We refer to each independent hereditary grouping system as a ``level.''
 The hierarchical extension allows two levels of hereditary grouping, identified here as L0 and L1.
+L0 instantiates smaller, inner grouping embedded inside of a L1 grouping.
 Without the hierarchical extension, only L0 is present.
```

> - L145: Please detail implicit selective pressures

We realize that our use of terminology may have caused a misunderstanding.
That clause lapses into a traditionally "genetic programming" perspective where any scheme where reproductive success is not exclusively determined by a experimenter-defined "fitness function" is considered implicit.
We agree that the terminology is out of place for the intended audience and provide a clarification.

```diff
--- a/tex/body/methods.tex
+++ b/tex/body/methods.tex
 \subsection{Cell-Level Organisms}

-Our experiments use cell-level digital organisms controlled by genetic programs subject to mutations and implicit selective pressures.
+Our experiments use cell-level digital organisms controlled by genetic programs subject to mutations and selective pressures that stem from local competition for limited space.

 We employ the SignalGP event-driven genetic programming representation.
```

> - L156-163: Too technical for non-initiated readers, I think it should be in appendix.

Pared back detail and referred reader to supplement.

```diff
--- a/tex/body/methods.tex
+++ b/tex/body/methods.tex
 Modules can also include general purpose computational elements like conditionals and loops, which allows cells to evolve sophisticated behaviors conditioned on current (and even previous) local conditions.
 A simple ``regulatory'' system provides special CPU instructions that dynamically adjust which modules are activated by particular signals.
-
-Previous work evolving digital organisms in grid-based problem domains has relied on a single computational agent that designates a direction to act in via an explicit cardinal ``facing'' \citep{goldsby2014evolutionary, goldsby2018serendipitous, grabowski2010early, biswas2014causes, lalejini2018evolving}.
-Here, we introduce novel methodology to facilitate the evolution of directionally-symmetric phenotypes.
-In this work, each cell instantiates four copies of the SignalGP hardware: one facing each cardinal direction.
-These hardware instances all execute the same SignalGP program and may coordinate via internal signals, but are otherwise decoupled.
+In our simulation, directionality of some inputs and outputs must be accounted for (e.g., specifying \textit{which} neighbor to share resource with).
+To accomplish this, we provide each cell an independent SignalGP hardware instance to manage inputs and outputs with respect to each specific cell neighbor.
+So there are four hardware sets per cell, one for each cardinal direction.
+\footnote{
+This approach differs from previous work evolving digital organisms in grid-based problem domains \citep{goldsby2014evolutionary, goldsby2018serendipitous, grabowski2010early, biswas2014causes, lalejini2018evolving}; see Supplemental Section \ref{sup:cell_level_organisms} for further detail.
+}
 Figure \ref{fig:signalgp-dishtinygp}\textbf{(B)} overviews the configuration of the four SignalGP instances that constitute a single cell.
```

> ### Results:
> - L170: Are subgroups equivalent to cell differentiation?

Clarified.

```diff
--- a/tex/body/methods.tex
+++ b/tex/body/methods.tex
 To broaden our exploration of possible evolved multicellular behaviors in this system, we surveyed several evolutionary conditions.

-In one manipulation, we explored the effect of structuring hereditary groups, such that parent cells can choose to keep offspring in their same sub-group, in just the same full group, or expel them entirely to start a new group.
-Cells can independently mediate their behavior based on the level of the group with which they are interacting.
+In one manipulation, we explored the effect of enabling hierarchical structure within hereditary groups, such that parent cells can choose to keep offspring in their same sub-group, in just the same full group, or expel them entirely to start a new group.
+Cells can sense and react to the level of hereditary ID commonality shared with each neighbor.
+This manipulation presents opportunity for hierarchical individuality or for a mechanism to mediate differentiation within a multicell, but does not enforce it.

 In a second manipulation, we explored the importance of explicitly selecting for medium-sized groups (as had been needed to maximize resource collection) by removing this incentive.
```
> - L186-195: How many iterations or generations did you run to get the result?

We added better detail about iterations to the methods.
We have also clarified in the section of the results you commented on.

```diff
--- a/tex/body/results.tex
+++ b/tex/body/results.tex
@@ -6,7 +6,7 @@ In DISHTINY, cell reproduction inherently destroys an immediate neighbor cell.
 As such, we would expect somatic growth to occur primarily at group peripheries in a higher-level individual.
 Supplementary Figure \ref{fig:reproduction_surrounded} compares cellular reproduction rates between the interior and exterior of apex-level hereditary groups.
 For all treatments, phenotypes with depressed interior cellular reproduction rates dominated across replicates (non-overlapping 95\% CI).
-All four treatment conditions appear to select for some level of reproductive cooperation among cells.
+By update 262,144 (about 1,000 cellular generations; see Supplementary Table \ref{tab:systematics}), all four treatment conditions appear to select for some level of reproductive cooperation among cells.

 Across replicate evolutionary runs in all four treatments, we also found that resource was transferred among registered kin at a significantly higher mean rate than to unrelated neighbors (non-overlapping 95\% CI).
```

> - L218: Unclear which case you are speaking about.

We meant to refer to Figure 2, so we changed the text to make this explicit.
We also reworked the sentence for better clarity.

```diff
--- a/tex/body/results.tex
+++ b/tex/body/results.tex

-In the strain exhibiting the ``burst'' lifecycle shown above, we wondered how localization and timing of the propagule origination was determined.
+We wondered how the strain exhibiting the ``burst'' lifecycle in Figure \ref{fig:lifecycle}\textbf{(D)} determined when and where to originate its propagules.
 To assess whether gene regulation instructions played a role in this process, we prepared two knockout strains.
```

> - Figure 3: The figure is difficult to read (black borders and yellow arrows are not visible).

TODO

> - L232: Does it mean that there is no adaptive messaging in all the other replicates (if I understand, there are 40*4 in all)?

Due to computational limitations, we didn't screen all strains for adaptive messaging.
Instead, we manually reviewed videos of cell messaging behavior then selected a few that looked interesting for further analysis.
Messaging in several other strains wasn't adaptive and messaging in these two were.

It seems likely to us that the large majority of evolved strains did not evolve adaptive messaging.
However, we did not quantify this formally.

Based on the other reviewer's comments, we added some language clarifying how we chose case studies.

```diff
--- a/tex/body/introduction.tex
+++ b/tex/body/introduction.tex
 In this work we extend DISHTINY to incorporate a more open-ended event-driven genetic programming representation called SignalGP, which was designed to facilitate dynamic interactions among agents and between agents and their environment \citep{lalejini2018evolving}.
 As expected, we see a far more diverse set of behaviors and strategies arise.
-Here, we report case studies of notable multicellular phenotypes that evolved via this more dynamic genetic programming underpinning.
-We see these anecdotal characterizations as a precursory step toward hypothesis-driven work contributing to open questions about fraternal transitions in individuality.
+
+Here, we perform case studies to characterize notable multicellular phenotypes that evolved via this more dynamic genetic programming underpinning.
+Each case study strain was chosen by screening the entire set of replicate evolutionary runs for evidence of a particular trait and then hand selecting the most promising strain(s) for further investigation.
+Our goal is to explore a breadth of possible evolutionary outcomes under the DISHTINY framework.
+We see this as a precursory step toward hypothesis-driven work contributing to open questions about fraternal transitions in individuality.
```

Based on your comment, we added a further clarification.

```diff
--- a/tex/body/introduction.tex
+++ b/tex/body/introduction.tex
 Here, we perform case studies to characterize notable multicellular phenotypes that evolved via this more dynamic genetic programming underpinning.
-Each case study strain was chosen by screening the entire set of replicate evolutionary runs for evidence of a particular trait and then hand selecting the most promising strain(s) for further investigation.
+Each case study strain was chosen by screening the entire set of replicate evolutionary runs for signs of a trait of interest and then hand selecting the most promising strain(s) for further investigation.
+Case studies presented therefore represent an anecdotal sampling, rather than an exhaustive summary, with respect to each trait of interest.
 Our goal is to explore a breadth of possible evolutionary outcomes under the DISHTINY framework.
 We see this as a precursory step toward hypothesis-driven work contributing to open questions about fraternal transitions in individuality.
```

> - L266: What are these single-file strings? (should be in appendix)

We realized that "file" and "string" both have unwanted double connotations with respect to computing and simulation.
We have corrected our text to use the term "one-cell-wide strands."

> - The section (3.5) must be rewritten more clearly, and the figure 6 should be better presented.

Rewritten.

```diff
-One of the more striking examples of genetically encoded hereditary group patterning, in which L0 hereditary groups arranged as elongated, one-cell-wide strands, arose in a Nested-Even treatment replicate.
-Figure \ref{fig:ko-morphology}\textbf{(A)} provides a snapshot of this strain's hereditary group morphology.
+Figure \ref{fig:ko-morphology}\textbf{(A)} shows one of the more striking examples of genetically encoded hereditary group patterning we observed.
+In this strain, which arose in a Nested-Even treatment replicate, L0 hereditary groups arrange as elongated, one-cell-wide strands.
+
 Knocking out intracell messaging disrupts the stringy arrangement of L0 hereditary groups groups, shown in Figure \ref{fig:ko-morphology}\textbf{(B)}.
 Figure \ref{fig:ko-morphology}\textbf{(C)} compares the distribution of cells' L0 same-hereditary-group neighbor counts for L1 groups of nine or more cells.
-Wild-type cells are significantly less likely to have three or four L0 same-hereditary-group neighbors, as we would expect of one-cell-wide strands (non-overlapping 95\% CI).
-However, we also observed that wild-type L0 hereditary groups also had significantly fewer cells than the knockout strain
+Compared to the knockout variant, many fewer wild-type cells are have three or four L0 same-hereditary-group neighbors, consistent with the one-cell-wide strands (non-overlapping 95\% CI).
+However, we also observed that wild-type L0 hereditary groups were overall smaller than the knockout strain
 (WT: mean $2.1$, S.D. $1.5$; messaging knockout: mean $4.3$, S.D. 5.1; $p < 0.001$; bootstrap test).

-To determine whether morphological patterning beyond smaller group size contributed to observed differences in neighbor count, we compared a dimensionless shape factor describing group stringiness (perimeter divided by the square root of area) between the wild type and messaging knockout strains.
+So, we set out to determine determine whether smaller L0 group size alone was sufficient to explain these observed differences in neighbor count.
+We compared a dimensionless shape factor describing group stringiness (perimeter divided by the square root of area) between the wild type and messaging knockout strains.
 Between L0 group size four (the smallest size stringiness can emerge at on a grid) and L0 group size six (the largest size we had sufficient replicate wild type observations for), wild type exhibited significantly greater stringiness
 (4: $p < 0.01$, bootstrap test; 5: $p < 0.01$, bootstrap test; 6: non-overlapping 95\% CI).
+This confirms that more sophisticated patterning beyond just smaller L0 group size is at play to create the observed one-cell-wide L0 strand morphology.

-However, competition experiments between the wild type and knockout strain failed to establish a fitness differential ($6/20$).
+Competition experiments failed to show a fitness effect of this strain's morphological patterning.
+The wild type strain won competitions about as often as the knockout strain ($6/20$).
 Thus, it seems this trait emerged either by drift, as the genetic background of a selective sweep, or was advantageous against a divergent competitor earlier in evolutionary history.
```

> - Figure 6: two terms introduced in the figure 6C (P/sqrt(A)) but not defined in the caption nor in the main text.

Clarified.

```diff
diff --git a/fig/ko-morphology.tex b/fig/ko-morphology.tex
index be67b78..374fc28 100644
--- a/fig/ko-morphology.tex
+++ b/fig/ko-morphology.tex
 Subfigures \textbf{(C)} and \textbf{(D)} quantify the morphological effect of the intracellular-messaging knockout.
+In the formula for Shape Factor given in Subfigure \textbf{(C)}, $P$ refers to group perimeter and $A$ refers to group area.
 Error bars indicate 95\% confidence.
```

> ### Discussion:
> - L307 "unlike previous work"; Please provide references.

We made changes to explicitly specify that we mean to refer to Heather Goldsby's work.

> - L309: Differenciation should be evoked in the Methods when L0/L1 groups are described.

Added.

```diff
--- a/tex/body/methods.tex
+++ b/tex/body/methods.tex
 Successive fraternal transitions in natural history --- for example, to multicellularity and then to eusociality \citep{smith1997major} --- underscores the constructive power of evolution to harness emergent structures as building blocks for further novelty.
+Such substructure can also provide scaffolding for differentiation and division of labor within an organism \citep{wilson1984relation}.
 To explore these dynamics, in some experimental conditions we incorporated a hierarchical extension to the hereditary grouping scheme described above.

```

> - L324-337: This part of the discussion is oriented towards technical and modeling considerations and limitations.
> In my opinion, it should focus more on evolutionary theory, and the limitations and potential improvements of the conceptual model.

TODO
