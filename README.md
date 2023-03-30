# reduce50coron

To compile into a singularity container: 
`sudo singularity build 50coron setup.def > build.log`

For a list of all STIS coronagraphic images: https://www.stsci.edu/~STIS/monitors/tdf/stis_tdf_coronagraphic.html

## pipeline

to interact with the built container: `singularity shell 50coron `

```
┌──────────────────────────────┐      ┌────────────────────────────────-┐
│Download all STIS `50coron`   │      │sort according to mask position: │
│data                          ├─────>┤                                 │
│                              │      │`sort_50coron_observations.ipynb`│
└──────────────────────────────┘      │                                 │
                                      └────────────────────────────────-┘
                                      
  ```
