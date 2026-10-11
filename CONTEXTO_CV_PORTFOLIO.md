# Continuación: CV y portfolio de Gonzalo Spina

## Objetivo y preferencias
Transición de Senior Software Engineer a Research Engineer en neurotech / AI; aproximadamente diez años de ingeniería. CV en inglés, Typst silver-dev-cv 1.0.2, dos páginas, letra 10pt. Fuente: Gonzalo_Spina_CV.typ; PDF adjunto. Mantener detalle de Mercado Libre, Selected Consulting Work debajo de Earlier Experience. No inventar métricas, formación completada, fechas ni experiencia en producción. Conversar en español. No publicar repositorios ni datos privados sin autorización.

## Próximo trabajo
1. Pedir rutas o URLs de repositorios. Inspeccionar código, README, dependencias y resultados existentes antes de reescribir.
2. Preparar repositorios para evaluación técnica: pregunta/objetivo, contribución, instalación reproducible, datos y permisos, evaluación fuera de muestra, resultados y límites. Agregar demos/videos reales cuando existan.
3. Insertar links verificados en CV. Confirmar frameworks (PyTorch, NumPy, SciPy, pandas, sklearn, statsmodels), proyectos grupales y contribución propia.
4. Confirmar estado de UTN, nombre oficial de Circuitos/Caminos Neuronales y Comportamiento, fechas de proyectos y experiencia anterior a 2019. No asumir graduación 2027.

## Experiencia confirmada
Mercado Libre: Senior desde julio 2025. Motor distribuido de búsqueda Kotlin/Java, k8s, Datadog; 600K RPM (NO RPS). Lideró tres iniciativas en equipo de cinco con dos participantes por proyecto. Mixer combina ramas orgánico/ads. Ads Merger filtra/combina retrievals ads (tres léxicos y semántico), batches, producer/consumer, futuros y colas prioritarias. Latencia del componente ~20ms p99 producción. Omitir 6ms/batch por preferencia del usuario. Framework AB: validación AND de hits de componentes coordinados. Evaluó cinco embeddings con golden dataset, seleccionado Qwen 4B. ETL Vertex AI para catálogos BR 16TB, MX 10TB, AR 6TB y ~10M mutaciones/día. Caché Cassandra cientos GB; retrieval ~200ms p95. AB en curso, no afirmar impacto final.
Wagr/Yahoo Sports 2022–2024: compra Yahoo abril 2023, permaneció en el equipo tras adquisición. Backend TS/Node, recomendaciones. Modelo odds fue SOLO BOCETO MATEMÁTICO, nunca implementado/desplegado. Nota enlazada en CV: https://www.yahooinc.com/press/yahoo-acquires-wagr-unlocking-opportunities-in-social-gaming-for-yahoo-sports
Sigi 2020–2022: founding engineer/backend lead, tres backend devs, CRM salud mental, dos equipos frontend e integraciones.
Brubank 2019–2020: ownership sistemas críticos sujetos a BCRA y reportes crediticios; cambios regulatorios, límites compra divisas y declaraciones. NO incluir plazo menor de dos días: foco en criticidad. Migración event-driven, dos servicios, Go/Node/Python/Azure.
Consultoría agencia de pareja (nombre/fechas pendientes): Go+n8n, Google Ads/Meta Ads, tendencias en ventanas móviles y top-k creativos vía MCP para uso cotidiano. No presentarlo como investigación RAG. PCA demográfico: proxies NSE y educación, scores exploratorios de penetración marca/base efectiva y solapamiento etario con público objetivo, hipótesis boca a boca. Tres propuestas geográficas de prepaga apoyadas por datos Y conversaciones con cliente/criterio comercial. No afirmar selección algorítmica, validación causal ni lanzamiento exitoso. Análisis cualitativo de competencia/marketing fue de su pareja.

## Formación y proyectos
UBA FCEN Licenciatura Ciencia de Datos 2021-presente, dos materias restantes, promedio ~8.2/10. UTN estudios Ing Mecánica 2012–2017, título no confirmado. Matemática: análisis real/medida, funcional, probabilidad/procesos, SDE, Fourier. RL y Control Óptimo EN CURSO. Neurofisiología/electrofisiología en materia circuitos/caminos neuronales y comportamiento.
EMG/TCN: hardware y adquisición propios, movimiento dedos, filtros/RMS/envelope/alineación, protocolos. Confirmar setup final ESP32-S3/ADS1256, canales/fs, PyTorch, métricas y online/offline desde repo.
GLM Poisson académico 2025: ratones estímulo/recompensa; diseño estímulos binarios temporales, historia neurona target y resto población. Evaluó log-likelihood held-out. Pesos self-history dominantes, historia poblacional poco peso. Concluyó falta de motivación para análisis funcional más profundo bajo ese modelo. No afirmar ablación/ganancia incremental estadística si no se verifica. Pesos chicos no prueban ausencia causal ni inutilidad general.
Tesis con Rodrigo Laje: regresión actividad neuronal/comportamiento ratones, encoding/decoding. Confirmar resultados actuales/publicabilidad.
SDE/diffusion: monografía en español y poster, Itô, generadores, Kolmogorov, reverse time. Traducir al inglés eventualmente; verificar demostraciones reales y si hubo implementación/evento antes de afirmar.
Instruction tuning: modelo 2B para sarcasmo, proyecto curso NLP. Faltan modelo, dataset, framework, LoRA/full, evaluación, contribución individual.
MNIST: FFN Go desde cero, accuracy reportado 93%; falta verificar test/implementación backprop. Conservado como comentario en Typst; consultoría tiene prioridad de espacio.

## Modelo de odds: trabajo de portfolio pendiente
Usuario quiere completar el boceto como demostración de modelado con UI de apuestas bilaterales. Original: https://www.desmos.com/calculator/2d57f387bc?lang=es
Se extrajo estado público y estas ecuaciones (no es Michaelis–Menten):
Fmax=350; c=0; alpha=1; beta=1/2; o=1.5
x0=(beta*Fmax+c)/(o*alpha-1)
k=4*(alpha*o-1)/Fmax^2
F(x)=x*(o*alpha-1)-c, 0<=x<=x0
F(x)=Fmax/(1+exp(-k*Fmax*(x-x0))), x>=x0
Con beta=1/2 y o*alpha>1, tramos coinciden en valor y derivada. Se hizo demo inline de F(x), delta F por apuesta y distancia al límite; NO es todavía sistema completo de cuotas.
Pregunta PENDIENTE al usuario: significado de alpha y c, y si F mide pérdida esperada o exposición condicional al resultado. NO inventarlo. Intención: desalentar apostar al lado sobreacumulado y fomentar el opuesto; diferenciar cuota/pago de probabilidad física. Para simulador nuevo: ledger preserva cuotas históricas, política para cuotas nuevas, hipótesis explícita de demanda, evaluación de exposición y sensibilidad. No prometer equilibrio garantizado por curva saturante.
