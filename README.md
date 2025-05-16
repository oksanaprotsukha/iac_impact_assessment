# Realized vs Missed Energy Savings across IAC Energy Audits.

<img src="realized_vs_not_realized_energy_savings.png" width="400"/>

### Table Of Contents

1. [Objective](#objective)
2. [Installation](#installation)
3. [Repository Structure](#file-structure)
4. [Data](#data)
5. [Usage](#usage)
6. [Contribute](#contribute)
7. [License](#license)

## Objective
This notebook compares realized and missed energy savings rates from Industrial Assessment Center (IAC) recommendations.

## Installation

[Back to top](#table-of-contents) <br>

**Repository**: [IAC Energy Savings Impact Assessment](https://github.com/oksanaprotsukha/iac_impact_assessment)

The analysis is written in Python and SQL. The following tools are required to rerun the analysis: <br>
- Python-ready environment (e.g. `VSCode`) <br>
- DuckDB database file (included in the repo) <br>

All dependencies are listed in the `environment.yml` file. To create a new environment, run the following command in your terminal:

```bash
conda env create -f environment.yml
```

## File Structure

[Back to top](#table-of-contents) <br>

```         
├── LICENSE
├── README.md
├── database
│   ├── iac.duckdb
│   └── iac_integrated_view.sql
├── environment.txt
├── environment.yml
├── iac.ipynb
└── realized_vs_not_realized_energy_savings.png
```

## Data

[Back to top](#table-of-contents) <br>

The analysis is based on the [Industrial Energy Assessment Database](https://iac.university/download).

IAC Database contains the technical information about more than 22,000 industrial energy audits done by all the industrial assessment centers as of May 2025. This includes information on the type of facility assessed (size, industry, energy usage, etc.) and details of resulting recommendations (type, energy & dollars savings etc.). Technical details on the database and the description of all data points areavailable on the IAC website: [IAC documentation](https://iac.university/#database)

## Usage

[Back to top](#table-of-contents) This repo can be used to reproduce and contribute to the analysis.

## License

[Back to top](#table-of-contents)

[MIT license](./LICENSE)

### Acknowledgements

Annie Adams, Teaching Assistant for EDS-213 - Databases</br>
Julien Brun, Professor for EDS-213 - Databases</br>
Greg Janée, Professor for EDS-213 - Databases</br>
Bren School of Environmental Science & Management</br>
University of California, Santa Barbara


