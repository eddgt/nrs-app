--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: counties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.counties (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    population integer,
    state_id integer
);


ALTER TABLE public.counties OWNER TO postgres;

--
-- Name: counties_county_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.counties_county_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.counties_county_id_seq OWNER TO postgres;

--
-- Name: counties_county_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.counties_county_id_seq OWNED BY public.counties.id;


--
-- Name: states; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.states (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    population integer,
    counties integer
);


ALTER TABLE public.states OWNER TO postgres;

--
-- Name: states_state_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.states_state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.states_state_id_seq OWNER TO postgres;

--
-- Name: states_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.states_state_id_seq OWNED BY public.states.id;


--
-- Name: counties id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.counties ALTER COLUMN id SET DEFAULT nextval('public.counties_county_id_seq'::regclass);


--
-- Name: states id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.states ALTER COLUMN id SET DEFAULT nextval('public.states_state_id_seq'::regclass);


--
-- Data for Name: counties; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.counties (id, name, population, state_id) FROM stdin;
1	Autauga County	55246	1
2	Baldwin County	195540	1
3	Barbour County	27076	1
4	Bibb County	22512	1
5	Blount County	57872	1
6	Bullock County	10639	1
7	Butler County	20265	1
8	Calhoun County	116736	1
9	Chambers County	34162	1
10	Cherokee County	26203	1
11	Chilton County	43951	1
12	Choctaw County	13426	1
13	Clarke County	25207	1
14	Clay County	13486	1
15	Cleburne County	14994	1
16	Coffee County	50938	1
17	Colbert County	54520	1
18	Conecuh County	12887	1
19	Coosa County	10898	1
20	Covington County	37886	1
21	Crenshaw County	13986	1
22	Cullman County	80811	1
23	Dale County	49884	1
24	Dallas County	41996	1
25	DeKalb County	71013	1
26	Elmore County	80902	1
27	Escambia County	37983	1
28	Etowah County	103931	1
29	Fayette County	16909	1
30	Franklin County	31532	1
31	Geneva County	26727	1
32	Greene County	8744	1
33	Hale County	15406	1
34	Henry County	17296	1
35	Houston County	103668	1
36	Jackson County	52951	1
37	Jefferson County	659479	1
38	Lamar County	14236	1
39	Lauderdale County	92797	1
40	Lawrence County	33587	1
41	Lee County	150933	1
42	Limestone County	88845	1
43	Lowndes County	10703	1
44	Macon County	19688	1
45	Madison County	346892	1
46	Marengo County	20155	1
47	Marion County	30334	1
48	Marshall County	94760	1
49	Mobile County	414079	1
50	Monroe County	22236	1
51	Montgomery County	226659	1
52	Morgan County	119787	1
53	Perry County	10020	1
54	Pickens County	19401	1
55	Pike County	33339	1
56	Randolph County	22727	1
57	Russell County	59585	1
58	Shelby County	204180	1
59	St. Clair County	86308	1
60	Sumter County	13361	1
61	Talladega County	81096	1
62	Tallapoosa County	41203	1
63	Tuscaloosa County	200821	1
64	Walker County	65998	1
65	Washington County	16877	1
66	Wilcox County	11307	1
67	Winston County	24146	1
68	Aleutians East Borough	3092	2
69	Aleutians West Census Area	5511	2
70	Anchorage Municipality	300950	2
71	Bethel Census Area	17758	2
72	Bristol Bay Borough	960	2
73	Denali Borough	1867	2
74	Dillingham Census Area	5010	2
75	Fairbanks North Star Borough	100436	2
76	Haines Borough	2592	2
77	Hoonah-Angoon Census Area	2145	2
78	Juneau City and Borough	32660	2
79	Kenai Peninsula Borough	57147	2
80	Ketchikan Gateway Borough	13729	2
81	Kodiak Island Borough	14135	2
82	Lake and Peninsula Borough	1648	2
83	Matanuska-Susitna Borough	95192	2
84	Nome Census Area	9892	2
85	North Slope Borough	9686	2
86	Northwest Arctic Borough	7685	2
87	Petersburg Census Area	3774	2
88	Prince of Wales-Hyder Census Area	5786	2
89	Sitka City and Borough	9020	2
90	Skagway Municipality	995	2
91	Southeast Fairbanks Census Area	6985	2
92	Valdez-Cordova Census Area	9763	2
93	Wade Hampton Census Area	7977	2
94	Wrangell City and Borough	2400	2
95	Yakutat City and Borough	642	2
96	Yukon-Koyukuk Census Area	5695	2
97	Apache County	71934	3
98	Cochise County	129473	3
99	Coconino County	136539	3
100	Gila County	53053	3
101	Graham County	37482	3
102	Greenlee County	9049	3
103	La Paz County	20324	3
104	Maricopa County	4009412	3
105	Mohave County	203030	3
106	Navajo County	107322	3
107	Pima County	996554	3
108	Pinal County	389350	3
109	Santa Cruz County	46768	3
110	Yavapai County	215133	3
111	Yuma County	201201	3
112	Arkansas County	18777	4
113	Ashley County	21283	4
114	Baxter County	40957	4
115	Benton County	237297	4
116	Boone County	37396	4
117	Bradley County	11249	4
118	Calhoun County	5241	4
119	Carroll County	27808	4
120	Chicot County	11335	4
121	Clark County	22743	4
122	Clay County	15402	4
123	Cleburne County	25686	4
124	Cleveland County	8593	4
125	Columbia County	24164	4
126	Conway County	21245	4
127	Craighead County	101488	4
128	Crawford County	61640	4
129	Crittenden County	49746	4
130	Cross County	17548	4
131	Dallas County	7933	4
132	Desha County	12505	4
133	Drew County	18785	4
134	Faulkner County	119580	4
135	Franklin County	18034	4
136	Fulton County	12304	4
137	Garland County	97173	4
138	Grant County	18019	4
139	Greene County	43097	4
140	Hempstead County	22474	4
141	Hot Spring County	33500	4
142	Howard County	13581	4
143	Independence County	36997	4
144	Izard County	13368	4
145	Jackson County	17615	4
146	Jefferson County	73191	4
147	Johnson County	25846	4
148	Lafayette County	7252	4
149	Lawrence County	17011	4
150	Lee County	10015	4
151	Lincoln County	14031	4
152	Little River County	12730	4
153	Logan County	22082	4
154	Lonoke County	70753	4
155	Madison County	15701	4
156	Marion County	16430	4
157	Miller County	43402	4
158	Mississippi County	44765	4
159	Monroe County	7682	4
160	Montgomery County	9226	4
161	Nevada County	8799	4
162	Newton County	8064	4
163	Ouachita County	25002	4
164	Perry County	10345	4
165	Phillips County	20399	4
166	Pike County	11177	4
167	Poinsett County	24145	4
168	Polk County	20406	4
169	Pope County	62547	4
170	Prairie County	8374	4
171	Pulaski County	391284	4
172	Randolph County	17692	4
173	Saline County	114404	4
174	Scott County	10950	4
175	Searcy County	8023	4
176	Sebastian County	127342	4
177	Sevier County	17366	4
178	Sharp County	17049	4
179	St. Francis County	27260	4
180	Stone County	12581	4
181	Union County	40694	4
182	Van Buren County	16932	4
183	Washington County	216410	4
184	White County	78483	4
185	Woodruff County	7072	4
186	Yell County	21893	4
187	Alameda County	1578891	5
188	Alpine County	1159	5
189	Amador County	36519	5
190	Butte County	222090	5
191	Calaveras County	44515	5
192	Colusa County	21358	5
193	Contra Costa County	1094205	5
194	Del Norte County	27873	5
195	El Dorado County	181737	5
196	Fresno County	955272	5
197	Glenn County	27940	5
198	Humboldt County	134493	5
199	Imperial County	176584	5
200	Inyo County	18467	5
201	Kern County	864124	5
202	Kings County	150960	5
203	Lake County	63860	5
204	Lassen County	32163	5
205	Los Angeles County	10017068	5
206	Madera County	152389	5
207	Marin County	258365	5
208	Mariposa County	17755	5
209	Mendocino County	87192	5
210	Merced County	263228	5
211	Modoc County	9147	5
212	Mono County	14074	5
213	Monterey County	428826	5
214	Napa County	140326	5
215	Nevada County	98200	5
216	Orange County	3114363	5
217	Placer County	367309	5
218	Plumas County	18859	5
219	Riverside County	2292507	5
220	Sacramento County	1462131	5
221	San Benito County	57600	5
222	San Bernardino County	2088371	5
223	San Diego County	3211252	5
224	San Francisco County	837442	5
225	San Joaquin County	704379	5
226	San Luis Obispo County	276443	5
227	San Mateo County	747373	5
228	Santa Barbara County	435697	5
229	Santa Clara County	1862041	5
230	Santa Cruz County	269419	5
231	Shasta County	178980	5
232	Sierra County	3047	5
233	Siskiyou County	43799	5
234	Solano County	424788	5
235	Sonoma County	495025	5
236	Stanislaus County	525491	5
237	Sutter County	95350	5
238	Tehama County	63057	5
239	Trinity County	13448	5
240	Tulare County	454143	5
241	Tuolumne County	53874	5
242	Ventura County	839620	5
243	Yolo County	204593	5
244	Yuba County	73340	5
245	Adams County	469193	6
246	Alamosa County	16253	6
247	Arapahoe County	607070	6
248	Archuleta County	12194	6
249	Baca County	3682	6
250	Bent County	5688	6
251	Boulder County	310048	6
252	Broomfield County	59471	6
253	Chaffee County	18510	6
254	Cheyenne County	1890	6
255	Clear Creek County	9031	6
256	Conejos County	8277	6
257	Costilla County	3518	6
258	Crowley County	5322	6
259	Custer County	4285	6
260	Delta County	30483	6
261	Denver County	649495	6
262	Dolores County	2029	6
263	Douglas County	305963	6
264	Eagle County	52460	6
265	Elbert County	23733	6
266	El Paso County	655044	6
267	Fremont County	46451	6
268	Garfield County	57302	6
269	Gilpin County	5601	6
270	Grand County	14289	6
271	Gunnison County	15507	6
272	Hinsdale County	813	6
273	Huerfano County	6519	6
274	Jackson County	1365	6
275	Jefferson County	551798	6
276	Kiowa County	1423	6
277	Kit Carson County	8037	6
278	Lake County	7306	6
279	La Plata County	53284	6
280	Larimer County	315988	6
281	Las Animas County	14446	6
282	Lincoln County	5430	6
283	Logan County	22450	6
284	Mesa County	147554	6
285	Mineral County	721	6
286	Moffat County	13103	6
287	Montezuma County	25642	6
288	Montrose County	40713	6
289	Morgan County	28404	6
290	Otero County	18703	6
291	Ouray County	4557	6
292	Park County	16121	6
293	Phillips County	4356	6
294	Pitkin County	17379	6
295	Prowers County	12291	6
296	Pueblo County	161451	6
297	Rio Blanco County	6807	6
298	Rio Grande County	11803	6
299	Routt County	23513	6
300	Saguache County	6208	6
301	San Juan County	692	6
302	San Miguel County	7678	6
303	Sedgwick County	2360	6
304	Summit County	28649	6
305	Teller County	23275	6
306	Washington County	4803	6
307	Weld County	269785	6
308	Yuma County	10151	6
309	Fairfield County	939904	7
310	Hartford County	898272	7
311	Litchfield County	186924	7
312	Middlesex County	165562	7
313	New Haven County	862287	7
314	New London County	274150	7
315	Tolland County	151377	7
316	Windham County	117604	7
317	Kent County	169416	8
318	New Castle County	549684	8
319	Sussex County	206649	8
320	District of Columbia	646449	9
321	Alachua County	253451	10
322	Baker County	27013	10
323	Bay County	174987	10
324	Bradford County	26850	10
325	Brevard County	550823	10
326	Broward County	1838844	10
327	Calhoun County	14682	10
328	Charlotte County	164736	10
329	Citrus County	139271	10
330	Clay County	196399	10
331	Collier County	339642	10
332	Columbia County	67543	10
333	DeSoto County	34517	10
334	Dixie County	15940	10
335	Duval County	885855	10
336	Escambia County	305817	10
337	Flagler County	99956	10
338	Franklin County	11598	10
339	Gadsden County	46194	10
340	Gilchrist County	16931	10
341	Glades County	13345	10
342	Gulf County	15829	10
343	Hamilton County	14354	10
344	Hardee County	27519	10
345	Hendry County	37471	10
346	Hernando County	174441	10
347	Highlands County	97616	10
348	Hillsborough County	1291578	10
349	Holmes County	19717	10
350	Indian River County	141994	10
351	Jackson County	48922	10
352	Jefferson County	14194	10
353	Lafayette County	8848	10
354	Lake County	308034	10
355	Lee County	661115	10
356	Leon County	281845	10
357	Levy County	39644	10
358	Liberty County	8349	10
359	Madison County	18728	10
360	Manatee County	342106	10
361	Marion County	337362	10
362	Martin County	151263	10
363	Miami-Dade County	2617176	10
364	Monroe County	76351	10
365	Nassau County	75710	10
366	Okaloosa County	193811	10
367	Okeechobee County	39330	10
368	Orange County	1225267	10
369	Osceola County	298504	10
370	Palm Beach County	1372171	10
371	Pasco County	475502	10
372	Pinellas County	929048	10
373	Polk County	623009	10
374	Putnam County	72577	10
375	Santa Rosa County	161096	10
376	Sarasota County	390429	10
377	Seminole County	436041	10
378	St. Johns County	209647	10
379	St. Lucie County	286832	10
380	Sumter County	107056	10
381	Suwannee County	43734	10
382	Taylor County	22857	10
383	Union County	15136	10
384	Volusia County	500800	10
385	Wakulla County	31022	10
386	Walton County	59807	10
387	Washington County	24624	10
388	Appling County	18440	11
389	Atkinson County	8290	11
390	Bacon County	11216	11
391	Baker County	3341	11
392	Baldwin County	46039	11
393	Banks County	18415	11
394	Barrow County	71453	11
395	Bartow County	101273	11
396	Ben Hill County	17515	11
397	Berrien County	19048	11
398	Bibb County	154721	11
399	Bleckley County	12771	11
400	Brantley County	18292	11
401	Brooks County	15516	11
402	Bryan County	33157	11
403	Bulloch County	71214	11
404	Burke County	22923	11
405	Butts County	23361	11
406	Calhoun County	6523	11
407	Camden County	51476	11
408	Candler County	10937	11
409	Carroll County	112355	11
410	Catoosa County	65311	11
411	Charlton County	13255	11
412	Chatham County	278434	11
413	Chattahoochee County	12842	11
414	Chattooga County	25138	11
415	Cherokee County	225106	11
416	Clarke County	121265	11
417	Clay County	3045	11
418	Clayton County	264220	11
419	Clinch County	6795	11
420	Cobb County	717190	11
421	Coffee County	43220	11
422	Colquitt County	46275	11
423	Columbia County	135416	11
424	Cook County	17066	11
425	Coweta County	133180	11
426	Crawford County	12504	11
427	Crisp County	23336	11
428	Dade County	16507	11
429	Dawson County	22686	11
430	Decatur County	27359	11
431	DeKalb County	713340	11
432	Dodge County	21221	11
433	Dooly County	14304	11
434	Dougherty County	92969	11
435	Douglas County	136379	11
436	Early County	10542	11
437	Echols County	4057	11
438	Effingham County	54456	11
439	Elbert County	19599	11
440	Emanuel County	22867	11
441	Evans County	10833	11
442	Fannin County	23760	11
443	Fayette County	108365	11
444	Floyd County	95821	11
445	Forsyth County	195405	11
446	Franklin County	22009	11
447	Fulton County	984293	11
448	Gilmer County	28579	11
449	Glascock County	3102	11
450	Glynn County	81508	11
451	Gordon County	55757	11
452	Grady County	25278	11
453	Greene County	16321	11
454	Gwinnett County	859304	11
455	Habersham County	43300	11
456	Hall County	187745	11
457	Hancock County	8879	11
458	Haralson County	28495	11
459	Harris County	32663	11
460	Hart County	25446	11
461	Heard County	11558	11
462	Henry County	211128	11
463	Houston County	147658	11
464	Irwin County	9427	11
465	Jackson County	61044	11
466	Jasper County	13601	11
467	Jeff Davis County	15004	11
468	Jefferson County	16320	11
469	Jenkins County	9269	11
470	Johnson County	9767	11
471	Jones County	28569	11
472	Lamar County	17959	11
473	Lanier County	10408	11
474	Laurens County	47999	11
475	Lee County	29071	11
476	Liberty County	64135	11
477	Lincoln County	7751	11
478	Long County	16624	11
479	Lowndes County	112916	11
480	Lumpkin County	30918	11
481	Macon County	14009	11
482	Madison County	28057	11
483	Marion County	8640	11
484	McDuffie County	21565	11
485	McIntosh County	14007	11
486	Meriwether County	21232	11
487	Miller County	5932	11
488	Mitchell County	23045	11
489	Monroe County	26984	11
490	Montgomery County	9021	11
491	Morgan County	17781	11
492	Murray County	39267	11
493	Muscogee County	202824	11
494	Newton County	102446	11
495	Oconee County	34035	11
496	Oglethorpe County	14548	11
497	Paulding County	146950	11
498	Peach County	27014	11
499	Pickens County	29584	11
500	Pierce County	18938	11
501	Pike County	17796	11
502	Polk County	41183	11
503	Pulaski County	11542	11
504	Putnam County	21371	11
505	Quitman County	2367	11
506	Rabun County	16235	11
507	Randolph County	7197	11
508	Richmond County	202003	11
509	Rockdale County	86919	11
510	Schley County	5089	11
511	Screven County	14240	11
512	Seminole County	8945	11
513	Spalding County	63829	11
514	Stephens County	25683	11
515	Stewart County	5868	11
516	Sumter County	31364	11
517	Talbot County	6456	11
518	Taliaferro County	1703	11
519	Tattnall County	25526	11
520	Taylor County	8464	11
521	Telfair County	16591	11
522	Terrell County	9022	11
523	Thomas County	44869	11
524	Tift County	40286	11
525	Toombs County	27273	11
526	Towns County	10771	11
527	Treutlen County	6712	11
528	Troup County	69053	11
529	Turner County	8134	11
530	Twiggs County	8481	11
531	Union County	21566	11
532	Upson County	26566	11
533	Walker County	68198	11
534	Walton County	85754	11
535	Ware County	35709	11
536	Warren County	5558	11
537	Washington County	20676	11
538	Wayne County	30077	11
539	Webster County	2719	11
540	Wheeler County	7909	11
541	White County	27797	11
542	Whitfield County	102945	11
543	Wilcox County	8960	11
544	Wilkes County	10010	11
545	Wilkinson County	9432	11
546	Worth County	21291	11
547	Hawaii County	190821	12
548	Honolulu County	983429	12
549	Kalawao County	90	12
550	Kauai County	69512	12
551	Maui County	160202	12
552	Ada County	416464	13
553	Adams County	3828	13
554	Bannock County	83249	13
555	Bear Lake County	5943	13
556	Benewah County	9044	13
557	Bingham County	45290	13
558	Blaine County	21329	13
559	Boise County	6795	13
560	Bonner County	40699	13
561	Bonneville County	107517	13
562	Boundary County	10853	13
563	Butte County	2642	13
564	Camas County	1042	13
565	Canyon County	198871	13
566	Caribou County	6808	13
567	Cassia County	23331	13
568	Clark County	867	13
569	Clearwater County	8577	13
570	Custer County	4249	13
571	Elmore County	26170	13
572	Franklin County	12854	13
573	Fremont County	12927	13
574	Gem County	16686	13
575	Gooding County	15080	13
576	Idaho County	16116	13
577	Jefferson County	26914	13
578	Jerome County	22514	13
579	Kootenai County	144265	13
580	Latah County	38078	13
581	Lemhi County	7712	13
582	Lewis County	3902	13
583	Lincoln County	5315	13
584	Madison County	37450	13
585	Minidoka County	20292	13
586	Nez Perce County	39915	13
587	Oneida County	4275	13
588	Owyhee County	11472	13
589	Payette County	22610	13
590	Power County	7719	13
591	Shoshone County	12690	13
592	Teton County	10275	13
593	Twin Falls County	79957	13
594	Valley County	9606	13
595	Washington County	9944	13
596	Adams County	67130	14
597	Alexander County	7629	14
598	Bond County	17470	14
599	Boone County	53957	14
600	Brown County	6860	14
601	Bureau County	34056	14
602	Calhoun County	5059	14
603	Carroll County	14910	14
604	Cass County	13324	14
605	Champaign County	204897	14
606	Christian County	34298	14
607	Clark County	16182	14
608	Clay County	13566	14
609	Clinton County	37907	14
610	Coles County	53697	14
611	Cook County	5240700	14
612	Crawford County	19505	14
613	Cumberland County	10939	14
614	DeKalb County	104741	14
615	De Witt County	16420	14
616	Douglas County	19887	14
617	DuPage County	932126	14
618	Edgar County	17960	14
619	Edwards County	6672	14
620	Effingham County	34307	14
621	Fayette County	22060	14
622	Ford County	13832	14
623	Franklin County	39202	14
624	Fulton County	36346	14
625	Gallatin County	5415	14
626	Greene County	13629	14
627	Grundy County	50228	14
628	Hamilton County	8368	14
629	Hancock County	18618	14
630	Hardin County	4181	14
631	Henderson County	6990	14
632	Henry County	49860	14
633	Iroquois County	28982	14
634	Jackson County	59814	14
635	Jasper County	9592	14
636	Jefferson County	38644	14
637	Jersey County	22641	14
638	Jo Daviess County	22407	14
639	Johnson County	12677	14
640	Kane County	523643	14
641	Kankakee County	112120	14
642	Kendall County	119348	14
643	Knox County	52078	14
644	Lake County	703019	14
645	LaSalle County	112183	14
646	Lawrence County	16558	14
647	Lee County	34858	14
648	Livingston County	38186	14
649	Logan County	29964	14
650	Macon County	109278	14
651	Macoupin County	46880	14
652	Madison County	267225	14
653	Marion County	38622	14
654	Marshall County	12153	14
655	Mason County	14248	14
656	Massac County	15073	14
657	McDonough County	32464	14
658	McHenry County	307409	14
659	McLean County	174647	14
660	Menard County	12607	14
661	Mercer County	16178	14
662	Monroe County	33493	14
663	Montgomery County	29654	14
664	Morgan County	35067	14
665	Moultrie County	14876	14
666	Ogle County	52385	14
667	Peoria County	188429	14
668	Perry County	21887	14
669	Piatt County	16433	14
670	Pike County	16150	14
671	Pope County	4312	14
672	Pulaski County	5908	14
673	Putnam County	5801	14
674	Randolph County	32890	14
675	Richland County	16182	14
676	Rock Island County	147258	14
677	Saline County	24939	14
678	Sangamon County	199145	14
679	Schuyler County	7444	14
680	Scott County	5222	14
681	Shelby County	22119	14
682	Stark County	5907	14
683	St. Clair County	266955	14
684	Stephenson County	46740	14
685	Tazewell County	136352	14
686	Union County	17583	14
687	Vermilion County	80329	14
688	Wabash County	11665	14
689	Warren County	17726	14
690	Washington County	14448	14
691	Wayne County	16612	14
692	White County	14549	14
693	Whiteside County	57557	14
694	Will County	682829	14
695	Williamson County	66924	14
696	Winnebago County	290666	14
697	Woodford County	39273	14
698	Adams County	34614	15
699	Allen County	363014	15
700	Bartholomew County	79587	15
701	Benton County	8767	15
702	Blackford County	12481	15
703	Boone County	60477	15
704	Brown County	15023	15
705	Carroll County	20086	15
706	Cass County	38463	15
707	Clark County	112938	15
708	Clay County	26803	15
709	Clinton County	32916	15
710	Crawford County	10621	15
711	Daviess County	32407	15
712	Dearborn County	49904	15
713	Decatur County	26277	15
714	DeKalb County	42307	15
715	Delaware County	117484	15
716	Dubois County	42361	15
717	Elkhart County	200563	15
718	Fayette County	23861	15
719	Floyd County	76244	15
720	Fountain County	16880	15
721	Franklin County	22951	15
722	Fulton County	20449	15
723	Gibson County	33612	15
724	Grant County	69126	15
725	Greene County	32781	15
726	Hamilton County	296693	15
727	Hancock County	71575	15
728	Harrison County	39163	15
729	Hendricks County	153879	15
730	Henry County	49044	15
731	Howard County	82760	15
732	Huntington County	36791	15
733	Jackson County	43466	15
734	Jasper County	33389	15
735	Jay County	21330	15
736	Jefferson County	32458	15
737	Jennings County	28241	15
738	Johnson County	145535	15
739	Knox County	37954	15
740	Kosciusko County	77963	15
741	LaGrange County	37996	15
742	Lake County	491456	15
743	LaPorte County	111281	15
744	Lawrence County	45844	15
745	Madison County	130482	15
746	Marion County	928281	15
747	Marshall County	47109	15
748	Martin County	10160	15
749	Miami County	36140	15
750	Monroe County	141888	15
751	Montgomery County	38177	15
752	Morgan County	69782	15
753	Newton County	14087	15
754	Noble County	47570	15
755	Ohio County	5994	15
756	Orange County	19773	15
757	Owen County	21201	15
758	Parke County	17202	15
759	Perry County	19558	15
760	Pike County	12683	15
761	Porter County	166557	15
762	Posey County	25486	15
763	Pulaski County	13007	15
764	Putnam County	37505	15
765	Randolph County	25627	15
766	Ripley County	28419	15
767	Rush County	17004	15
768	Scott County	23972	15
769	Shelby County	44729	15
770	Spencer County	20944	15
771	Starke County	23197	15
772	Steuben County	34358	15
773	St. Joseph County	266709	15
774	Sullivan County	21223	15
775	Switzerland County	10526	15
776	Tippecanoe County	180174	15
777	Tipton County	15650	15
778	Union County	7277	15
779	Vanderburgh County	181398	15
780	Vermillion County	15878	15
781	Vigo County	108291	15
782	Wabash County	32358	15
783	Warren County	8415	15
784	Warrick County	61049	15
785	Washington County	27780	15
786	Wayne County	67893	15
787	Wells County	27814	15
788	White County	24466	15
789	Whitley County	33294	15
790	Adair County	7472	16
791	Adams County	3894	16
792	Allamakee County	14169	16
793	Appanoose County	12692	16
794	Audubon County	5873	16
795	Benton County	25699	16
796	Black Hawk County	132546	16
797	Boone County	26364	16
798	Bremer County	24624	16
799	Buchanan County	20976	16
800	Buena Vista County	20567	16
801	Butler County	15021	16
802	Calhoun County	9926	16
803	Carroll County	20598	16
804	Cass County	13598	16
805	Cedar County	18393	16
806	Cerro Gordo County	43575	16
807	Cherokee County	11945	16
808	Chickasaw County	12321	16
809	Clarke County	9325	16
810	Clay County	16491	16
811	Clayton County	17773	16
812	Clinton County	48420	16
813	Crawford County	17434	16
814	Dallas County	74641	16
815	Davis County	8791	16
816	Decatur County	8136	16
817	Delaware County	17534	16
818	Des Moines County	40480	16
819	Dickinson County	16955	16
820	Dubuque County	95697	16
821	Emmet County	9996	16
822	Fayette County	20502	16
823	Floyd County	16092	16
824	Franklin County	10548	16
825	Fremont County	7080	16
826	Greene County	9139	16
827	Grundy County	12314	16
828	Guthrie County	10687	16
829	Hamilton County	15312	16
830	Hancock County	11094	16
831	Hardin County	17441	16
832	Harrison County	14431	16
833	Henry County	20222	16
834	Howard County	9526	16
835	Humboldt County	9688	16
836	Ida County	7141	16
837	Iowa County	16330	16
838	Jackson County	19587	16
839	Jasper County	36641	16
840	Jefferson County	16810	16
841	Johnson County	139155	16
842	Jones County	20611	16
843	Keokuk County	10329	16
844	Kossuth County	15321	16
845	Lee County	35682	16
846	Linn County	216111	16
847	Louisa County	11282	16
848	Lucas County	8746	16
849	Lyon County	11712	16
850	Madison County	15448	16
851	Mahaska County	22417	16
852	Marion County	33252	16
853	Marshall County	40994	16
854	Mills County	14896	16
855	Mitchell County	10709	16
856	Monona County	9121	16
857	Monroe County	8012	16
858	Montgomery County	10424	16
859	Muscatine County	42836	16
860	O'Brien County	14044	16
861	Osceola County	6211	16
862	Page County	15713	16
863	Palo Alto County	9185	16
864	Plymouth County	24957	16
865	Pocahontas County	7154	16
866	Polk County	451677	16
867	Pottawattamie County	92728	16
868	Poweshiek County	18601	16
869	Ringgold County	5072	16
870	Sac County	10071	16
871	Scott County	170385	16
872	Shelby County	11961	16
873	Sioux County	34547	16
874	Story County	92406	16
875	Tama County	17576	16
876	Taylor County	6161	16
877	Union County	12583	16
878	Van Buren County	7436	16
879	Wapello County	35391	16
880	Warren County	47336	16
881	Washington County	22015	16
882	Wayne County	6402	16
883	Webster County	37044	16
884	Winnebago County	10554	16
885	Winneshiek County	20994	16
886	Woodbury County	102130	16
887	Worth County	7541	16
888	Wright County	12972	16
889	Allen County	13124	17
890	Anderson County	7897	17
891	Atchison County	16749	17
892	Barber County	4947	17
893	Barton County	27509	17
894	Bourbon County	14852	17
895	Brown County	9997	17
896	Butler County	65803	17
897	Chase County	2700	17
898	Chautauqua County	3552	17
899	Cherokee County	20978	17
900	Cheyenne County	2694	17
901	Clark County	2193	17
902	Clay County	8406	17
903	Cloud County	9292	17
904	Coffey County	8412	17
905	Comanche County	1955	17
906	Cowley County	36204	17
907	Crawford County	39278	17
908	Decatur County	2930	17
909	Dickinson County	19609	17
910	Doniphan County	7851	17
911	Douglas County	114322	17
912	Edwards County	2945	17
913	Elk County	2655	17
914	Ellis County	29061	17
915	Ellsworth County	6398	17
916	Finney County	37098	17
917	Ford County	34819	17
918	Franklin County	25740	17
919	Geary County	37384	17
920	Gove County	2769	17
921	Graham County	2593	17
922	Grant County	7950	17
923	Gray County	6009	17
924	Greeley County	1290	17
925	Greenwood County	6424	17
926	Hamilton County	2609	17
927	Harper County	5860	17
928	Harvey County	34741	17
929	Haskell County	4141	17
930	Hodgeman County	1950	17
931	Jackson County	13366	17
932	Jefferson County	18813	17
933	Jewell County	3046	17
934	Johnson County	566933	17
935	Kearny County	3923	17
936	Kingman County	7844	17
937	Kiowa County	2523	17
938	Labette County	20916	17
939	Lane County	1720	17
940	Leavenworth County	78185	17
941	Lincoln County	3147	17
942	Linn County	9516	17
943	Logan County	2798	17
944	Lyon County	33510	17
945	Marion County	12219	17
946	Marshall County	10002	17
947	McPherson County	29569	17
948	Meade County	4343	17
949	Miami County	32835	17
950	Mitchell County	6378	17
951	Montgomery County	34292	17
952	Morris County	5741	17
953	Morton County	3143	17
954	Nemaha County	10161	17
955	Neosho County	16430	17
956	Ness County	3073	17
957	Norton County	5622	17
958	Osage County	16142	17
959	Osborne County	3818	17
960	Ottawa County	6042	17
961	Pawnee County	6971	17
962	Phillips County	5540	17
963	Pottawatomie County	22691	17
964	Pratt County	9878	17
965	Rawlins County	2589	17
966	Reno County	64190	17
967	Republic County	4820	17
968	Rice County	10011	17
969	Riley County	75394	17
970	Rooks County	5190	17
971	Rush County	3186	17
972	Russell County	6933	17
973	Saline County	55740	17
974	Scott County	5035	17
975	Sedgwick County	505415	17
976	Seward County	23390	17
977	Shawnee County	178831	17
978	Sheridan County	2553	17
979	Sherman County	6115	17
980	Smith County	3706	17
981	Stafford County	4359	17
982	Stanton County	2194	17
983	Stevens County	5816	17
984	Sumner County	23591	17
985	Thomas County	7948	17
986	Trego County	2980	17
987	Wabaunsee County	7051	17
988	Wallace County	1569	17
989	Washington County	5629	17
990	Wichita County	2192	17
991	Wilson County	9105	17
992	Woodson County	3221	17
993	Wyandotte County	160384	17
994	Adair County	18732	18
995	Allen County	20311	18
996	Anderson County	21811	18
997	Ballard County	8332	18
998	Barren County	43027	18
999	Bath County	11961	18
1000	Bell County	27885	18
1001	Boone County	124442	18
1002	Bourbon County	19998	18
1003	Boyd County	48886	18
1004	Boyle County	29013	18
1005	Bracken County	8416	18
1006	Breathitt County	13545	18
1007	Breckinridge County	20040	18
1008	Bullitt County	76854	18
1009	Butler County	12793	18
1010	Caldwell County	12823	18
1011	Calloway County	37657	18
1012	Campbell County	90988	18
1013	Carlisle County	5001	18
1014	Carroll County	10953	18
1015	Carter County	27202	18
1016	Casey County	16067	18
1017	Christian County	74167	18
1018	Clark County	35614	18
1019	Clay County	21364	18
1020	Clinton County	10146	18
1021	Crittenden County	9255	18
1022	Cumberland County	6789	18
1023	Daviess County	98218	18
1024	Edmonson County	12062	18
1025	Elliott County	7637	18
1026	Estill County	14488	18
1027	Fayette County	308428	18
1028	Fleming County	14508	18
1029	Floyd County	38728	18
1030	Franklin County	49648	18
1031	Fulton County	6385	18
1032	Gallatin County	8474	18
1033	Garrard County	16915	18
1034	Grant County	24753	18
1035	Graves County	37451	18
1036	Grayson County	25997	18
1037	Green County	11180	18
1038	Greenup County	36519	18
1039	Hancock County	8687	18
1040	Hardin County	108191	18
1041	Harlan County	28499	18
1042	Harrison County	18518	18
1043	Hart County	18573	18
1044	Henderson County	46347	18
1045	Henry County	15445	18
1046	Hickman County	4745	18
1047	Hopkins County	46634	18
1048	Jackson County	13427	18
1049	Jefferson County	756832	18
1050	Jessamine County	50173	18
1051	Johnson County	23449	18
1052	Kenton County	163145	18
1053	Knott County	15976	18
1054	Knox County	31790	18
1055	Larue County	14064	18
1056	Laurel County	59563	18
1057	Lawrence County	15856	18
1058	Lee County	7260	18
1059	Leslie County	11019	18
1060	Letcher County	23619	18
1061	Lewis County	13806	18
1062	Lincoln County	24370	18
1063	Livingston County	9359	18
1064	Logan County	26876	18
1065	Lyon County	8451	18
1066	Madison County	85590	18
1067	Magoffin County	12950	18
1068	Marion County	20045	18
1069	Marshall County	31107	18
1070	Martin County	12647	18
1071	Mason County	17278	18
1072	McCracken County	65373	18
1073	McCreary County	17989	18
1074	McLean County	9496	18
1075	Meade County	29210	18
1076	Menifee County	6288	18
1077	Mercer County	21349	18
1078	Metcalfe County	9983	18
1079	Monroe County	10681	18
1080	Montgomery County	27251	18
1081	Morgan County	13380	18
1082	Muhlenberg County	31179	18
1083	Nelson County	44540	18
1084	Nicholas County	7039	18
1085	Ohio County	23988	18
1086	Oldham County	62364	18
1087	Owen County	10662	18
1088	Owsley County	4654	18
1089	Pendleton County	14570	18
1090	Perry County	28010	18
1091	Pike County	63380	18
1092	Powell County	12494	18
1093	Pulaski County	63907	18
1094	Robertson County	2235	18
1095	Rockcastle County	16693	18
1096	Rowan County	23527	18
1097	Russell County	17752	18
1098	Scott County	49947	18
1099	Shelby County	44216	18
1100	Simpson County	17793	18
1101	Spencer County	17637	18
1102	Taylor County	24649	18
1103	Todd County	12503	18
1104	Trigg County	14293	18
1105	Trimble County	8816	18
1106	Union County	15029	18
1107	Warren County	118370	18
1108	Washington County	11875	18
1109	Wayne County	20678	18
1110	Webster County	13452	18
1111	Whitley County	35766	18
1112	Wolfe County	7248	18
1113	Woodford County	25275	18
1114	Acadia Parish	62204	19
1115	Allen Parish	25537	19
1116	Ascension Parish	114393	19
1117	Assumption Parish	23187	19
1118	Avoyelles Parish	41299	19
1119	Beauregard Parish	36167	19
1120	Bienville Parish	13981	19
1121	Bossier Parish	123823	19
1122	Caddo Parish	254887	19
1123	Calcasieu Parish	195296	19
1124	Caldwell Parish	9989	19
1125	Cameron Parish	6744	19
1126	Catahoula Parish	10238	19
1127	Claiborne Parish	16650	19
1128	Concordia Parish	20442	19
1129	De Soto Parish	27083	19
1130	East Baton Rouge Parish	445227	19
1131	East Carroll Parish	7529	19
1132	East Feliciana Parish	19728	19
1133	Evangeline Parish	33578	19
1134	Franklin Parish	20571	19
1135	Grant Parish	22030	19
1136	Iberia Parish	73878	19
1137	Iberville Parish	33367	19
1138	Jackson Parish	16112	19
1139	Jefferson Davis Parish	31301	19
1140	Jefferson Parish	434767	19
1141	Lafayette Parish	230845	19
1142	Lafourche Parish	97141	19
1143	LaSalle Parish	14777	19
1144	Lincoln Parish	47414	19
1145	Livingston Parish	134053	19
1146	Madison Parish	11927	19
1147	Morehouse Parish	27057	19
1148	Natchitoches Parish	39138	19
1149	Orleans Parish	378715	19
1150	Ouachita Parish	156220	19
1151	Plaquemines Parish	23550	19
1152	Pointe Coupee Parish	22499	19
1153	Rapides Parish	132723	19
1154	Red River Parish	8894	19
1155	Richland Parish	20857	19
1156	Sabine Parish	24235	19
1157	St. Bernard Parish	43482	19
1158	St. Charles Parish	52617	19
1159	St. Helena Parish	10875	19
1160	St. James Parish	21752	19
1161	St. John the Baptist Parish	43761	19
1162	St. Landry Parish	83454	19
1163	St. Martin Parish	52936	19
1164	St. Mary Parish	53543	19
1165	St. Tammany Parish	242333	19
1166	Tangipahoa Parish	125412	19
1167	Tensas Parish	4908	19
1168	Terrebonne Parish	112749	19
1169	Union Parish	22344	19
1170	Vermilion Parish	59253	19
1171	Vernon Parish	52606	19
1172	Washington Parish	46419	19
1173	Webster Parish	40678	19
1174	West Baton Rouge Parish	24573	19
1175	West Carroll Parish	11465	19
1176	West Feliciana Parish	15444	19
1177	Winn Parish	14813	19
1178	Androscoggin County	107604	20
1179	Aroostook County	70055	20
1180	Cumberland County	285456	20
1181	Franklin County	30495	20
1182	Hancock County	54845	20
1183	Kennebec County	121164	20
1184	Knox County	39550	20
1185	Lincoln County	34088	20
1186	Oxford County	57277	20
1187	Penobscot County	153364	20
1188	Piscataquis County	17124	20
1189	Sagadahoc County	35013	20
1190	Somerset County	51706	20
1191	Waldo County	38940	20
1192	Washington County	32190	20
1193	York County	199431	20
1194	Allegany County	73521	21
1195	Anne Arundel County	555743	21
1196	Baltimore city	622104	21
1197	Baltimore County	823015	21
1198	Calvert County	90484	21
1199	Caroline County	32693	21
1200	Carroll County	167564	21
1201	Cecil County	101913	21
1202	Charles County	152864	21
1203	Dorchester County	32660	21
1204	Frederick County	241409	21
1205	Garrett County	29889	21
1206	Harford County	249215	21
1207	Howard County	304580	21
1208	Kent County	19944	21
1209	Montgomery County	1016677	21
1210	Prince George's County	890081	21
1211	Queen Anne's County	48517	21
1212	Somerset County	26273	21
1213	St. Mary's County	109633	21
1214	Talbot County	37931	21
1215	Washington County	149588	21
1216	Wicomico County	100896	21
1217	Worcester County	51620	21
1218	Barnstable County	214990	22
1219	Berkshire County	129585	22
1220	Bristol County	552780	22
1221	Dukes County	17256	22
1222	Essex County	762550	22
1223	Franklin County	71221	22
1224	Hampden County	467319	22
1225	Hampshire County	159596	22
1226	Middlesex County	1552802	22
1227	Nantucket County	10399	22
1228	Norfolk County	687802	22
1229	Plymouth County	501915	22
1230	Suffolk County	755503	22
1231	Worcester County	809106	22
1232	Alcona County	10578	23
1233	Alger County	9522	23
1234	Allegan County	112531	23
1235	Alpena County	29091	23
1236	Antrim County	23370	23
1237	Arenac County	15487	23
1238	Baraga County	8695	23
1239	Barry County	59097	23
1240	Bay County	106832	23
1241	Benzie County	17428	23
1242	Berrien County	155252	23
1243	Branch County	43649	23
1244	Calhoun County	135012	23
1245	Cass County	51910	23
1246	Charlevoix County	26129	23
1247	Cheboygan County	25726	23
1248	Chippewa County	38696	23
1249	Clare County	30569	23
1250	Clinton County	76739	23
1251	Crawford County	13904	23
1252	Delta County	36905	23
1253	Dickinson County	26098	23
1254	Eaton County	108348	23
1255	Emmet County	33140	23
1256	Genesee County	415376	23
1257	Gladwin County	25493	23
1258	Gogebic County	15916	23
1259	Grand Traverse County	89987	23
1260	Gratiot County	41968	23
1261	Hillsdale County	46101	23
1262	Houghton County	36225	23
1263	Huron County	32224	23
1264	Ingham County	282234	23
1265	Ionia County	64073	23
1266	Iosco County	25429	23
1267	Iron County	11516	23
1268	Isabella County	70436	23
1269	Jackson County	160369	23
1270	Kalamazoo County	256725	23
1271	Kalkaska County	17196	23
1272	Kent County	621700	23
1273	Keweenaw County	2191	23
1274	Lake County	11386	23
1275	Lapeer County	88389	23
1276	Leelanau County	21747	23
1277	Lenawee County	99188	23
1278	Livingston County	184443	23
1279	Luce County	6502	23
1280	Mackinac County	11061	23
1281	Macomb County	854769	23
1282	Manistee County	24450	23
1283	Marquette County	67700	23
1284	Mason County	28605	23
1285	Mecosta County	43108	23
1286	Menominee County	23791	23
1287	Midland County	83919	23
1288	Missaukee County	15051	23
1289	Monroe County	150376	23
1290	Montcalm County	63105	23
1291	Montmorency County	9350	23
1292	Muskegon County	171008	23
1293	Newaygo County	48001	23
1294	Oakland County	1231640	23
1295	Oceana County	26245	23
1296	Ogemaw County	21234	23
1297	Ontonagon County	6322	23
1298	Osceola County	23259	23
1299	Oscoda County	8379	23
1300	Otsego County	24129	23
1301	Ottawa County	272701	23
1302	Presque Isle County	13062	23
1303	Roscommon County	24014	23
1304	Saginaw County	196542	23
1305	Sanilac County	41823	23
1306	Schoolcraft County	8247	23
1307	Shiawassee County	68900	23
1308	St. Clair County	160469	23
1309	St. Joseph County	60964	23
1310	Tuscola County	54263	23
1311	Van Buren County	75455	23
1312	Washtenaw County	354240	23
1313	Wayne County	1775273	23
1314	Wexford County	32645	23
1315	Aitkin County	15742	24
1316	Anoka County	339534	24
1317	Becker County	33231	24
1318	Beltrami County	45670	24
1319	Benton County	39214	24
1320	Big Stone County	5122	24
1321	Blue Earth County	65528	24
1322	Brown County	25332	24
1323	Carlton County	35460	24
1324	Carver County	95562	24
1325	Cass County	28555	24
1326	Chippewa County	12093	24
1327	Chisago County	53761	24
1328	Clay County	60661	24
1329	Clearwater County	8838	24
1330	Cook County	5200	24
1331	Cottonwood County	11616	24
1332	Crow Wing County	63208	24
1333	Dakota County	408509	24
1334	Dodge County	20349	24
1335	Douglas County	36545	24
1336	Faribault County	14191	24
1337	Fillmore County	20835	24
1338	Freeborn County	30948	24
1339	Goodhue County	46464	24
1340	Grant County	5989	24
1341	Hennepin County	1198778	24
1342	Houston County	18799	24
1343	Hubbard County	20658	24
1344	Isanti County	38204	24
1345	Itasca County	45564	24
1346	Jackson County	10260	24
1347	Kanabec County	15996	24
1348	Kandiyohi County	42410	24
1349	Kittson County	4503	24
1350	Koochiching County	13206	24
1351	Lac qui Parle County	7027	24
1352	Lake County	10777	24
1353	Lake of the Woods County	3929	24
1354	Le Sueur County	27810	24
1355	Lincoln County	5830	24
1356	Lyon County	25487	24
1357	Mahnomen County	5532	24
1358	Marshall County	9425	24
1359	Martin County	20422	24
1360	McLeod County	35918	24
1361	Meeker County	23119	24
1362	Mille Lacs County	25833	24
1363	Morrison County	32872	24
1364	Mower County	39327	24
1365	Murray County	8533	24
1366	Nicollet County	33032	24
1367	Nobles County	21617	24
1368	Norman County	6631	24
1369	Olmsted County	149226	24
1370	Otter Tail County	57581	24
1371	Pennington County	14118	24
1372	Pine County	29104	24
1373	Pipestone County	9270	24
1374	Polk County	31569	24
1375	Pope County	10932	24
1376	Ramsey County	526714	24
1377	Red Lake County	4057	24
1378	Redwood County	15744	24
1379	Renville County	15166	24
1380	Rice County	65049	24
1381	Rock County	9520	24
1382	Roseau County	15520	24
1383	Scott County	137232	24
1384	Sherburne County	90158	24
1385	Sibley County	15072	24
1386	Stearns County	152092	24
1387	Steele County	36465	24
1388	Stevens County	9735	24
1389	St. Louis County	200540	24
1390	Swift County	9546	24
1391	Todd County	24382	24
1392	Traverse County	3445	24
1393	Wabasha County	21443	24
1394	Wadena County	13804	24
1395	Waseca County	19098	24
1396	Washington County	246603	24
1397	Watonwan County	11137	24
1398	Wilkin County	6557	24
1399	Winona County	51232	24
1400	Wright County	128470	24
1401	Yellow Medicine County	10143	24
1402	Adams County	32090	25
1403	Alcorn County	37316	25
1404	Amite County	12899	25
1405	Attala County	19317	25
1406	Benton County	8571	25
1407	Bolivar County	34049	25
1408	Calhoun County	14734	25
1409	Carroll County	10385	25
1410	Chickasaw County	17311	25
1411	Choctaw County	8371	25
1412	Claiborne County	9253	25
1413	Clarke County	16415	25
1414	Clay County	20408	25
1415	Coahoma County	25182	25
1416	Copiah County	28921	25
1417	Covington County	19423	25
1418	DeSoto County	168240	25
1419	Forrest County	77059	25
1420	Franklin County	7931	25
1421	George County	23159	25
1422	Greene County	14244	25
1423	Grenada County	21612	25
1424	Hancock County	45566	25
1425	Harrison County	196500	25
1426	Hinds County	244899	25
1427	Holmes County	18428	25
1428	Humphreys County	8922	25
1429	Issaquena County	1395	25
1430	Itawamba County	23434	25
1431	Jackson County	140450	25
1432	Jasper County	16470	25
1433	Jefferson County	7629	25
1434	Jefferson Davis County	11948	25
1435	Jones County	68961	25
1436	Kemper County	10294	25
1437	Lafayette County	51318	25
1438	Lamar County	58801	25
1439	Lauderdale County	80254	25
1440	Lawrence County	12514	25
1441	Leake County	23389	25
1442	Lee County	85340	25
1443	Leflore County	31607	25
1444	Lincoln County	34810	25
1445	Lowndes County	59922	25
1446	Madison County	100412	25
1447	Marion County	26180	25
1448	Marshall County	36515	25
1449	Monroe County	36116	25
1450	Montgomery County	10553	25
1451	Neshoba County	29507	25
1452	Newton County	21689	25
1453	Noxubee County	11089	25
1454	Oktibbeha County	49043	25
1455	Panola County	34402	25
1456	Pearl River County	55072	25
1457	Perry County	12131	25
1458	Pike County	40014	25
1459	Pontotoc County	30897	25
1460	Prentiss County	25388	25
1461	Quitman County	7803	25
1462	Rankin County	146767	25
1463	Scott County	28273	25
1464	Sharkey County	4708	25
1465	Simpson County	27500	25
1466	Smith County	16225	25
1467	Stone County	18016	25
1468	Sunflower County	27997	25
1469	Tallahatchie County	15081	25
1470	Tate County	28373	25
1471	Tippah County	22084	25
1472	Tishomingo County	19529	25
1473	Tunica County	10560	25
1474	Union County	27754	25
1475	Walthall County	14931	25
1476	Warren County	48218	25
1477	Washington County	49688	25
1478	Wayne County	20539	25
1479	Webster County	9987	25
1480	Wilkinson County	9381	25
1481	Winston County	18788	25
1482	Yalobusha County	12373	25
1483	Yazoo County	27883	25
1484	Adair County	25572	26
1485	Andrew County	17445	26
1486	Atchison County	5449	26
1487	Audrain County	25661	26
1488	Barry County	35572	26
1489	Barton County	12275	26
1490	Bates County	16550	26
1491	Benton County	18932	26
1492	Bollinger County	12490	26
1493	Boone County	170773	26
1494	Buchanan County	89631	26
1495	Butler County	43083	26
1496	Caldwell County	9097	26
1497	Callaway County	44359	26
1498	Camden County	43862	26
1499	Cape Girardeau County	77320	26
1500	Carroll County	9127	26
1501	Carter County	6291	26
1502	Cass County	100641	26
1503	Cedar County	13913	26
1504	Chariton County	7628	26
1505	Christian County	80899	26
1506	Clark County	6910	26
1507	Clay County	230473	26
1508	Clinton County	20571	26
1509	Cole County	76699	26
1510	Cooper County	17647	26
1511	Crawford County	24543	26
1512	Dade County	7578	26
1513	Dallas County	16535	26
1514	Daviess County	8294	26
1515	DeKalb County	12840	26
1516	Dent County	15730	26
1517	Douglas County	13515	26
1518	Dunklin County	31712	26
1519	Franklin County	101816	26
1520	Gasconade County	14901	26
1521	Gentry County	6775	26
1522	Greene County	283870	26
1523	Grundy County	10355	26
1524	Harrison County	8741	26
1525	Henry County	22059	26
1526	Hickory County	9305	26
1527	Holt County	4568	26
1528	Howard County	10257	26
1529	Howell County	40393	26
1530	Iron County	10344	26
1531	Jackson County	679996	26
1532	Jasper County	116398	26
1533	Jefferson County	221396	26
1534	Johnson County	54572	26
1535	Knox County	4067	26
1536	Laclede County	35667	26
1537	Lafayette County	32943	26
1538	Lawrence County	38185	26
1539	Lewis County	10152	26
1540	Lincoln County	53860	26
1541	Linn County	12368	26
1542	Livingston County	14871	26
1543	Macon County	15544	26
1544	Madison County	12431	26
1545	Maries County	9018	26
1546	Marion County	28904	26
1547	McDonald County	22558	26
1548	Mercer County	3695	26
1549	Miller County	25092	26
1550	Mississippi County	14282	26
1551	Moniteau County	15748	26
1552	Monroe County	8774	26
1553	Montgomery County	11965	26
1554	Morgan County	20265	26
1555	New Madrid County	18365	26
1556	Newton County	58845	26
1557	Nodaway County	23261	26
1558	Oregon County	10996	26
1559	Osage County	13688	26
1560	Ozark County	9560	26
1561	Pemiscot County	17823	26
1562	Perry County	19072	26
1563	Pettis County	42205	26
1564	Phelps County	44807	26
1565	Pike County	18669	26
1566	Platte County	93310	26
1567	Polk County	30974	26
1568	Pulaski County	53748	26
1569	Putnam County	4875	26
1570	Ralls County	10192	26
1571	Randolph County	24940	26
1572	Ray County	23039	26
1573	Reynolds County	6599	26
1574	Ripley County	14032	26
1575	Saline County	23252	26
1576	Schuyler County	4358	26
1577	Scotland County	4921	26
1578	Scott County	39290	26
1579	Shannon County	8297	26
1580	Shelby County	6177	26
1581	St. Charles County	373495	26
1582	St. Clair County	9487	26
1583	Ste. Genevieve County	17778	26
1584	St. Francois County	66215	26
1585	St. Louis city	318416	26
1586	St. Louis County	1001444	26
1587	Stoddard County	29780	26
1588	Stone County	31297	26
1589	Sullivan County	6448	26
1590	Taney County	53575	26
1591	Texas County	25636	26
1592	Vernon County	20949	26
1593	Warren County	32999	26
1594	Washington County	25172	26
1595	Wayne County	13404	26
1596	Webster County	36466	26
1597	Worth County	2090	26
1598	Wright County	18473	26
1599	Beaverhead County	9341	27
1600	Big Horn County	13042	27
1601	Blaine County	6604	27
1602	Broadwater County	5692	27
1603	Carbon County	10340	27
1604	Carter County	1174	27
1605	Cascade County	82384	27
1606	Chouteau County	5849	27
1607	Custer County	11951	27
1608	Daniels County	1791	27
1609	Dawson County	9445	27
1610	Deer Lodge County	9329	27
1611	Fallon County	3079	27
1612	Fergus County	11501	27
1613	Flathead County	93068	27
1614	Gallatin County	94720	27
1615	Garfield County	1290	27
1616	Glacier County	13739	27
1617	Golden Valley County	859	27
1618	Granite County	3138	27
1619	Hill County	16568	27
1620	Jefferson County	11512	27
1621	Judith Basin County	2016	27
1622	Lake County	29017	27
1623	Lewis and Clark County	65338	27
1624	Liberty County	2369	27
1625	Lincoln County	19460	27
1626	Madison County	7712	27
1627	McCone County	1709	27
1628	Meagher County	1937	27
1629	Mineral County	4275	27
1630	Missoula County	111807	27
1631	Musselshell County	4629	27
1632	Park County	15682	27
1633	Petroleum County	506	27
1634	Phillips County	4179	27
1635	Pondera County	6211	27
1636	Powder River County	1748	27
1637	Powell County	6993	27
1638	Prairie County	1179	27
1639	Ravalli County	40823	27
1640	Richland County	11214	27
1641	Roosevelt County	11125	27
1642	Rosebud County	9329	27
1643	Sanders County	11363	27
1644	Sheridan County	3668	27
1645	Silver Bow County	34523	27
1646	Stillwater County	9318	27
1647	Sweet Grass County	3669	27
1648	Teton County	6065	27
1649	Toole County	5138	27
1650	Treasure County	700	27
1651	Valley County	7630	27
1652	Wheatland County	2134	27
1653	Wibaux County	1121	27
1654	Yellowstone County	154162	27
1655	Adams County	31610	28
1656	Antelope County	6456	28
1657	Arthur County	458	28
1658	Banner County	759	28
1659	Blaine County	482	28
1660	Boone County	5388	28
1661	Box Butte County	11305	28
1662	Boyd County	2032	28
1663	Brown County	2926	28
1664	Buffalo County	47893	28
1665	Burt County	6574	28
1666	Butler County	8312	28
1667	Cass County	25357	28
1668	Cedar County	8711	28
1669	Chase County	4000	28
1670	Cherry County	5788	28
1671	Cheyenne County	10091	28
1672	Clay County	6392	28
1673	Colfax County	10425	28
1674	Cuming County	8996	28
1675	Custer County	10792	28
1676	Dakota County	20947	28
1677	Dawes County	9088	28
1678	Dawson County	24207	28
1679	Deuel County	1937	28
1680	Dixon County	5851	28
1681	Dodge County	36515	28
1682	Douglas County	537256	28
1683	Dundy County	1981	28
1684	Fillmore County	5698	28
1685	Franklin County	3085	28
1686	Frontier County	2709	28
1687	Furnas County	4865	28
1688	Gage County	21864	28
1689	Garden County	1902	28
1690	Garfield County	2035	28
1691	Gosper County	1972	28
1692	Grant County	633	28
1693	Greeley County	2494	28
1694	Hall County	60720	28
1695	Hamilton County	9112	28
1696	Harlan County	3513	28
1697	Hayes County	976	28
1698	Hitchcock County	2872	28
1699	Holt County	10449	28
1700	Hooker County	738	28
1701	Howard County	6355	28
1702	Jefferson County	7560	28
1703	Johnson County	5144	28
1704	Kearney County	6548	28
1705	Keith County	8130	28
1706	Keya Paha County	790	28
1707	Kimball County	3702	28
1708	Knox County	8565	28
1709	Lancaster County	297036	28
1710	Lincoln County	36051	28
1711	Logan County	763	28
1712	Loup County	576	28
1713	Madison County	35278	28
1714	McPherson County	526	28
1715	Merrick County	7802	28
1716	Morrill County	4908	28
1717	Nance County	3623	28
1718	Nemaha County	7157	28
1719	Nuckolls County	4413	28
1720	Otoe County	15752	28
1721	Pawnee County	2709	28
1722	Perkins County	2921	28
1723	Phelps County	9213	28
1724	Pierce County	7150	28
1725	Platte County	32505	28
1726	Polk County	5275	28
1727	Red Willow County	11006	28
1728	Richardson County	8125	28
1729	Rock County	1411	28
1730	Saline County	14416	28
1731	Sarpy County	169331	28
1732	Saunders County	20929	28
1733	Scotts Bluff County	36848	28
1734	Seward County	17089	28
1735	Sheridan County	5251	28
1736	Sherman County	3106	28
1737	Sioux County	1313	28
1738	Stanton County	6133	28
1739	Thayer County	5189	28
1740	Thomas County	699	28
1741	Thurston County	6895	28
1742	Valley County	4193	28
1743	Washington County	20223	28
1744	Wayne County	9411	28
1745	Webster County	3688	28
1746	Wheeler County	759	28
1747	York County	13883	28
1748	Carson City	54080	29
1749	Churchill County	24063	29
1750	Clark County	2027868	29
1751	Douglas County	47118	29
1752	Elko County	52384	29
1753	Esmeralda County	832	29
1754	Eureka County	2076	29
1755	Humboldt County	17363	29
1756	Lander County	6032	29
1757	Lincoln County	5245	29
1758	Lyon County	51557	29
1759	Mineral County	4614	29
1760	Nye County	42297	29
1761	Pershing County	6877	29
1762	Storey County	3942	29
1763	Washoe County	433731	29
1764	White Pine County	10057	29
1765	Belknap County	60179	30
1766	Carroll County	47499	30
1767	Cheshire County	76610	30
1768	Coos County	31997	30
1769	Grafton County	89629	30
1770	Hillsborough County	403985	30
1771	Merrimack County	146849	30
1772	Rockingham County	299134	30
1773	Strafford County	124593	30
1774	Sullivan County	42984	30
1775	Atlantic County	275862	31
1776	Bergen County	925328	31
1777	Burlington County	450838	31
1778	Camden County	512854	31
1779	Cape May County	95897	31
1780	Cumberland County	157332	31
1781	Essex County	789565	31
1782	Gloucester County	290265	31
1783	Hudson County	660282	31
1784	Hunterdon County	126250	31
1785	Mercer County	370414	31
1786	Middlesex County	828919	31
1787	Monmouth County	629672	31
1788	Morris County	499397	31
1789	Ocean County	583414	31
1790	Passaic County	505672	31
1791	Salem County	65166	31
1792	Somerset County	330585	31
1793	Sussex County	145992	31
1794	Union County	548256	31
1795	Warren County	107379	31
1796	Bernalillo County	674221	32
1797	Catron County	3607	32
1798	Chaves County	65823	32
1799	Cibola County	27335	32
1800	Colfax County	13094	32
1801	Curry County	50598	32
1802	De Baca County	1907	32
1803	Doña Ana County	213460	32
1804	Eddy County	55471	32
1805	Grant County	29328	32
1806	Guadalupe County	4551	32
1807	Harding County	693	32
1808	Hidalgo County	4654	32
1809	Lea County	68062	32
1810	Lincoln County	20105	32
1811	Los Alamos County	17798	32
1812	Luna County	24659	32
1813	McKinley County	73308	32
1814	Mora County	4704	32
1815	Otero County	65616	32
1816	Quay County	8662	32
1817	Rio Arriba County	40072	32
1818	Roosevelt County	19955	32
1819	Sandoval County	136575	32
1820	San Juan County	126503	32
1821	San Miguel County	28541	32
1822	Santa Fe County	147423	32
1823	Sierra County	11572	32
1824	Socorro County	17584	32
1825	Taos County	33035	32
1826	Torrance County	15717	32
1827	Union County	4370	32
1828	Valencia County	76284	32
1829	Albany County	306945	33
1830	Allegany County	48109	33
1831	Bronx County	1418733	33
1832	Broome County	197534	33
1833	Cattaraugus County	78892	33
1834	Cayuga County	79477	33
1835	Chautauqua County	133080	33
1836	Chemung County	88506	33
1837	Chenango County	49503	33
1838	Clinton County	81591	33
1839	Columbia County	62243	33
1840	Cortland County	48976	33
1841	Delaware County	46722	33
1842	Dutchess County	296916	33
1843	Erie County	919866	33
1844	Essex County	38762	33
1845	Franklin County	51688	33
1846	Fulton County	54586	33
1847	Genesee County	59454	33
1848	Greene County	48455	33
1849	Hamilton County	4773	33
1850	Herkimer County	64181	33
1851	Jefferson County	119504	33
1852	Kings County	2592149	33
1853	Lewis County	27149	33
1854	Livingston County	64705	33
1855	Madison County	72382	33
1856	Monroe County	749606	33
1857	Montgomery County	49897	33
1858	Nassau County	1352146	33
1859	New York County	1626159	33
1860	Niagara County	214249	33
1861	Oneida County	233585	33
1862	Onondaga County	468387	33
1863	Ontario County	109103	33
1864	Orange County	375592	33
1865	Orleans County	42235	33
1866	Oswego County	121165	33
1867	Otsego County	61683	33
1868	Putnam County	99645	33
1869	Queens County	2296175	33
1870	Rensselaer County	159918	33
1871	Richmond County	472621	33
1872	Rockland County	320903	33
1873	Saratoga County	223865	33
1874	Schenectady County	155333	33
1875	Schoharie County	31844	33
1876	Schuyler County	18460	33
1877	Seneca County	35409	33
1878	Steuben County	98650	33
1879	St. Lawrence County	111963	33
1880	Suffolk County	1499738	33
1881	Sullivan County	76665	33
1882	Tioga County	50243	33
1883	Tompkins County	103617	33
1884	Ulster County	180998	33
1885	Warren County	65337	33
1886	Washington County	63093	33
1887	Wayne County	92473	33
1888	Westchester County	968802	33
1889	Wyoming County	41531	33
1890	Yates County	25156	33
1891	Alamance County	154378	34
1892	Alexander County	36930	34
1893	Alleghany County	10939	34
1894	Anson County	26161	34
1895	Ashe County	27151	34
1896	Avery County	17713	34
1897	Beaufort County	47464	34
1898	Bertie County	20344	34
1899	Bladen County	34843	34
1900	Brunswick County	115301	34
1901	Buncombe County	247912	34
1902	Burke County	89842	34
1903	Cabarrus County	187226	34
1904	Caldwell County	81990	34
1905	Camden County	10187	34
1906	Carteret County	68434	34
1907	Caswell County	23190	34
1908	Catawba County	154810	34
1909	Chatham County	66817	34
1910	Cherokee County	27218	34
1911	Chowan County	14726	34
1912	Clay County	10584	34
1913	Cleveland County	97047	34
1914	Columbus County	57246	34
1915	Craven County	104489	34
1916	Cumberland County	325871	34
1917	Currituck County	24396	34
1918	Dare County	35019	34
1919	Davidson County	163420	34
1920	Davie County	41554	34
1921	Duplin County	60084	34
1922	Durham County	288133	34
1923	Edgecombe County	55574	34
1924	Forsyth County	361220	34
1925	Franklin County	62260	34
1926	Gaston County	209420	34
1927	Gates County	11650	34
1928	Graham County	8736	34
1929	Granville County	58275	34
1930	Greene County	21232	34
1931	Guilford County	506610	34
1932	Halifax County	53453	34
1933	Harnett County	124987	34
1934	Haywood County	59183	34
1935	Henderson County	109540	34
1936	Hertford County	24431	34
1937	Hoke County	51322	34
1938	Hyde County	5721	34
1939	Iredell County	164517	34
1940	Jackson County	40919	34
1941	Johnston County	177967	34
1942	Jones County	10215	34
1943	Lee County	60266	34
1944	Lenoir County	58914	34
1945	Lincoln County	79740	34
1946	Macon County	33857	34
1947	Madison County	21022	34
1948	Martin County	23699	34
1949	McDowell County	44961	34
1950	Mecklenburg County	990977	34
1951	Mitchell County	15328	34
1952	Montgomery County	27571	34
1953	Moore County	91587	34
1954	Nash County	95093	34
1955	New Hanover County	213267	34
1956	Northampton County	20839	34
1957	Onslow County	185220	34
1958	Orange County	140352	34
1959	Pamlico County	12953	34
1960	Pasquotank County	39981	34
1961	Pender County	55334	34
1962	Perquimans County	13601	34
1963	Person County	39276	34
1964	Pitt County	174263	34
1965	Polk County	20411	34
1966	Randolph County	142577	34
1967	Richmond County	46405	34
1968	Robeson County	134841	34
1969	Rockingham County	91878	34
1970	Rowan County	138323	34
1971	Rutherford County	66956	34
1972	Sampson County	64150	34
1973	Scotland County	36025	34
1974	Stanly County	60635	34
1975	Stokes County	46588	34
1976	Surry County	73050	34
1977	Swain County	14058	34
1978	Transylvania County	32903	34
1979	Tyrrell County	4109	34
1980	Union County	212756	34
1981	Vance County	44808	34
1982	Wake County	974289	34
1983	Warren County	20575	34
1984	Washington County	12722	34
1985	Watauga County	52372	34
1986	Wayne County	124583	34
1987	Wilkes County	69023	34
1988	Wilson County	81667	34
1989	Yadkin County	38038	34
1990	Yancey County	17566	34
1991	Adams County	2360	35
1992	Barnes County	11190	35
1993	Benson County	6877	35
1994	Billings County	874	35
1995	Bottineau County	6736	35
1996	Bowman County	3214	35
1997	Burke County	2306	35
1998	Burleigh County	88457	35
1999	Cass County	162829	35
2000	Cavalier County	3896	35
2001	Dickey County	5248	35
2002	Divide County	2314	35
2003	Dunn County	4162	35
2004	Eddy County	2404	35
2005	Emmons County	3486	35
2006	Foster County	3366	35
2007	Golden Valley County	1823	35
2008	Grand Forks County	69179	35
2009	Grant County	2377	35
2010	Griggs County	2296	35
2011	Hettinger County	2660	35
2012	Kidder County	2428	35
2013	LaMoure County	4166	35
2014	Logan County	1946	35
2015	McHenry County	5922	35
2016	McIntosh County	2754	35
2017	McKenzie County	9314	35
2018	McLean County	9517	35
2019	Mercer County	8592	35
2020	Morton County	28990	35
2021	Mountrail County	9376	35
2022	Nelson County	3095	35
2023	Oliver County	1874	35
2024	Pembina County	7181	35
2025	Pierce County	4451	35
2026	Ramsey County	11554	35
2027	Ransom County	5516	35
2028	Renville County	2608	35
2029	Richland County	16339	35
2030	Rolette County	14582	35
2031	Sargent County	3890	35
2032	Sheridan County	1304	35
2033	Sioux County	4430	35
2034	Slope County	761	35
2035	Stark County	28212	35
2036	Steele County	1960	35
2037	Stutsman County	21120	35
2038	Towner County	2317	35
2039	Traill County	8245	35
2040	Walsh County	11104	35
2041	Ward County	67990	35
2042	Wells County	4206	35
2043	Williams County	29595	35
2044	Adams County	28105	36
2045	Allen County	105298	36
2046	Ashland County	53043	36
2047	Ashtabula County	99811	36
2048	Athens County	64681	36
2049	Auglaize County	45920	36
2050	Belmont County	69571	36
2051	Brown County	44264	36
2052	Butler County	371272	36
2053	Carroll County	28275	36
2054	Champaign County	39455	36
2055	Clark County	136167	36
2056	Clermont County	200218	36
2057	Clinton County	41945	36
2058	Columbiana County	105893	36
2059	Coshocton County	36760	36
2060	Crawford County	42808	36
2061	Cuyahoga County	1263154	36
2062	Darke County	52376	36
2063	Defiance County	38532	36
2064	Delaware County	184979	36
2065	Erie County	76048	36
2066	Fairfield County	148867	36
2067	Fayette County	28800	36
2068	Franklin County	1212263	36
2069	Fulton County	42488	36
2070	Gallia County	30621	36
2071	Geauga County	93972	36
2072	Greene County	163204	36
2073	Guernsey County	39636	36
2074	Hamilton County	804520	36
2075	Hancock County	75773	36
2076	Hardin County	31641	36
2077	Harrison County	15622	36
2078	Henry County	28092	36
2079	Highland County	43299	36
2080	Hocking County	28665	36
2081	Holmes County	43593	36
2082	Huron County	58889	36
2083	Jackson County	32783	36
2084	Jefferson County	67964	36
2085	Knox County	60810	36
2086	Lake County	229857	36
2087	Lawrence County	61917	36
2088	Licking County	168375	36
2089	Logan County	45481	36
2090	Lorain County	302827	36
2091	Lucas County	436393	36
2092	Madison County	43277	36
2093	Mahoning County	233869	36
2094	Marion County	65905	36
2095	Medina County	174915	36
2096	Meigs County	23496	36
2097	Mercer County	40784	36
2098	Miami County	103439	36
2099	Monroe County	14585	36
2100	Montgomery County	535846	36
2101	Morgan County	14904	36
2102	Morrow County	35033	36
2103	Muskingum County	85231	36
2104	Noble County	14628	36
2105	Ottawa County	41153	36
2106	Paulding County	19254	36
2107	Perry County	35997	36
2108	Pickaway County	56304	36
2109	Pike County	28367	36
2110	Portage County	163862	36
2111	Preble County	41732	36
2112	Putnam County	34088	36
2113	Richland County	121773	36
2114	Ross County	77910	36
2115	Sandusky County	60098	36
2116	Scioto County	78153	36
2117	Seneca County	55914	36
2118	Shelby County	49192	36
2119	Stark County	375432	36
2120	Summit County	541824	36
2121	Trumbull County	206442	36
2122	Tuscarawas County	92672	36
2123	Union County	53306	36
2124	Van Wert County	28459	36
2125	Vinton County	13276	36
2126	Warren County	219169	36
2127	Washington County	61310	36
2128	Wayne County	115071	36
2129	Williams County	37500	36
2130	Wood County	129264	36
2131	Wyandot County	22447	36
2132	Adair County	22194	37
2133	Alfalfa County	5847	37
2134	Atoka County	13898	37
2135	Beaver County	5566	37
2136	Beckham County	23637	37
2137	Blaine County	9720	37
2138	Bryan County	44244	37
2139	Caddo County	29594	37
2140	Canadian County	126123	37
2141	Carter County	48491	37
2142	Cherokee County	48017	37
2143	Choctaw County	15045	37
2144	Cimarron County	2335	37
2145	Cleveland County	269340	37
2146	Coal County	5867	37
2147	Comanche County	124937	37
2148	Cotton County	6152	37
2149	Craig County	14672	37
2150	Creek County	70470	37
2151	Custer County	29377	37
2152	Delaware County	41377	37
2153	Dewey County	4844	37
2154	Ellis County	4170	37
2155	Garfield County	62267	37
2156	Garvin County	27334	37
2157	Grady County	53685	37
2158	Grant County	4528	37
2159	Greer County	6171	37
2160	Harmon County	2869	37
2161	Harper County	3813	37
2162	Haskell County	13052	37
2163	Hughes County	13823	37
2164	Jackson County	26088	37
2165	Jefferson County	6432	37
2166	Johnston County	10990	37
2167	Kay County	45633	37
2168	Kingfisher County	15276	37
2169	Kiowa County	9341	37
2170	Latimer County	10775	37
2171	Le Flore County	49774	37
2172	Lincoln County	34351	37
2173	Logan County	44422	37
2174	Love County	9742	37
2175	Major County	7683	37
2176	Marshall County	15988	37
2177	Mayes County	40804	37
2178	McClain County	36511	37
2179	McCurtain County	33065	37
2180	McIntosh County	20493	37
2181	Murray County	13712	37
2182	Muskogee County	70303	37
2183	Noble County	11446	37
2184	Nowata County	10555	37
2185	Okfuskee County	12377	37
2186	Oklahoma County	755245	37
2187	Okmulgee County	39438	37
2188	Osage County	47987	37
2189	Ottawa County	32245	37
2190	Pawnee County	16513	37
2191	Payne County	79066	37
2192	Pittsburg County	44703	37
2193	Pontotoc County	37992	37
2194	Pottawatomie County	71158	37
2195	Pushmataha County	11233	37
2196	Roger Mills County	3743	37
2197	Rogers County	89044	37
2198	Seminole County	25426	37
2199	Sequoyah County	41218	37
2200	Stephens County	44919	37
2201	Texas County	22081	37
2202	Tillman County	7711	37
2203	Tulsa County	622409	37
2204	Wagoner County	75700	37
2205	Washington County	51577	37
2206	Washita County	11678	37
2207	Woods County	9041	37
2208	Woodward County	21221	37
2209	Baker County	16018	38
2210	Benton County	86591	38
2211	Clackamas County	388263	38
2212	Clatsop County	37244	38
2213	Columbia County	49344	38
2214	Coos County	62282	38
2215	Crook County	20815	38
2216	Curry County	22339	38
2217	Deschutes County	165954	38
2218	Douglas County	106940	38
2219	Gilliam County	1947	38
2220	Grant County	7283	38
2221	Harney County	7146	38
2222	Hood River County	22675	38
2223	Jackson County	208545	38
2224	Jefferson County	21145	38
2225	Josephine County	83306	38
2226	Klamath County	65910	38
2227	Lake County	7820	38
2228	Lane County	356212	38
2229	Lincoln County	46350	38
2230	Linn County	118765	38
2231	Malheur County	30479	38
2232	Marion County	323614	38
2233	Morrow County	11336	38
2234	Multnomah County	766135	38
2235	Polk County	76794	38
2236	Sherman County	1731	38
2237	Tillamook County	25317	38
2238	Umatilla County	76720	38
2239	Union County	25652	38
2240	Wallowa County	6814	38
2241	Wasco County	25477	38
2242	Washington County	554996	38
2243	Wheeler County	1381	38
2244	Yamhill County	100725	38
2245	Adams County	101546	39
2246	Allegheny County	1231527	39
2247	Armstrong County	68107	39
2248	Beaver County	170115	39
2249	Bedford County	49055	39
2250	Berks County	413521	39
2251	Blair County	126314	39
2252	Bradford County	62316	39
2253	Bucks County	626976	39
2254	Butler County	185476	39
2255	Cambria County	140499	39
2256	Cameron County	4886	39
2257	Carbon County	64786	39
2258	Centre County	155403	39
2259	Chester County	509468	39
2260	Clarion County	39155	39
2261	Clearfield County	81174	39
2262	Clinton County	39954	39
2263	Columbia County	66797	39
2264	Crawford County	87376	39
2265	Cumberland County	241212	39
2266	Dauphin County	270937	39
2267	Delaware County	561973	39
2268	Elk County	31479	39
2269	Erie County	280294	39
2270	Fayette County	134999	39
2271	Forest County	7631	39
2272	Franklin County	152085	39
2273	Fulton County	14670	39
2274	Greene County	37838	39
2275	Huntingdon County	45694	39
2276	Indiana County	87745	39
2277	Jefferson County	44966	39
2278	Juniata County	24768	39
2279	Lackawanna County	213931	39
2280	Lancaster County	529600	39
2281	Lawrence County	89333	39
2282	Lebanon County	135486	39
2283	Lehigh County	355092	39
2284	Luzerne County	320103	39
2285	Lycoming County	116754	39
2286	McKean County	42979	39
2287	Mercer County	115195	39
2288	Mifflin County	46616	39
2289	Monroe County	167148	39
2290	Montgomery County	812376	39
2291	Montour County	18541	39
2292	Northampton County	299791	39
2293	Northumberland County	94076	39
2294	Perry County	45562	39
2295	Philadelphia County	1553165	39
2296	Pike County	56591	39
2297	Potter County	17497	39
2298	Schuylkill County	146920	39
2299	Snyder County	39865	39
2300	Somerset County	76520	39
2301	Sullivan County	6351	39
2302	Susquehanna County	42286	39
2303	Tioga County	42463	39
2304	Union County	44867	39
2305	Venango County	53907	39
2306	Warren County	40885	39
2307	Washington County	208206	39
2308	Wayne County	51548	39
2309	Westmoreland County	362437	39
2310	Wyoming County	28003	39
2311	York County	438965	39
2312	Bristol County	49220	40
2313	Kent County	165035	40
2314	Newport County	82397	40
2315	Providence County	628600	40
2316	Washington County	126259	40
2317	Abbeville County	25007	41
2318	Aiken County	164176	41
2319	Allendale County	9839	41
2320	Anderson County	190641	41
2321	Bamberg County	15430	41
2322	Barnwell County	22119	41
2323	Beaufort County	171838	41
2324	Berkeley County	194020	41
2325	Calhoun County	15055	41
2326	Charleston County	372803	41
2327	Cherokee County	55885	41
2328	Chester County	32578	41
2329	Chesterfield County	46197	41
2330	Clarendon County	34355	41
2331	Colleton County	37788	41
2332	Darlington County	67935	41
2333	Dillon County	31229	41
2334	Dorchester County	145397	41
2335	Edgefield County	26436	41
2336	Fairfield County	23109	41
2337	Florence County	138326	41
2338	Georgetown County	60440	41
2339	Greenville County	474266	41
2340	Greenwood County	69723	41
2341	Hampton County	20408	41
2342	Horry County	289650	41
2343	Jasper County	26629	41
2344	Kershaw County	62516	41
2345	Lancaster County	80458	41
2346	Laurens County	66229	41
2347	Lee County	18347	41
2348	Lexington County	273752	41
2349	Marion County	32072	41
2350	Marlboro County	28003	41
2351	McCormick County	9947	41
2352	Newberry County	37521	41
2353	Oconee County	75045	41
2354	Orangeburg County	90942	41
2355	Pickens County	119829	41
2356	Richland County	399256	41
2357	Saluda County	20091	41
2358	Spartanburg County	290969	41
2359	Sumter County	108123	41
2360	Union County	28030	41
2361	Williamsburg County	33067	41
2362	York County	239363	41
2363	Aurora County	2720	42
2364	Beadle County	18080	42
2365	Bennett County	3452	42
2366	Bon Homme County	7046	42
2367	Brookings County	32968	42
2368	Brown County	37907	42
2369	Brule County	5366	42
2370	Buffalo County	2024	42
2371	Butte County	10330	42
2372	Campbell County	1334	42
2373	Charles Mix County	9241	42
2374	Clark County	3610	42
2375	Clay County	13935	42
2376	Codington County	27853	42
2377	Corson County	4215	42
2378	Custer County	8468	42
2379	Davison County	19823	42
2380	Day County	5596	42
2381	Deuel County	4320	42
2382	Dewey County	5586	42
2383	Douglas County	3023	42
2384	Edmunds County	4041	42
2385	Fall River County	6839	42
2386	Faulk County	2386	42
2387	Grant County	7281	42
2388	Gregory County	4242	42
2389	Haakon County	1894	42
2390	Hamlin County	5961	42
2391	Hand County	3391	42
2392	Hanson County	3405	42
2393	Harding County	1262	42
2394	Hughes County	17508	42
2395	Hutchinson County	7145	42
2396	Hyde County	1391	42
2397	Jackson County	3216	42
2398	Jerauld County	2066	42
2399	Jones County	1001	42
2400	Kingsbury County	5065	42
2401	Lake County	12055	42
2402	Lawrence County	24910	42
2403	Lincoln County	49858	42
2404	Lyman County	3892	42
2405	Marshall County	4763	42
2406	McCook County	5654	42
2407	McPherson County	2457	42
2408	Meade County	27202	42
2409	Mellette County	2081	42
2410	Miner County	2333	42
2411	Minnehaha County	179640	42
2412	Moody County	6404	42
2413	Pennington County	105761	42
2414	Perkins County	3037	42
2415	Potter County	2394	42
2416	Roberts County	10251	42
2417	Sanborn County	2324	42
2418	Shannon County	14118	42
2419	Spink County	6610	42
2420	Stanley County	2981	42
2421	Sully County	1437	42
2422	Todd County	9982	42
2423	Tripp County	5498	42
2424	Turner County	8361	42
2425	Union County	14829	42
2426	Walworth County	5524	42
2427	Yankton County	22696	42
2428	Ziebach County	2834	42
2429	Anderson County	75542	43
2430	Bedford County	45901	43
2431	Benton County	16290	43
2432	Bledsoe County	12841	43
2433	Blount County	125099	43
2434	Bradley County	101848	43
2435	Campbell County	40238	43
2436	Cannon County	13775	43
2437	Carroll County	28513	43
2438	Carter County	57338	43
2439	Cheatham County	39492	43
2440	Chester County	17321	43
2441	Claiborne County	31560	43
2442	Clay County	7774	43
2443	Cocke County	35479	43
2444	Coffee County	53357	43
2445	Crockett County	14591	43
2446	Cumberland County	57466	43
2447	Davidson County	658602	43
2448	Decatur County	11661	43
2449	DeKalb County	19164	43
2450	Dickson County	50266	43
2451	Dyer County	38213	43
2452	Fayette County	38690	43
2453	Fentress County	17909	43
2454	Franklin County	41129	43
2455	Gibson County	49457	43
2456	Giles County	28746	43
2457	Grainger County	22702	43
2458	Greene County	68267	43
2459	Grundy County	13498	43
2460	Hamblen County	63074	43
2461	Hamilton County	348673	43
2462	Hancock County	6679	43
2463	Hardeman County	26306	43
2464	Hardin County	26034	43
2465	Hawkins County	56800	43
2466	Haywood County	18224	43
2467	Henderson County	28048	43
2468	Henry County	32210	43
2469	Hickman County	24267	43
2470	Houston County	8292	43
2471	Humphreys County	18243	43
2472	Jackson County	11517	43
2473	Jefferson County	52123	43
2474	Johnson County	17977	43
2475	Knox County	444622	43
2476	Lake County	7731	43
2477	Lauderdale County	27795	43
2478	Lawrence County	41990	43
2479	Lewis County	11961	43
2480	Lincoln County	33633	43
2481	Loudon County	50448	43
2482	Macon County	22701	43
2483	Madison County	98733	43
2484	Marion County	28374	43
2485	Marshall County	31130	43
2486	Maury County	83761	43
2487	McMinn County	52341	43
2488	McNairy County	26140	43
2489	Meigs County	11649	43
2490	Monroe County	45265	43
2491	Montgomery County	184119	43
2492	Moore County	6301	43
2493	Morgan County	21915	43
2494	Obion County	31131	43
2495	Overton County	22075	43
2496	Perry County	7869	43
2497	Pickett County	5090	43
2498	Polk County	16690	43
2499	Putnam County	73525	43
2500	Rhea County	32513	43
2501	Roane County	53047	43
2502	Robertson County	67383	43
2503	Rutherford County	281029	43
2504	Scott County	22015	43
2505	Sequatchie County	14681	43
2506	Sevier County	93570	43
2507	Shelby County	939465	43
2508	Smith County	19074	43
2509	Stewart County	13362	43
2510	Sullivan County	156595	43
2511	Sumner County	168888	43
2512	Tipton County	61586	43
2513	Trousdale County	7828	43
2514	Unicoi County	18082	43
2515	Union County	19102	43
2516	Van Buren County	5583	43
2517	Warren County	39965	43
2518	Washington County	125546	43
2519	Wayne County	16939	43
2520	Weakley County	34450	43
2521	White County	26244	43
2522	Williamson County	198901	43
2523	Wilson County	121945	43
2524	Anderson County	57938	44
2525	Andrews County	16799	44
2526	Angelina County	87441	44
2527	Aransas County	24356	44
2528	Archer County	8681	44
2529	Armstrong County	1949	44
2530	Atascosa County	47093	44
2531	Austin County	28847	44
2532	Bailey County	7114	44
2533	Bandera County	20601	44
2534	Bastrop County	75825	44
2535	Baylor County	3614	44
2536	Bee County	32799	44
2537	Bell County	326843	44
2538	Bexar County	1817610	44
2539	Blanco County	10723	44
2540	Borden County	637	44
2541	Bosque County	17855	44
2542	Bowie County	93487	44
2543	Brazoria County	330242	44
2544	Brazos County	203164	44
2545	Brewster County	9286	44
2546	Briscoe County	1537	44
2547	Brooks County	7237	44
2548	Brown County	37749	44
2549	Burleson County	17169	44
2550	Burnet County	43823	44
2551	Caldwell County	39232	44
2552	Calhoun County	21806	44
2553	Callahan County	13525	44
2554	Cameron County	417276	44
2555	Camp County	12413	44
2556	Carson County	6010	44
2557	Cass County	30331	44
2558	Castro County	8030	44
2559	Chambers County	36812	44
2560	Cherokee County	50878	44
2561	Childress County	7095	44
2562	Clay County	10473	44
2563	Cochran County	3016	44
2564	Coke County	3210	44
2565	Coleman County	8543	44
2566	Collin County	854778	44
2567	Collingsworth County	3099	44
2568	Colorado County	20752	44
2569	Comal County	118480	44
2570	Comanche County	13623	44
2571	Concho County	4043	44
2572	Cooke County	38467	44
2573	Coryell County	76192	44
2574	Cottle County	1452	44
2575	Crane County	4773	44
2576	Crockett County	3807	44
2577	Crosby County	5991	44
2578	Culberson County	2277	44
2579	Dallam County	7057	44
2580	Dallas County	2480331	44
2581	Dawson County	13810	44
2582	Deaf Smith County	19177	44
2583	Delta County	5238	44
2584	Denton County	728799	44
2585	DeWitt County	20503	44
2586	Dickens County	2291	44
2587	Dimmit County	10897	44
2588	Donley County	3522	44
2589	Duval County	11640	44
2590	Eastland County	18245	44
2591	Ector County	149378	44
2592	Edwards County	1884	44
2593	Ellis County	155976	44
2594	El Paso County	827718	44
2595	Erath County	39658	44
2596	Falls County	17493	44
2597	Fannin County	33659	44
2598	Fayette County	24821	44
2599	Fisher County	3856	44
2600	Floyd County	6230	44
2601	Foard County	1277	44
2602	Fort Bend County	652365	44
2603	Franklin County	10660	44
2604	Freestone County	19646	44
2605	Frio County	18065	44
2606	Gaines County	18921	44
2607	Galveston County	306782	44
2608	Garza County	6317	44
2609	Gillespie County	25357	44
2610	Glasscock County	1251	44
2611	Goliad County	7465	44
2612	Gonzales County	20312	44
2613	Gray County	23043	44
2614	Grayson County	122353	44
2615	Gregg County	123024	44
2616	Grimes County	26859	44
2617	Guadalupe County	143183	44
2618	Hale County	35764	44
2619	Hall County	3239	44
2620	Hamilton County	8310	44
2621	Hansford County	5555	44
2622	Hardeman County	4016	44
2623	Hardin County	55417	44
2624	Harris County	4336853	44
2625	Harrison County	66886	44
2626	Hartley County	6100	44
2627	Haskell County	5875	44
2628	Hays County	176026	44
2629	Hemphill County	4158	44
2630	Henderson County	78675	44
2631	Hidalgo County	815996	44
2632	Hill County	34823	44
2633	Hockley County	23530	44
2634	Hood County	52905	44
2635	Hopkins County	35565	44
2636	Houston County	22911	44
2637	Howard County	36147	44
2638	Hudspeth County	3318	44
2639	Hunt County	87048	44
2640	Hutchinson County	21819	44
2641	Irion County	1612	44
2642	Jack County	8957	44
2643	Jackson County	14591	44
2644	Jasper County	35649	44
2645	Jeff Davis County	2253	44
2646	Jefferson County	252358	44
2647	Jim Hogg County	5245	44
2648	Jim Wells County	41680	44
2649	Johnson County	154707	44
2650	Jones County	19859	44
2651	Karnes County	15081	44
2652	Kaufman County	108568	44
2653	Kendall County	37766	44
2654	Kenedy County	412	44
2655	Kent County	807	44
2656	Kerr County	49953	44
2657	Kimble County	4481	44
2658	King County	285	44
2659	Kinney County	3586	44
2660	Kleberg County	32101	44
2661	Knox County	3767	44
2662	Lamar County	49426	44
2663	Lamb County	13775	44
2664	Lampasas County	20222	44
2665	La Salle County	7369	44
2666	Lavaca County	19581	44
2667	Lee County	16628	44
2668	Leon County	16742	44
2669	Liberty County	76907	44
2670	Limestone County	23326	44
2671	Lipscomb County	3485	44
2672	Live Oak County	11867	44
2673	Llano County	19444	44
2674	Loving County	95	44
2675	Lubbock County	289324	44
2676	Lynn County	5723	44
2677	Madison County	13781	44
2678	Marion County	10235	44
2679	Martin County	5312	44
2680	Mason County	4128	44
2681	Matagorda County	36592	44
2682	Maverick County	55932	44
2683	McCulloch County	8330	44
2684	McLennan County	241481	44
2685	McMullen County	764	44
2686	Medina County	47399	44
2687	Menard County	2148	44
2688	Midland County	151468	44
2689	Milam County	24167	44
2690	Mills County	4907	44
2691	Mitchell County	9402	44
2692	Montague County	19503	44
2693	Montgomery County	499137	44
2694	Moore County	22141	44
2695	Morris County	12834	44
2696	Motley County	1196	44
2697	Nacogdoches County	65330	44
2698	Navarro County	48038	44
2699	Newton County	14140	44
2700	Nolan County	15037	44
2701	Nueces County	352107	44
2702	Ochiltree County	10806	44
2703	Oldham County	2102	44
2704	Orange County	82957	44
2705	Palo Pinto County	27889	44
2706	Panola County	23870	44
2707	Parker County	121418	44
2708	Parmer County	9965	44
2709	Pecos County	15697	44
2710	Polk County	45790	44
2711	Potter County	121661	44
2712	Presidio County	7201	44
2713	Rains County	11065	44
2714	Randall County	126474	44
2715	Reagan County	3601	44
2716	Real County	3350	44
2717	Red River County	12470	44
2718	Reeves County	13965	44
2719	Refugio County	7305	44
2720	Roberts County	831	44
2721	Robertson County	16486	44
2722	Rockwall County	85245	44
2723	Runnels County	10309	44
2724	Rusk County	53622	44
2725	Sabine County	10361	44
2726	San Augustine County	8769	44
2727	San Jacinto County	26856	44
2728	San Patricio County	66137	44
2729	San Saba County	6012	44
2730	Schleicher County	3206	44
2731	Scurry County	17302	44
2732	Shackelford County	3375	44
2733	Shelby County	25792	44
2734	Sherman County	3093	44
2735	Smith County	216080	44
2736	Somervell County	8658	44
2737	Starr County	61963	44
2738	Stephens County	9247	44
2739	Sterling County	1219	44
2740	Stonewall County	1432	44
2741	Sutton County	4006	44
2742	Swisher County	7763	44
2743	Tarrant County	1911541	44
2744	Taylor County	134117	44
2745	Terrell County	903	44
2746	Terry County	12743	44
2747	Throckmorton County	1600	44
2748	Titus County	32581	44
2749	Tom Green County	114954	44
2750	Travis County	1120954	44
2751	Trinity County	14393	44
2752	Tyler County	21464	44
2753	Upshur County	39884	44
2754	Upton County	3372	44
2755	Uvalde County	26926	44
2756	Val Verde County	48623	44
2757	Van Zandt County	52481	44
2758	Victoria County	90028	44
2759	Walker County	68817	44
2760	Waller County	45213	44
2761	Ward County	11244	44
2762	Washington County	34147	44
2763	Webb County	262495	44
2764	Wharton County	41216	44
2765	Wheeler County	5751	44
2766	Wichita County	132047	44
2767	Wilbarger County	13131	44
2768	Willacy County	21921	44
2769	Williamson County	471014	44
2770	Wilson County	45418	44
2771	Winkler County	7606	44
2772	Wise County	60939	44
2773	Wood County	42306	44
2774	Yoakum County	8184	44
2775	Young County	18341	44
2776	Zapata County	14390	44
2777	Zavala County	12156	44
2778	Beaver County	6459	45
2779	Box Elder County	50794	45
2780	Cache County	116909	45
2781	Carbon County	20988	45
2782	Daggett County	1127	45
2783	Davis County	322094	45
2784	Duchesne County	20308	45
2785	Emery County	10749	45
2786	Garfield County	5083	45
2787	Grand County	9360	45
2788	Iron County	46780	45
2789	Juab County	10348	45
2790	Kane County	7260	45
2791	Millard County	12662	45
2792	Morgan County	10173	45
2793	Piute County	1510	45
2794	Rich County	2288	45
2795	Salt Lake County	1079721	45
2796	San Juan County	14973	45
2797	Sanpete County	28237	45
2798	Sevier County	20852	45
2799	Summit County	38486	45
2800	Tooele County	60762	45
2801	Uintah County	35555	45
2802	Utah County	551891	45
2803	Wasatch County	26437	45
2804	Washington County	147800	45
2805	Wayne County	2747	45
2806	Weber County	238519	45
2807	Addison County	36791	46
2808	Bennington County	36659	46
2809	Caledonia County	31157	46
2810	Chittenden County	159515	46
2811	Essex County	6211	46
2812	Franklin County	48294	46
2813	Grand Isle County	6987	46
2814	Lamoille County	25067	46
2815	Orange County	28915	46
2816	Orleans County	27169	46
2817	Rutland County	60622	46
2818	Washington County	59319	46
2819	Windham County	43857	46
2820	Windsor County	56067	46
2821	Accomack County	33148	47
2822	Albemarle County	103000	47
2823	Alexandria city	148892	47
2824	Alleghany County	16161	47
2825	Amelia County	12745	47
2826	Amherst County	32178	47
2827	Appomattox County	15255	47
2828	Arlington County	224906	47
2829	Augusta County	73912	47
2830	Bath County	4616	47
2831	Bedford city	5948	47
2832	Bedford County	69825	47
2833	Bland County	6735	47
2834	Botetourt County	33002	47
2835	Bristol city	17341	47
2836	Brunswick County	16973	47
2837	Buchanan County	23597	47
2838	Buckingham County	17136	47
2839	Buena Vista city	6680	47
2840	Campbell County	55235	47
2841	Caroline County	29298	47
2842	Carroll County	29883	47
2843	Charles City County	7130	47
2844	Charlotte County	12305	47
2845	Charlottesville city	44349	47
2846	Chesapeake city	230571	47
2847	Chesterfield County	327745	47
2848	Clarke County	14348	47
2849	Colonial Heights city	17634	47
2850	Covington city	5818	47
2851	Craig County	5210	47
2852	Culpeper County	48506	47
2853	Cumberland County	9841	47
2854	Danville city	42907	47
2855	Dickenson County	15486	47
2856	Dinwiddie County	27904	47
2857	Emporia city	5588	47
2858	Essex County	11229	47
2859	Fairfax city	23973	47
2860	Fairfax County	1130924	47
2861	Falls Church city	13508	47
2862	Fauquier County	67207	47
2863	Floyd County	15528	47
2864	Fluvanna County	25977	47
2865	Franklin city	8638	47
2866	Franklin County	56335	47
2867	Frederick County	81319	47
2868	Fredericksburg city	28132	47
2869	Galax city	7035	47
2870	Giles County	16925	47
2871	Gloucester County	36834	47
2872	Goochland County	21626	47
2873	Grayson County	15161	47
2874	Greene County	18804	47
2875	Greensville County	11886	47
2876	Halifax County	35401	47
2877	Hampton city	136699	47
2878	Hanover County	101330	47
2879	Harrisonburg city	51395	47
2880	Henrico County	318611	47
2881	Henry County	52617	47
2882	Highland County	2215	47
2883	Hopewell city	22163	47
2884	Isle of Wight County	35656	47
2885	James City County	70516	47
2886	King and Queen County	7130	47
2887	King George County	24926	47
2888	King William County	16097	47
2889	Lancaster County	11148	47
2890	Lee County	25185	47
2891	Lexington city	7170	47
2892	Loudoun County	349679	47
2893	Louisa County	33945	47
2894	Lunenburg County	12527	47
2895	Lynchburg city	78014	47
2896	Madison County	13200	47
2897	Manassas city	41705	47
2898	Manassas Park city	16149	47
2899	Martinsville city	13755	47
2900	Mathews County	8897	47
2901	Mecklenburg County	31426	47
2902	Middlesex County	10762	47
2903	Montgomery County	96207	47
2904	Nelson County	14789	47
2905	New Kent County	19507	47
2906	Newport News city	182020	47
2907	Norfolk city	246139	47
2908	Northampton County	12125	47
2909	Northumberland County	12200	47
2910	Norton city	4017	47
2911	Nottoway County	15773	47
2912	Orange County	34689	47
2913	Page County	23821	47
2914	Patrick County	18368	47
2915	Petersburg city	32538	47
2916	Pittsylvania County	62426	47
2917	Poquoson city	12104	47
2918	Portsmouth city	96205	47
2919	Powhatan County	28259	47
2920	Prince Edward County	22802	47
2921	Prince George County	37253	47
2922	Prince William County	438580	47
2923	Pulaski County	34507	47
2924	Radford city	17184	47
2925	Rappahannock County	7478	47
2926	Richmond city	214114	47
2927	Richmond County	8953	47
2928	Roanoke city	98465	47
2929	Roanoke County	93524	47
2930	Rockbridge County	22307	47
2931	Rockingham County	77741	47
2932	Russell County	28264	47
2933	Salem city	25299	47
2934	Scott County	22640	47
2935	Shenandoah County	42684	47
2936	Smyth County	31652	47
2937	Southampton County	18128	47
2938	Spotsylvania County	127348	47
2939	Stafford County	136788	47
2940	Staunton city	24350	47
2941	Suffolk city	85728	47
2942	Surry County	6765	47
2943	Sussex County	11810	47
2944	Tazewell County	44103	47
2945	Virginia Beach city	448479	47
2946	Warren County	38699	47
2947	Washington County	54907	47
2948	Waynesboro city	21263	47
2949	Westmoreland County	17612	47
2950	Williamsburg city	15206	47
2951	Winchester city	27216	47
2952	Wise County	40589	47
2953	Wythe County	29344	47
2954	York County	66269	47
2955	Adams County	19067	48
2956	Asotin County	22110	48
2957	Benton County	184486	48
2958	Chelan County	73967	48
2959	Clallam County	72312	48
2960	Clark County	443817	48
2961	Columbia County	4032	48
2962	Cowlitz County	101860	48
2963	Douglas County	39471	48
2964	Ferry County	7646	48
2965	Franklin County	86638	48
2966	Garfield County	2256	48
2967	Grant County	91878	48
2968	Grays Harbor County	71078	48
2969	Island County	78801	48
2970	Jefferson County	30076	48
2971	King County	2044449	48
2972	Kitsap County	253968	48
2973	Kittitas County	41765	48
2974	Klickitat County	20866	48
2975	Lewis County	75081	48
2976	Lincoln County	10301	48
2977	Mason County	60497	48
2978	Okanogan County	41193	48
2979	Pacific County	20498	48
2980	Pend Oreille County	12896	48
2981	Pierce County	819743	48
2982	San Juan County	15875	48
2983	Skagit County	118837	48
2984	Skamania County	11274	48
2985	Snohomish County	745913	48
2986	Spokane County	479398	48
2987	Stevens County	43430	48
2988	Thurston County	262388	48
2989	Wahkiakum County	4042	48
2990	Walla Walla County	59530	48
2991	Whatcom County	206353	48
2992	Whitman County	46570	48
2993	Yakima County	247044	48
2994	Barbour County	16770	49
2995	Berkeley County	108706	49
2996	Boone County	24224	49
2997	Braxton County	14502	49
2998	Brooke County	23737	49
2999	Cabell County	97133	49
3000	Calhoun County	7564	49
3001	Clay County	9244	49
3002	Doddridge County	8344	49
3003	Fayette County	45599	49
3004	Gilmer County	8672	49
3005	Grant County	11759	49
3006	Greenbrier County	35644	49
3007	Hampshire County	23445	49
3008	Hancock County	30291	49
3009	Hardy County	13920	49
3010	Harrison County	68972	49
3011	Jackson County	29178	49
3012	Jefferson County	55073	49
3013	Kanawha County	191275	49
3014	Lewis County	16452	49
3015	Lincoln County	21559	49
3016	Logan County	35987	49
3017	Marion County	56868	49
3018	Marshall County	32459	49
3019	Mason County	27126	49
3020	McDowell County	20876	49
3021	Mercer County	61984	49
3022	Mineral County	27704	49
3023	Mingo County	25900	49
3024	Monongalia County	102274	49
3025	Monroe County	13483	49
3026	Morgan County	17498	49
3027	Nicholas County	25965	49
3028	Ohio County	43727	49
3029	Pendleton County	7471	49
3030	Pleasants County	7577	49
3031	Pocahontas County	8669	49
3032	Preston County	33859	49
3033	Putnam County	56650	49
3034	Raleigh County	78833	49
3035	Randolph County	29415	49
3036	Ritchie County	10073	49
3037	Roane County	14656	49
3038	Summers County	13563	49
3039	Taylor County	16973	49
3040	Tucker County	6968	49
3041	Tyler County	8995	49
3042	Upshur County	24665	49
3043	Wayne County	41437	49
3044	Webster County	8893	49
3045	Wetzel County	16204	49
3046	Wirt County	5901	49
3047	Wood County	86569	49
3048	Wyoming County	23019	49
3049	Adams County	20480	50
3050	Ashland County	16016	50
3051	Barron County	45676	50
3052	Bayfield County	15156	50
3053	Brown County	254586	50
3054	Buffalo County	13357	50
3055	Burnett County	15333	50
3056	Calumet County	49617	50
3057	Chippewa County	63132	50
3058	Clark County	34615	50
3059	Columbia County	56653	50
3060	Crawford County	16397	50
3061	Dane County	509939	50
3062	Dodge County	88344	50
3063	Door County	27896	50
3064	Douglas County	43887	50
3065	Dunn County	44122	50
3066	Eau Claire County	101438	50
3067	Florence County	4520	50
3068	Fond du Lac County	101798	50
3069	Forest County	9126	50
3070	Grant County	51069	50
3071	Green County	37090	50
3072	Green Lake County	18959	50
3073	Iowa County	23749	50
3074	Iron County	5886	50
3075	Jackson County	20644	50
3076	Jefferson County	84509	50
3077	Juneau County	26547	50
3078	Kenosha County	167757	50
3079	Kewaunee County	20505	50
3080	La Crosse County	116713	50
3081	Lafayette County	16766	50
3082	Langlade County	19575	50
3083	Lincoln County	28684	50
3084	Manitowoc County	80654	50
3085	Marathon County	135416	50
3086	Marinette County	41610	50
3087	Marquette County	15176	50
3088	Menominee County	4317	50
3089	Milwaukee County	956023	50
3090	Monroe County	45298	50
3091	Oconto County	37318	50
3092	Oneida County	35689	50
3093	Outagamie County	180345	50
3094	Ozaukee County	87054	50
3095	Pepin County	7360	50
3096	Pierce County	40976	50
3097	Polk County	43476	50
3098	Portage County	70380	50
3099	Price County	13802	50
3100	Racine County	195041	50
3101	Richland County	17717	50
3102	Rock County	160739	50
3103	Rusk County	14395	50
3104	Sauk County	63162	50
3105	Sawyer County	16513	50
3106	Shawano County	41643	50
3107	Sheboygan County	114922	50
3108	St. Croix County	85930	50
3109	Taylor County	20610	50
3110	Trempealeau County	29582	50
3111	Vernon County	30329	50
3112	Vilas County	21368	50
3113	Walworth County	102945	50
3114	Washburn County	15686	50
3115	Washington County	132739	50
3116	Waukesha County	393843	50
3117	Waupaca County	52285	50
3118	Waushara County	24329	50
3119	Winnebago County	169541	50
3120	Wood County	73959	50
3121	Albany County	37422	51
3122	Big Horn County	11994	51
3123	Campbell County	48176	51
3124	Carbon County	15748	51
3125	Converse County	14313	51
3126	Crook County	7184	51
3127	Fremont County	40998	51
3128	Goshen County	13612	51
3129	Hot Springs County	4847	51
3130	Johnson County	8628	51
3131	Laramie County	95809	51
3132	Lincoln County	18364	51
3133	Natrona County	80973	51
3134	Niobrara County	2541	51
3135	Park County	29227	51
3136	Platte County	8765	51
3137	Sheridan County	29824	51
3138	Sublette County	10041	51
3139	Sweetwater County	45237	51
3140	Teton County	22268	51
3141	Uinta County	21066	51
3142	Washakie County	8463	51
3143	Weston County	7158	51
\.


--
-- Data for Name: states; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.states (id, name, population, counties) FROM stdin;
1	Alabama	4833722	67
2	Alaska	735132	29
3	Arizona	6626624	15
4	Arkansas	2959373	75
5	California	38332521	58
6	Colorado	5268367	64
7	Connecticut	3596080	8
8	Delaware	925749	3
9	District of Columbia	646449	1
10	Florida	19552860	67
11	Georgia	9992167	159
12	Hawaii	1404054	5
13	Idaho	1612136	44
14	Illinois	12882135	102
15	Indiana	6570902	92
16	Iowa	3090415	99
17	Kansas	2893957	105
18	Kentucky	4395295	120
19	Louisiana	4625470	64
20	Maine	1328302	16
21	Maryland	5928814	24
22	Massachusetts	6692824	14
23	Michigan	9895622	83
24	Minnesota	5420380	87
25	Mississippi	2991207	82
26	Missouri	6044171	115
27	Montana	1015165	56
28	Nebraska	1868516	93
29	Nevada	2790136	17
30	New Hampshire	1323459	10
31	New Jersey	8899339	21
32	New Mexico	2085287	33
33	New York	19651127	62
34	North Carolina	9848060	100
35	North Dakota	723393	53
36	Ohio	11570808	88
37	Oklahoma	3850568	77
38	Oregon	3930065	36
39	Pennsylvania	12773801	67
40	Rhode Island	1051511	5
41	South Carolina	4774839	46
42	South Dakota	844877	66
43	Tennessee	6495978	95
44	Texas	26448193	254
45	Utah	2900872	29
46	Vermont	626630	14
47	Virginia	8260405	134
48	Washington	6971406	39
49	West Virginia	1854304	55
50	Wisconsin	5742713	72
51	Wyoming	582658	23
\.


--
-- Name: counties_county_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.counties_county_id_seq', 3143, true);


--
-- Name: states_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.states_state_id_seq', 101, true);


--
-- Name: counties counties_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.counties
    ADD CONSTRAINT counties_pkey PRIMARY KEY (id);


--
-- Name: states states_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.states
    ADD CONSTRAINT states_pkey PRIMARY KEY (id);


--
-- Name: counties counties_state_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.counties
    ADD CONSTRAINT counties_state_id_fkey FOREIGN KEY (state_id) REFERENCES public.states(id);


--
-- PostgreSQL database dump complete
--

