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

## Further Description of this Repository

Distributions for UBL 2.0 through 2.3 have comprised two main collections of information, the documentation and the artefacts.

This repository is for the documentation with which the resulting distribution is built incorporating artefacts:
- assembly of edited material into distributed material
- publishing of distributed material in its consumable forms
- integrity checking of the self-consistency of distributed materials

See https://github.com/oasis-tcs/ubl-2.3-artefacts for the artefacts. Note that this publishing process presumes that the artefacts have been created already in the same target directory as is used for the hub results, with the same stage and label values as passed here for hub results, thus matching the artefacts with the document to produce the result.

Entities generated in the building of the artefacts:
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

The artefacts must have already been created in the target directory, and they must have the same stage and label as the process invocation for the creation of the documentation and final results:
- input artefacts:
  - `artefacts-UBL-2.3-{stage}-{label}.zip`

Support subdirectories:
- [`art`]( art ) - high-res artwork for PDF publishing
- [`db`]( db ) - HTMl runtime event for DocBook from OASIS DocBook templates
- [`htmlart`]( htmlart ) - low-res artwork for HTML publishing
- [`images`]( images ) - original revisable source vector artwork in `.svg` or `.drawio` (incomplete set of files because many originals have been lost; please add originals here using same base name as published; PNG images in the `art/` and `htmlart/` subdirectories must be made manually)
- [`utilities`]( utilities ) - tools used to generate outputs

The build process is:
- `publishUBL23Docs.bat   ..\results stage label localDateTime {serverUsername serverPassword}`
- `sh publishUBL23Docs.sh ../results stage label localDateTime {serverUsername serverPassword}`
  - pre-existing target directory (without trailing "/")
  - stage (e.g. "csd02wd03", "csprd01", "os", etc., or any string for testing purposes e.g. "test")
  - label (e.g. "CCYYMMDD-hhmmz" UTC time as in "20200406-0250z", or any string for testing purposes e.g. "test")
  - localDateTime (e.g. "now" for current time, or "CCYYMMDD-hhmm" in local time as in "20200405-2250z" for EDT -0400)
  - serverUsername (for those editors with publishing privileges)
  - serverPassword (for those editors with publishing privileges)

IMPORTANT NOTE!
- without publishing privileges, the PDF and HTML files are not updated, but the process continues through completion for the purposes of consistency checking
- opening the resulting UBL-2.3.xml in an XSLT-aware browser (e.g. Safari) allows one to peruse the final document as if it had been published in HTML

The build result in the target directory:
- `hub-UBL-2.3-{stage}-{label}.zip`
- `hub-UBL-2.3-{stage}-{label}/`
- `UBL-2.3-{stage}-{label}.zip`
- `UBL-2.3-{stage}-{label}/`

## Contact

Please send questions or comments about 
[OASIS TC GitHub repositories](https://www.oasis-open.org/resources/tcadmin/github-repositories-for-oasis-tc-members-chartered-work) 
to the [OASIS TC Administrator](mailto:tc-admin@oasis-open.org).  For questions about content in this 
repository, please contact the TC Chair or Co-Chairs as listed on the the UBL TC's 
[home page](https://www.oasis-open.org/committees/ubl/).
