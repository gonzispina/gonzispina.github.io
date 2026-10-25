#import "@preview/silver-dev-cv:1.0.2": *

// Research-engineering CV. Project metrics refer to the current development
// checkpoint documented in the linked repositories.
#show: cv.with(
  font-type: "PT Serif",
  continue-header: "false",
  name: "Gonzalo Josue Spina",
  address: "Buenos Aires, Argentina",
  lastupdated: "false",
  pagecount: "true",
  date: "2026-10-04",
  contacts: (
    (text: "LinkedIn", link: "https://www.linkedin.com/in/gonzalospina"),
    (text: "GitHub", link: "https://github.com/gonzispina"),
  ),
)
#set document(author: "Gonzalo Josue Spina", title: "Gonzalo Spina - Research Engineering CV")
#set text(size: 10pt)

#section[Profile]
#descript[Software engineer with 10 years of experience building distributed systems, currently working on a large-scale search engine and ML infrastructure at Mercado Libre. Completing a Data Science degree at the University of Buenos Aires; seeking Research Engineer roles in neurotechnology and AI.]

#section[Education]
#education(
  institution: [University of Buenos Aires - Faculty of Exact and Natural Sciences],
  major: [Licenciatura en Ciencia de Datos (Data Science)],
  date: "2021-Present", location: "Argentina",
)
#descript[Two courses remaining; *average grade 8.44/10.*]
#v(3pt)
#oneline-title-item(title: "Machine Learning", content: [Machine learning; deep learning; natural language processing; computational statistics; reinforcement learning.])
#oneline-title-item(title: "Mathematics", content: [Real analysis and measure theory; probability; stochastic calculus / SDEs; optimal control.])
#oneline-title-item(title: "Algorithms & Data Structures", content: [Graph theory; graph traversal (DFS/BFS); dynamic programming; linear programming.])
#oneline-title-item(title: "Neuroscience", content: [Coursework in neural circuits and behavior, including electrophysiology and neurophysiology fundamentals.])
// Confirm the official name of the neural circuits / behavior course.
#section[Experience]
#job(
  position: "Sr. Software Engineer / Tech Lead - Search Infrastructure",
  institution: [Mercado Libre],
  location: "Argentina",
  date: "Jul 2025 - Present",
  description: [
    - Lead engineering initiatives within a five-person team building a distributed search engine serving approximately *600K requests/minute* across Kubernetes clusters.
    - Designed and implemented streaming aggregation components for organic and advertising retrieval, including a component, which filters and combines lexical and semantic advertising candidates. Built priority-aware asynchronous fan-in/fan-out using producer/consumer workers, futures and queues while preserving retrieval precedence and achieving approximately *20 ms p99 request latency in production*.
    - *Built distributed A/B experiment validation across search stages*, counting an experiment as valid only when all participating components apply their assigned variants and satisfy the experiment's conditions.
    - Led offline evaluation of *five embedding models* on a golden dataset, selecting a *4B-parameter Qwen model*. Built ETL pipelines on Vertex AI to re-embed and index catalogs totaling approximately *32 TB* across Brazil, Mexico and Argentina, and process approximately *10M daily catalog mutations*.
    - Led the online A/B rollout of the selected Qwen 4B embedding model for semantic retrieval, including pre-population of hundreds of GB of Cassandra query-embedding cache while maintaining approximately *200 ms p95 semantic retrieval latency*.
  ],
)

#section[Selected Research & Engineering Projects]
#block(breakable: false)[
#job(
  position: "EMG-Based Continuous Movement Decoding",
  institution: [Research engineering project · #link("https://gonzalospina.com/projects/emg-continous-decoding.html")[Project page]], location: "", date: "Jun 2026",
  description: [
    - Built an Arduino-based surface-EMG acquisition setup and collected original forearm EMG and movement data for continuous index-finger decoding.
    - Designed and trained a causal temporal convolutional network (TCN) for online inference, achieving $R^2 = 0.688$ and Pearson correlation $r = 0.830$ across movement tasks.
    - Developed causal signal-processing and temporal-alignment workflows for time-series data used in offline training and online inference.
  ],
)
]
#block(breakable: false)[
#job(
  position: "Score-Based Generative Models & Stochastic Differential Equations",
  institution: [Academic monograph and poster · #link("https://gonzalospina.com/projects/score-based-diffusions.html")[Project page]], location: "", date: "Jun 2026",
  description: [
    - Wrote a monograph and poster on score-based generative models via Itô diffusions, Kolmogorov equations, infinitesimal generators and reverse-time SDEs.
  ],
)
]

#block(breakable: false)[
#job(
  position: "Instruction Tuning of a 7B Language Model",
  institution: [Natural Language Processing course project], location: "", date: "Dec 2025",
  description: [
    - Fine-tuned a Mistral 7B language model with LoRA-based instruction tuning to generate sarcastic responses.
  ],
)
]
#block(breakable: false)[
#job(
  position: "Predictive Modeling of Neural Population Activity",
  institution: [Academic project · #link("https://gonzalospina.com/projects/olfactory-glm.html")[Project page]], location: "", date: "Nov 2025",
  description: [
    - Built Poisson GLMs for mouse stimulus-reward recordings using binary stimulus time series, target-neuron history and population-history covariates; evaluated predictive performance using held-out log-likelihood.
    - Found that stimulus identity improved held-out prediction and that population history added information in specific task conditions; temporal analysis did not establish a causal inhibitory link.
  ],
)
]
#section[Earlier Experience]
#job(
  position: "Sr Software Engineer", institution: [Wagr / Yahoo Sports (#link("https://www.yahooinc.com/press/yahoo-acquires-wagr-unlocking-opportunities-in-social-gaming-for-yahoo-sports")[acquired by Yahoo in 2023])],
  location: "United States (Remote)", date: "2022-2024",
  description: [
    - Built TypeScript/Node.js betting services and an online Bayesian recommender that updated user preferences from new interactions. Explored dynamic odds using linear-to-logistic saturation to model loss exposure.
  ],
)
#job(
  position: "Software Architect / Backend Lead - Founding Engineer", institution: [Sigi],
  location: "Switzerland (Remote)", date: "2020-2022",
  description: [
    - Led three backend engineers in building a mental-health CRM from scratch, coordinating with two frontend teams and integrating calendar and remote-session services.
  ],
)
#job(
  position: "Software Engineer", institution: [Brubank],
  location: "Argentina", date: "2019-2020",
  description: [
    - Owned critical banking systems covering central bank requirements and credit-bureau reporting; implemented critical regulatory changes, including foreign-exchange limits and required customer declarations.
    - Planned and executed the migration from a banking monolith to a distributed, event-driven system on Kubernetes, moving two critical services built with Go, Node.js and Python.
  ],
)

#section[Selected Consulting Work]
#job(
  position: "Applied Analytics & AI Tooling",
  institution: [Marketing agency projects], location: "", date: "",
  description: [
    - Built a Go backend with n8n integrating Google Ads and Meta Ads APIs; computed trends over multiple rolling windows and top-k ad creative rankings, exposed through MCP for daily LLM-assisted campaign analysis.
    - Derived socioeconomic and educational proxies with PCA and built exploratory regional scores using brand penetration, target-age overlap and word-of-mouth assumptions. Findings informed three private health coverage launch proposals, alongside client discussions and the agency's commercial assessment.
  ],
)

#section[Technical Skills]
#oneline-title-item(title: "Languages", content: [Python, Go, C++, SQL])
#oneline-title-item(title: "ML & Statistics", content: [Semantic retrieval, embedding evaluation, instruction tuning, Poisson GLMs, TCNs, PCA, A/B experimentation])
#oneline-title-item(title: "Neural Signals", content: [EMG acquisition, filtering, RMS / envelopes, temporal alignment, neural encoding / decoding])
#oneline-title-item(title: "Systems & Data", content: [Distributed streaming, asynchronous concurrency, ETL, Kubernetes, Docker, Vertex AI, PostgreSQL, Redis, Datadog, MCP, n8n])
// Confirm scientific / ML frameworks before listing PyTorch, scikit-learn, etc.

// Retained project for alternate CV versions:
// #job(
//   position: "Feedforward Neural Network from Scratch in Go",
//   institution: [Independent project], location: "", date: "",
//   description: [
//     - Implemented a feedforward neural network from scratch in Go for MNIST handwritten digit classification.
//     // Reported accuracy: 93%; confirm evaluation split and reproduce before publishing metric.
//   ],
// )
// 
