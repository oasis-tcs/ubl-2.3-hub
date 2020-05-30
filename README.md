# README

Members of the [Universal Business Language (UBL) TC](https://www.oasis-open.org/committees/ubl/) 
create and manage technical content in this [TC GitHub repository](https://github.com/oasis-tcs/ubl-2.3-hub/) 
as part of the TC's chartered work (the program of work and deliverables described in its 
[charter](https://www.oasis-open.org/committees/ubl/charter.php).

OASIS TC GitHub repositories, as described in 
[GitHub Repositories for OASIS TC Members' Chartered Work](https://www.oasis-open.org/resources/tcadmin/github-repositories-for-oasis-tc-members-chartered-work), 
are governed by the OASIS [TC Process](https://www.oasis-open.org/policies-guidelines/tc-process), [IPR Policy](https://www.oasis-open.org/policies-guidelines/ipr), 
and other policies. While they make use of public GitHub repositories, these repositories are distinct from 
[OASIS Open Repositories](https://www.oasis-open.org/resources/open-repositories), which are used for 
development of open source [licensed](https://www.oasis-open.org/resources/open-repositories/licenses) 
content.

## Description

For the development of the hub document associated with the UBL 2.3 delivery, and the packaging of the UBL 2.3 distribution results.

## Contributions

As stated in this repository's 
[CONTRIBUTING](https://github.com/oasis-tcs/ubl-2.3-hub/blob/master/CONTRIBUTING.md) file, 
contributors to this repository must be Members of the OASIS UBL TC for any substantive contributions 
or change requests.  Anyone wishing to contribute to this GitHub project and 
[participate](https://www.oasis-open.org/join/participation-instructions) in the TC's technical 
activity is invited to join as an OASIS TC Member. Public feedback is also accepted, 
subject to the terms of the 
[OASIS Feedback License](https://www.oasis-open.org/policies-guidelines/ipr#appendixa). 

## Licensing

Please see the [LICENSE](https://github.com/oasis-tcs/ubl-2.3-hub/blob/master/LICENSE.md) file 
for description of the license terms and OASIS policies applicable to the TC's work in this GitHub 
project. Content in this repository is intended to be part of the UBL TC's permanent record of activity, 
visible and freely available for all to use, subject to applicable OASIS policies, as presented in the 
repository [LICENSE](https://github.com/oasis-tcs/ubl-2.3-hub/blob/master/LICENSE.md). 

---

## Further Description of this Repository

Distributions for UBL 2.0 through 2.3 have comprised two main collections of information, the documentation and the artefacts.

This repository is for the documentation with which the resulting distribution is built incorporating artefacts:
- assembly of edited material into distributed material
- publishing of distributed material in its consumable forms
- integrity checking of the self-consistency of distributed materials

See https://github.com/oasis-tcs/ubl-2.3-artefacts for the artefacts. Note that this publishing process presumes that the artefacts have been created already in the same target directory as is used for the hub results, with the same stage and label values as passed here for hub results, thus matching the artefacts with the document to produce the result.

Source files for the hub document:
- `UBL.xml` - main body of the document
- `UBL-2.3-Party-summary-information.xml` - the table describing the parties cited in the schema summary information
- `UBL-2.3-Schema-summary-information.xml` - the list of all document types, their associated parties and roles, the processes in which they are used, and the list of example documents in the package that conform to their schema

Support subdirectories:
- [`images`]( images ) - original revisable source vector artwork in `.svg` or `.drawio` (incomplete set of files because many originals have been lost; please add originals here using same base name as published)
- [`art`]( art ) - high-res PNG artwork for print publishing (max width: 5.7in/14.5cm)
  - at a resolution of 600dpi: max width: 3425 pixels
  - at a resolution of 400dpi: max width: 2283 pixels
  - at a resolution of 300dpi (minimum): max width: 1713 pixels
- [`htmlart`]( htmlart ) - low-res PNG artwork for web publishing (max width: 750 pixels)

Image creation using the http://draw.io tool:
- copy [`UBL-2.3-Pre-awardProcess.drawio`]( https://raw.githubusercontent.com/oasis-tcs/ubl-2.3-hub/master/images/UBL-2.3-Pre-awardProcess.drawio ) as a starting point full-width image with your own file name
- open the copy in http://draw.io and modify it as required
- save the vector file in the [`images`]( images ) directory
- using the menu item File / Export as / Advanced...
  - select PNG format
  - set the DPI to 600 using "Custom"
  - set the width of the image to a maximum 3425 pixels
    - the zoom should be less than or equal to 100%
    - of course if the image is not the full width of the page the width count can be less to proportionally less than 3425
  - turn off the transparent background and any border width
  - ![drawio advanced export dialogue box](drawio-export.png "drawio advanced export dialogue box")
  - save the resulting high-res PNG file into the [`art`]( art ) directory
  - copy the high-res PNG file into the [`htmlart`]( htmlart ) directory
  - using [ GIMP ]( https://www.gimp.org/ ) or some other pixel image manipulation tool, scale the [`htmlart`]( htmlart ) copy to be a maximum of 750 pixels (or proportionally smaller) and 96 DPI

## Online GitHub use for development purposes by committee members

It is easy for committee members to contribute to the improvement of the hub document following these steps:

1. Fork this repository to be one of your own private repositories.
1. Enable the running of workflows: click on 'Actions' tab at the top and press button "I understand my workflows, go ahead and run them"
1. From the repository home page click the green "clone or download" button for the repository name of your private repository to clone to your local machine: `git clone {repository}`
1. Modify locally any of the input XML files above
1. Add any new images at least to the [`image`]( image ) and [`art`]( art ) directories (if you have the tools to create the image for the [`htmlart`]( htmlart ), all the better)
1. Review the list of changed files: `git status`
1. Stage your changes: `git add .`
1. Review the list of staged files: `git status`
1. Commit your changes: `git commit -m "Description of your change"`
1. Submit your changes: `git push`
1. The push triggers a "GitHub action" on the GitHub server: at the top of the GitHub screen, go to the "Actions" tab and you will see a workflow whose title is the same as the description you used for the commit message; click on the bold-face title string (it is a hyperlink); from the "Artifacts" box download the ZIP file to view your results when they are completed (the box remains empty while the job is being run and may need to be refreshed after )
1. In the downloaded ZIP the presence of the file `Attention-new-entities.txt` indicates that in the `archive-only-not-in-final-distribution/` subdirectory has a `new-entities/` directory with new entity files that were created by your changes to the schema and party XML files; if there are any new entity files, you must replace your local copies with those new entities in order for the validation in your XML editor to match the validation results on the server; if the `new-entities` directory does not exist, then there is no need to update your local entity files
1. Repeat from step 4 until your submission is ready and the `Attention-new-entities.txt` does not exist
1. From the repository home page press the "New pull request" button to generate a request for the editors to pull your work into the main repository
1. On the "Comparing changes" page that comes up, review the work that is being submitted
1. Press the "Create pull request" button
1. Title the pull request (default is your last commit message) and outline the changes made in the description
1. Press the "Crane pull request" below and to the right of the description
1. The pull request now is in the hands of the editors for action

---

## Offline use for production purposes by project editors

Additional support subdirectory:
- [`db`]( db ) - XML on-the-fly rendering runtime environment for DocBook from OASIS DocBook templates
- [`utilities`]( utilities ) - tools used to generate outputs

The artefacts must have already been created in the target directory, and they must have the same stage and label as the process invocation for the creation of the documentation and final results:
- input artefacts:
  - `artefacts-UBL-2.3-{stage}-{label}.zip`
  - includes input entities used in published annexes:
    - `old2newDocBook-UBL-2.3-csprd03-UBL-2.2-documents-ent.xml`
    - `old2newDocBook-UBL-2.3-csprd03-UBL-2.2-library-ent.xml`
    - `old2newDocBook-UBL-2.3-csprd03-UBL-2.3-csprd02-documents-ent.xml`
    - `old2newDocBook-UBL-2.3-csprd03-UBL-2.3-csprd02-library-ent.xml`

Source files, processing stylesheets, and resulting entities generated in the building of the hub document:
- `UBL-2.2.xml` and `UBL.xml` processed by `hub2processSummary.xsl`:
  - `summary-processes-ent.xml`
- `UBL-2.3-Party-summary-information.xml` processed by `partydoc2db.xsl`:
  - `summary-parties-ent.xml`
- `UBL-2.3-Schema-summary-information.xml` processed by `schemadoc2db.xsl`:
  - `summary-namespaces-ent.xml`
  - `summary-schemas-ent.xml`
  - `summary-examples-ent.xml`

The build process is:
- `publishUBL23Docs.bat   ..\results stage label localDateTime {serverUsername serverPassword}`
- `sh publishUBL23Docs.sh ../results stage label localDateTime {serverUsername serverPassword}`
  - pre-existing target directory (without trailing "/")
  - stage (e.g. "csd02wd03", "csprd01", "os", etc., or any string for testing purposes e.g. "test")
  - label (e.g. "CCYYMMDD-hhmmz" UTC time as in "20200406-0250z", or any string for testing purposes e.g. "test")
  - localDateTime (e.g. "now" for current time, or "CCYYMMDD-hhmm" in local time as in "20200405-2250z" for EDT -0400)
  - serverUsername (for those editors with publishing privileges)
  - serverPassword (for those editors with publishing privileges)

- examples:
  - dry run without publishing - `publishUBL23Docs.bat ..\results test test now`
  - dry run with publishing - `publishUBL23Docs.bat ..\results test test now serveruser serverpass`
  - final run with publishing - `publishUBL23Docs.bat ..\results csprd03 20200511-1720z 20200511-1320`

IMPORTANT NOTE!
- without publishing privileges, the PDF and HTML files are not updated, but the process continues through completion for the purposes of consistency checking
- opening the resulting UBL-2.3.xml in an XSLT-aware browser (e.g. Safari) allows one to peruse the final document as if it had been published in HTML

The build result in the target directory:
- `hub-UBL-2.3-{stage}-{label}.zip`
- `hub-UBL-2.3-{stage}-{label}/`
- `hub-UBL-2.3-{stage}-{label}/archive-only-not-in-final-distribution/` - archive artefacts
- `UBL-2.3-{stage}-{label}.zip`
- `UBL-2.3-{stage}-{label}/`
- `UBL-2.3-{stage}-{label}/archive-only-not-in-final-distribution/` - archive artefacts

Note that in the archive directory are the files:
- `hub.console.{label}.txt` - console log of the execution of the Ant build script
- `hub.exitcode.{label}.txt` - exit code from the execution of the Ant build script



## Contact

Please send questions or comments about 
[OASIS TC GitHub repositories](https://www.oasis-open.org/resources/tcadmin/github-repositories-for-oasis-tc-members-chartered-work) 
to the [OASIS TC Administrator](mailto:tc-admin@oasis-open.org).  For questions about content in this 
repository, please contact the TC Chair or Co-Chairs as listed on the the UBL TC's 
[home page](https://www.oasis-open.org/committees/ubl/).
