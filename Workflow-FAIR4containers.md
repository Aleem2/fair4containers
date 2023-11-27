## FAIR for Containers Workflow

This workflow outlines a step by step approach in creating a FAIR containers. (15 minutes)

1. Create a new github repository. Fill in the form to create a new repository with license information. Alternatively, you can add licensing information at a later stage by adding a license file named "LICENSE". Make sure to edit the license file with contributors names and year.  

    [A guide to creating a license](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository)
    
    ![alt text](https://github.com/Aleem2/FAIR4JupyterNotebook/blob/Images-in-workflow/images/license-tool.webp?raw=true)
         
2. Metadata is a way to provide author details and the ability to cite the software. We recommend using CITATION.cff file, which provides a machine readable format to reference the said work.


    [A guide to creating CITATION.cff - metadata file](https://citation-file-format.github.io/) and it also features a web frontend in [creating citation.cff file](https://citation-file-format.github.io/cff-initializer-javascript/#/). 
    
    <pre><code>
    cff-version: 1.2.0
    message: "If you use this software, please cite it as below."
    authors:
      - family-names: Uddin
        given-names: Aleem
        orcid: https://orcid.org/0000-0002-8519-5534
    title: "My Research Software"
    version: 2.0.4
    doi: 10.5281/zenodo.7690164
    date-released: 2021-08-11  
    </code></pre>

3. Upload or sync Dockerfile, so that it becomes findable and accessible via the github repository.


4. Reproducibility of the containers is inherent. Ensure that the container's Dockerfile specifies the dependencies.    


    [A guide to creating requirements.yml](https://mybinder.readthedocs.io/en/latest/howto/languages.html)


    * Tips on finding the dependencies from a working python file (say) on your desktop.
   
   
        * From the command prompt or from the environment use the following command to get the software versions.
        ~~~~
         freeze | grep -i numpy # Say getting a numpy version only. And do the same for other libraries
        ~~~~
        ~~~~
         pip freeze  # Displays all python libraries with version numbers. 
        ~~~~
        ~~~~
         python -version
       ~~~~

5. Copying Licnese, Citation.cff and Dockerfile into the container. Besides having the license and citation file in the github repository, it would be ideal to put these files inside the container. This ensures that no matter where the container build file are stored (github) and no matter where the container is stored the Dockerfile, license and citation files goes along with the container.  

    <pre><code>
    # Changing container directory to home. 
    WORKDIR /home

    # Copying license, citation.cff and readme files to home directory. 
    COPY LICENSE CITATION.cff Dockerfile .
    </code></pre>

7. Persistent Identifier (DOI) - Assign a persistent identifier (DOI) to the repository, once the research is completed. GitHub has a thorough guide on generating DOI’s with a Zenodo plugin.

    6.1 Login to Zendo and click on the "link to github".
         
    [A guide to creating DOIs](https://docs.github.com/en/repositories/archiving-a-github-repository/referencing-and-citing-content)

8. Publish the repository to get DOI and the DOI badge, which can be updated in readme.md

9. Finally update the citation.cff files with DOI link. We recommend the root or the main DOI to be updated into the citation.cff file and any subsequent releases will have version specific DOI.
