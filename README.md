# reduce50coron

To compile into a singularity container: 
`sudo singularity build 50coron setup.def > build.log`



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
