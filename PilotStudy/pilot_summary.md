**Goal**: Gather licensing data across three cities for open government datasets from a single sector in order to evaluate sampling strategy and research questions for broader study.  Draw data only from cities using Socrata platforms for pilot study given ease of obtaining data via API.

**Steps** :

- Create list of potential cities for study of open government data licensing
  - Spreadsheet identifying cities and open data platforms/software created here:   [https://docs.google.com/a/uw.edu/spreadsheets/d/1xCeF2p0QDjuZxm2OMNCFYLvd2w69mRafh5JbZYA9a-Q/edit?usp=sharing](https://docs.google.com/a/uw.edu/spreadsheets/d/1xCeF2p0QDjuZxm2OMNCFYLvd2w69mRafh5JbZYA9a-Q/edit?usp=sharing)
  - Based on a) city rank in Open Knowledge Foundation&#39;s open data census ( [http://us-city.census.okfn.org/](http://us-city.census.okfn.org/)) and b) city population
- Identify 3 cities for pilot study:
  - Strategy: without reviewing portals or available data, among cities using a Socrata platform, select 1 city from top 10 by census rank (Los Angeles); 1 city ranked 10-20 (Providence), and 2 cities not ranked in census but within top 20 US cities by population (Dallas &amp; Fort Worth)
  - Identify a &#39;sector&#39; of open data by which to limit the pilot study based on Socrata categories used by each of 3 cities - &quot;Public Safety&quot;:
    - ■■All cities listed &quot;Public Safety&quot; as a major data category
    - ■■Note that Los Angeles uses custom categories labels - &quot;A Safe City&quot; category was considered equivalent to &quot;Public Safety&quot;
- Retrieve metadata for datasets in Public Safety category for each city:
  - R script for pulling data located [HERE]
    - ■■Datasets were pulled via Socrata Discovery API, flattened from JSON objects, and relevant variables assembled into dataframes for each city
  - CSV files of dataframes available [HERE}

**Preliminary Summary of Results:**

_Overall_

- 66 parent-level public safety datasets
- Licensing breakdown:
  - 31 - Creative Commons 1.0 Universal (Public Domain Dedication)
  - 5 - Open Data Commons Attribution License
  - 3 - Open Data Commons Public Domain Dedication and License
  - 3 - Creative Commons Attribution 4.0 International
  - 24 - NA

_By City_

- Los Angeles
  - 35 parent-level public safety datasets
  - Licensing breakdown:
    - ■■31 - Creative Commons 1.0 Universal (Public Domain Dedication)
    - ■■2 - Creative Commons Attribution 4.0 International
    - ■■2 - NA
- Providence
  - 9 parent-level public safety datasets
  - Licensing breakdown:
    - ■■3 - Open Data Commons Public Domain Dedication and License
    - ■■6 - NA
- Dallas
  - 19 parent-level public safety datasets
  - Licensing breakdown:
    - ■■5 - Open Data Commons Attribution License
    - ■■14 - NA
- Fort Worth
  - 3 parent-level public safety datasets
  - Licensing breakdown:
    - ■■1 - Creative Commons Attribution 4.0 International
    - ■■2 - NA

_By Dataset Type (all cities)_

- Dataset (52)
  - 24 - Creative Commons 1.0 Universal (Public Domain Dedication)
  - 3 - Creative Commons Attribution 4.0 International
  - 5 - Open Data Commons Attribution License
  - 2 - Open Data Commons Public Domain Dedication and License
  - 18 - &lt;NA&gt;
- Map (8)
  - 6 - Creative Commons 1.0 Universal (Public Domain Dedication)
  - 2 -  &lt;NA&gt;
- HREF (3)
  - 1 - Creative Commons 1.0 Universal (Public Domain Dedication)
  - 1 - Open Data Commons Public Domain Dedication and License
  - 1 -  &lt;NA&gt;
- File (3)
  - 3 -  &lt;NA&gt;

_By Time (all cities)_

- 2013 (7)
  - 1 - Open Data Commons Attribution License
  - 6 - &lt;NA&gt;
- 2014 (26)
  - 18 - Creative Commons 1.0 Universal (Public Domain Dedication)
  - 1 - Open Data Commons Attribution License
  - 1 - Creative Commons Attribution 4.0 International
  - 6 - &lt;NA&gt;
- 2015 (6)
  - 1 - Creative Commons 1.0 Universal (Public Domain Dedication)
  - 1 - Open Data Commons Attribution License
  - 4 - &lt;NA&gt;
- 2016 (13)
  - 3 - Creative Commons 1.0 Universal (Public Domain Dedication)
  - 2 - Open Data Commons Attribution License
  - 1 - Creative Commons Attribution 4.0 International
  - 3 - Open Data Commons Public Domain Dedication and License
  - 4 - &lt;NA&gt;
- 2017 (14)
  - 9 - Creative Commons 1.0 Universal (Public Domain Dedication)
  - 1 - Creative Commons Attribution 4.0 International
  - 4 - &lt;NA&gt;
