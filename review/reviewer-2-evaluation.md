Thank you for your detailed review and feedback, which has been greatly helpful in improving the quality of our manuscript.

We have pasted plain text markdown into the "response to comment fields" on the Frontiers forum.
However, a nicer-to-read rendered version of our responses to your feedback may be viewed at the following url,

https://github.com/mmore500/frontiers-2021/blob/master/review/reviewer-2-evaluation.md

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

> Reviewer 2 | 03 Sep 2021 | 22:38
>
> The study concerns the evolution of multicellular digital organisms.
> Each cell consists of a computer program that acquires resources, communicates with other cells and change its state according to an evolutionary scheme.
> Groups of such cells form a multicellular individual (and groups of multicellular individuals are also considered).
> Group formation is rewarded when groups have an intermediate size and a circular shape, and groups can age - which facilitates turnover.
> However, there is no predefined group-level explicit coordination of group-replication strategies.
> This has to evolve, and the plethora of possible rules are such that its evolution is quite open-ended.
> They report a number of case studies on developmental and reproductive patterns observed in preliminary runs of their model.
> These case studies highlight the striking similarity between digital evolution and empirical ("biological") multicellularity.

Your comments touch on the major points we hoped to present in our manuscript.
We appreciate your careful attention and copacetic synopsis.


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

This reply is meant in conversation with both points 1 and 2 above.

We agree that evolutionary dynamics and evolutionary histories are crucial, exciting topics with respect to experimental and modeling efforts around multicellularity.
A side effect of our system's degrees of freedom is that tracing out a full account of the mechanisms at play behind a phenotypic feature or tracing a detailed evolutionary history of a feature become much more involved.
However, this is an active topic of [our ongoing work (see, for example, [our workshop paper "Case Study of Novelty, Complexity, and Adaptation in a Multicellular System" for the OEE4 Workshop @ Alife 2021](http://workshops.alife.org/oee4/papers/moreno-oee4-camera-ready.pdf)).

We have added some closing remarks noting the limited scope of the existing work and emphasizing the importance of exploring these dimensions in future work.

```diff
--- a/tex/body/discussion.tex
+++ b/tex/body/discussion.tex
 In future work, we are eager to undertake experiments investigating open questions pertaining to major evolutionary transitions such as the role of pre-existing phenotypic plasticity \citep{clune2007investigating, lalejini2016evolutionary}, pre-existing environmental interactions, pre-existing reproductive division of labor, and how transitions relate to increases in organizational \citep{goldsby2012task}, structural, and functional \citep{goldsby2014evolutionary} complexity.
+Expanding the scope of our existing work to directly study evolutionary dynamics and evolutionary histories will be crucial to such efforts.

 In particular, we plan to investigate mechanisms to evolve greater collective sophistication among agents.
```

> 3. The main text and the captions of their figures should give more detail about the figures.

We have made a pass to improve detail in captions for all figures in the main text:
* [Figure 1](https://github.com/mmore500/frontiers-2021/commit/f63adc0bb88b9820dd4704839cc49c1950f67313)
* [Figure 2](https://github.com/mmore500/frontiers-2021/commit/f39a7f6f3c758d39cafc99ed437073fd63fb5f15)
* [Figure 3](https://github.com/mmore500/frontiers-2021/commit/16012e3a4d949ac239056e56c165f48d5624ad16)
* [Figure 4](https://github.com/mmore500/frontiers-2021/commit/bce8fdc5c9d455b92860fd60b136bdd8bf8dd338)
* [Figure 5](https://github.com/mmore500/frontiers-2021/commit/80b9862235d5a606ee7e7cfd9094c859ff49f4db)
* [Figure 6](https://github.com/mmore500/frontiers-2021/commit/318c26b84e5663281b3db0e69886d5908db29086)
* [Figure 7](https://github.com/mmore500/frontiers-2021/commit/b8a214b4a1989fea29b8de96476ec620d4e9a1e2)

## Q3 Please comment on the methods, results and data interpretation. If there are any objective errors, or if the conclusions are not supported, you should detail your concerns.

> Reviewer 2 | 03 Sep 2021 | 22:38
>
> The method is an extension of a series of models developed by the group over the course of many years.
> I think the method is sound, though very A-Life oriented.
>Their conclusions are supported by their results.

We agree that the manuscript should be adjusted to better cater to a broader audience.
We have kept this objective top of mind while incorporating feedback from you and the other reviewer, and expect that that attention (particularly to figure captions) has translated to improvement on this front.
In addition to other changes, in [commit 2275456](https://github.com/mmore500/frontiers-2021/commit/2275456a3dc16b537e936f523f30780e8198fdde) we specially made several additions and tweaks to better serve non-Alife audiences.
(In particular, incorporating more familiar biological vocabulary).

> The occasional methodological awkwardness that comes with modelling biological cells as abstract computer programs is more than offset by the resemblance of their results to biological systems.

## Q4 Check List

> Reviewer 2 | 03 Sep 2021 | 22:38
>
> Is the English language of sufficient quality?
> - Yes
>
> Is the quality of the figures and tables satisfactory?
> - No

Improvements made to figure captions are noted above.

> Does the reference list cover the relevant literature adequately and in an unbiased manner?
> - Yes
>
> Are the statistical methods valid and correctly applied? (e.g. sample size, choice of test)
> - Yes
>
> Are the methods sufficiently documented to allow replication studies?
> - No

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
+Mutations included whole-function duplication and deletion, bit flips on tags for instructions and functions, instruction and argument substitutions, and slip mutation of instruction sequences.
+We used standard SignalGP mutation parameters from \citep{lalejini2018evolving}, but only applied mutations to 1\% of daughter cells at birth.
 Daughter cells may also inherit hereditary group ID, introduced and discussed below.

 Cells accrue resource via a cooperative resource-collection process.
@@ -75,10 +76,12 @@ Our experiments use cell-level digital organisms controlled by genetic programs
 We employ the SignalGP event-driven genetic programming representation.
 As sketched in Figure \ref{fig:signalgp-dishtinygp}\textbf{(A)}, this representation is specially designed to express function-like modules of code in response to internal signals or external stimuli.
 This process can be considered somewhat akin to gene expression.
+In our experiments, virtual CPUs can execute responses to up to 24 signals at once, with any further signals usurping the longest-running modules.
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
+(Full details appear in Supplementary Table \ref{tab:systematics}.)
+Due to variability in simulation speed, four replicates only completed 262,144 updates.
+All analyses involving inter-replicate comparisons were therefore performed at this earlier time point.
```

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

See above (reply to Q2 points 1 and 2).

> My second major point is that I could not always understand what exactly is shown in the figures.
> I think that adding more explanation in the text and in the caption will improve readability.

Improvements made to figure captions are noted above.

> Lastly, although the authors do not provide enough information to reproduce the entire methodology, they do provide the link to run one's own simulations and, following the links, the source code.
> I think this suffices.

We worked to improve methodological detail, in particular moving key information out of the supplement and into the main text.
Specific changes are noted above.

> ### Detailed comments:
>
> line 64: *cells

[Fixed](https://github.com/mmore500/frontiers-2021/commit/4e5de1afebe5f6b8bb6933c8eff0357907d85148).

> 74: part *of* their

[Fixed](https://github.com/mmore500/frontiers-2021/commit/4e5de1afebe5f6b8bb6933c8eff0357907d85148).

> 84-87: Why/how are these case studies chosen?
> Are these e.g. the "best-cases", do these cases examplify the breadth of possible evolutionary outcomes?

Each case study strain was chosen by screening the entire set of replicate evolutionary runs for signs of the trait under investigation and then manually the most promising strain(s) for further investigation.
Case studies presented therefore represent an anecdotal sampling, rather than an exhaustive summary, with respect to each trait of interest.

We have clarified this in the manuscript.

```diff
--- a/tex/body/introduction.tex
+++ b/tex/body/introduction.tex
 In this work we extend DISHTINY to incorporate a more open-ended event-driven genetic programming representation called SignalGP, which was designed to facilitate dynamic interactions among agents and between agents and their environment \citep{lalejini2018evolving}.
 As expected, we see a far more diverse set of behaviors and strategies arise.
-Here, we report case studies of notable multicellular phenotypes that evolved via this more dynamic genetic programming underpinning.
-We see these anecdotal characterizations as a precursory step toward hypothesis-driven work contributing to open questions about fraternal transitions in individuality.
+
+Here, we perform case studies to characterize notable multicellular phenotypes that evolved via this more dynamic genetic programming underpinning.
+Each case study strain was chosen by screening the entire set of replicate evolutionary runs for signs of the trait under investigation and then manually the most promising strain(s) for further investigation.
+Case studies presented therefore represent an anecdotal sampling, rather than an exhaustive summary, with respect to each trait of interest.
+Our goal is to explore a breadth of possible evolutionary outcomes under the DISHTINY framework.
+We see this as a precursory step toward hypothesis-driven work contributing to open questions about fraternal transitions in individuality.
```

> 94: What does a new-born cell inherit from its parent?

Clarified.

```diff
--- a/tex/body/methods.tex
+++ b/tex/body/methods.tex
 Cells occupy individual tiles on a toroidal grid.
 Over discrete time steps (``updates''), cells can collect a resource.
-Once sufficient resource accrues, cells may pay one unit of resource to place a daughter cell on an adjoining tile of the toroidal grid (i.e., reproduce), replacing any existing cell already there.
 Collected resource decays at a rate of 0.1\% per update, incentivizing its quick use.
+Once sufficient resource accrues, cells may pay one unit of resource to place a daughter cell on an adjoining tile of the toroidal grid (i.e., reproduce), replacing any existing cell already there.
+Daughter cells inherit their parent's genetic program, except any novel mutations that may arise.
+Daughter cells may also inherit hereditary group ID, introduced and discussed below.

 Cells accrue resource via a cooperative resource-collection process.
```

> 97: Is this an explict modelling choice?
> Could you please motivate it?
> I understand that physical realism is not the point here, it would just be useful to briefly explain why the circular layout is selected for.
> After all, resource aquisition through surface (on a 2D space that would be the perimeter) should increase with a concave layout.

The benefit of a circular layout is an arbitrary artifact of the size-sensing algorithm we used.
We have clarified this in the manuscript.

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

> 99: Could you summarise how cells cooperate in the main text?

Added.

```diff
--- a/tex/body/methods.tex
+++ b/tex/body/methods.tex
 As an arbitrary side effect of the simulation algorithm employed to instantiate the cooperative resource distribution process, groups with a roughly circular layout collect resource faster than irregularly-shaped groups.
+Cooperative resource collection unfolds as an entirely passive process on the part of the cells, influenced only by a group's spatial layout.
+Full details on the simulation algorithm that determines cooperative resource collection rates appear in supplementary material.

 Cells may grow a cooperative resource-collecting group through cell proliferation.
```
> 138-141: I am not sure of the relevance of this comparison, given that this is a biology journal.
> Perhaps expanding on the multicellularity-eusociality nested transition would be more appropriate.

We agree and elected to remove the analogy entirely.

```diff
--- a/tex/body/methods.tex
+++ b/tex/body/methods.tex
 In order to enforce hierarchical nesting of hereditary group IDs, daughter cells could not inherit just the L1 hereditary group ID.

-Hierarchically nested hereditary group IDs are analogous to a strict corporate organizational structure: all employees (i.e., cells) are members of one department (i.e., L0 hereditary group) and one corporation (i.e., L1 hereditary group) but no employee can be a member of two departments and no department can be a member of two corporations.
+Hierarchically hereditary group IDs are strictly nested: all cells are members of one L0 hereditary group and L1 hereditary group.
+No cell can be a member of two L0 hereditary groups or two L1 hereditary groups.
+Likewise, no L0 hereditary group can appear within more than one L1 hereditary group.
 Useful as a concrete illustration of this scheme, Figure \ref{fig:ko-morphology}\textbf{(A)} depicts hierarchically-nested hereditary groupings assumed by an evolved strain.
```

> 145: What is the intended here with "implicit selection" pressure?
> Group aging and selection on group size and circular layout seems quite explicit group-level selection pressures.

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

> 146: *driven

[Fixed](https://github.com/mmore500/frontiers-2021/commit/4e5de1afebe5f6b8bb6933c8eff0357907d85148).

> 151-155: Are all these modules always active? Why are these particular modules chosen (is there a criterion)?
>
> 174: *the

[Fixed](https://github.com/mmore500/frontiers-2021/commit/4e5de1afebe5f6b8bb6933c8eff0357907d85148).

> 196-202: Could you summarise "how" resource sharing between kins evolves?
> Do they share information about "with whom" they are cooperating?

We have added some detail here.

```diff
--- a/tex/body/results.tex
+++ b/tex/body/results.tex
 Across replicate evolutionary runs in all four treatments, we also found that resource was transferred among registered kin at a significantly higher mean rate than to unrelated neighbors (non-overlapping 95\% CI).
+Genetic programs controlling cells can sense whether any particular neighbor shares a common hereditary group ID.
+Thus, selective activation of resource sharing behavior to hereditary group members might have evolved, which would provide one possible explanation for this observation.%
+\footnote{%
+Alternately to the same end, resource sharing behavior could be instead suppressed in the opposite case, when a neighbor holds a different hereditary group ID.
+}
+However, cells are also capable of conditioning behavior on whether a particular neighbor is direct kin (i.e., a parent or child).
 To test whether this resource-sharing was solely an artifact of sharing between direct cellular kin, we also assessed mean sharing to registered kin that were not immediate cellular relatives.
```

> 204-213: I cannot see how I should infer the different life-histories from the figures.
> Please expand the caption or the main text to clearly explain what is represented by the different parts of the figure.
> This is a recurring problem - I think the text would be much more accessible if the figures were better described.

Improvements made to figure captions are noted above.

> 218: The "burst" life cycle is referred to here as described above - but this is the first time this term is mentioned.
> What does it refer to?

We meant to refer to Figure 2, so we changed the text to make this explicit.
We also reworked the sentence for better clarity.

```diff
--- a/tex/body/results.tex
+++ b/tex/body/results.tex

-In the strain exhibiting the ``burst'' lifecycle shown above, we wondered how localization and timing of the propagule origination was determined.
+We wondered how the strain exhibiting the ``burst'' lifecycle in Figure \ref{fig:lifecycle}\textbf{(D)} determined when and where to originate its propagules.
 To assess whether gene regulation instructions played a role in this process, we prepared two knockout strains.
```

> 226: What is the point of a p-value here?
> What would be the null model?

We are modeling competitions as individual "coin flips."
So, we performed 20 "coin flips" and are trying to show that it would be very unexpected for the wild type strain to win all 20 if there weren't some effect systematically influencing the outcomes of competitions
The null model would be a binomial distribution with a "fairly" weighted coin (probability of heads 0.5).

To clarify, we changed all references to an "exact test" to a "Binomial test" in [commit 4f24c74](https://github.com/mmore500/frontiers-2021/commit/4f24c74eee0d41e15688e9ab9be5c8bfeaffaf86).
We agree this provide a better, more explicit wording.

> Fig 3: Please clarify what different colors represent.

Clarified.

```diff
--- a/fig/ko-interior_propagule.tex
+++ b/fig/ko-interior_propagule.tex
-Subfigure \textbf{(A)} depicts gene regulation at each of a cell's four directional SignalGP instances using a PCA mapping from regulatory state to three-dimensional RGB coordinates, calculated uniquely for each L1 hereditary group.
-Black borders divide outer registered-kin groups and white borders divide inner registered-kin groups.
+Subfigure \textbf{(A)} compares gene regulation between analyzed strains.
+Group layouts are overlaid via borders between cells.
+Black borders divide L1 groups and white borders divide L0 groups.
+Borders between L1 groups are underlined in red for greater visibility.
+Within these group layouts, regulation state for each cell's four directional SignalGP instances is color coded using a PCA mapping from regulatory state to three-dimensional RGB coordinates.
+(The PCA mapping is calculated uniquely for each L1 hereditary group.)
+Within a L1 hereditary group, color similarity among tile quarters indicates that the corresponding SignalGP instances exhibit similar regulatory state.
+However, the particular hue of a SignalGP instance has no significance.
+In the case of identical regulatory state (here, due to the absence of genetic regulation in a knockout strain) this color coding appears gray.
```

> Also, the terminology is inconsistent: what do "Endogenous daughter groups" mean?

By endogenous daughter groups we meant to refer to the propagule groups that were generated within the parent group's body.
We agree that this is terminology is inconsistent with the rest of the paper and rephrased it to "interior propagules."

```diff
--- a/fig/ko-interior_propagule.tex
+++ b/fig/ko-interior_propagule.tex
 Black borders divide outer registered-kin groups and white borders divide inner registered-kin groups.
-Endogenous daughter groups annotated with yellow arrows.
+Interior propagules annotated with yellow arrows.
 Subfigure \textbf{(B)} compares the mean number of interior propagules observed per L1 hereditary group.
```

> Fig 5: I cannot see white borders

This was an error in the figure caption.

```diff
--- a/fig/ko-stockpiletrigger-sharing.tex
+++ b/fig/ko-stockpiletrigger-sharing.tex
 In the resource stockpile visualization, white represents zero-resource stockpiles, blue represents stockpiles with just under enough resource to reproduce, green represents stockpiles with enough resource to reproduce, and yellow represents more than enough resource to reproduce.
-Black borders divide L1 hereditary groups and white borders divide L0 hereditary groups.
+Black borders divide L1 hereditary groups and dashed gray borders divide L0 hereditary groups.
 View an animation of the wild type strain at \url{https://hopth.ru/s}.
```

> 306: transitions *in* individuality

[Fixed](https://github.com/mmore500/frontiers-2021/commit/4e5de1afebe5f6b8bb6933c8eff0357907d85148).

> 332: Could you please quantify how many multicellular organisms are typically alive at any point (after evolution)?
> This is important because a higher-level individuality also entails competition (and thus evolution) at the higher level.
> If the number is very small, then it is difficult to envision how competition between groups can overcome drift.

We used a grid size of 60x60 for evolutionary runs, which limited the number of cells present in the population to 3600.
A typical apex-level group comprised 80 to 100 cells.
This of course varied run to run, but we estimate a population size of on the order of 30 to 40 "high-level" organisms.

We also used 60x60 grid for competition experiments.
In these competion experiments, we repeatedly observed wildtype strains outcompete variants with traits of interest knocked out.
Because the simulation size was identical between competition and evolutionary runs, sufficient selective pressure seems likely to have been present in the population to overcome drift in selecting for those traits.

Instantiating larger populations with parallel and distributed computing techniques is a key research objective for us.
This will enable exploration of conditions that incorporate even stronger selection pressure and that evaluate even larger amounts of genetic variation.

> ### Supplementary material:
>
> Line 519-520: twice the same text

[Fixed](https://github.com/mmore500/frontiers-2021/commit/4e5de1afebe5f6b8bb6933c8eff0357907d85148).

> 689: ...took place *on*

[Fixed](https://github.com/mmore500/frontiers-2021/commit/4e5de1afebe5f6b8bb6933c8eff0357907d85148).

> 710-711: The system just recovered the L0 situation, though with an L1 set-up.
Why do the authors think this is surprising?

We meant to imply that at face value, the observation of higher mean sharing across L0 group boundaries than within L0 groups was unexpected.
We changed the phrasing to "counterintuitive" as opposed to "surprising" and added more detail.

```diff
--- a/tex/supplement.tex
+++ b/tex/supplement.tex
 This could perhaps be due to an especial selective pressure to convey resource towards the group periphery.

-Surprisingly, in the Nested-Wave treatment resource was shared at a higher mean rate among L1 hereditary groups than L0 groups.
-This observation is likely due to replicates where L1 groups were composed of single-cell L0 groups (where no or very few opportunities for L0 resource sharing occurred).
+In the Nested-Wave treatment resource was shared at a higher mean rate among L1 hereditary groups than L0 groups.
+At face value, this observation appears counterintuitive: why should cells prefer to share with more distant relatives with only one hereditary ID in common as opposed to closer relatives with both hereditary IDs in common?
+However, we believe it likely an artifact of replicates where L1 groups were composed of single-cell L0 groups (where no or very few opportunities for L0 resource sharing occurred).

 Finally, under all treatments resource was transferred to hereditary group comrades at a significantly higher mean rate than to unrelated neighbors (non-overlapping 95\% CI).
```
