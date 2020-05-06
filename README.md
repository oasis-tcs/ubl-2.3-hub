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

For the development of the hub document associated with the UBL 2.3 delivery.

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

See https://github.com/oasis-tcs/ubl-2.3-artefacts for the artefacts. Note that some components of the edited material rely on outputs from the generation of the artefacts.

The build process is:
- `sh publishUBL23Docs.sh ../results stage label localDateTime serverUsername serverPassword`
  - pre-existing target directory (without trailing "/")
  - stage (e.g. "csd02wd03", "csprd01", "os", etc.)
  - label (e.g. "CCYYMMDD-hhmmz" UTC time as in "20200406-0250z", or any string for testing purposes)
  - localDateTime (e.g. "now" for current time, or "CCYYMMDD-hhmm" in local time as in "20200405-2250z" for EDT -0400)
  - serverUsername (for those editors with publishing privileges)
  - serverPassword (for those editors with publishing privileges)
- without publishing privileges, at least the XML assembly is performed

## Contact

Please send questions or comments about 
[OASIS TC GitHub repositories](https://www.oasis-open.org/resources/tcadmin/github-repositories-for-oasis-tc-members-chartered-work) 
to the [OASIS TC Administrator](mailto:tc-admin@oasis-open.org).  For questions about content in this 
repository, please contact the TC Chair or Co-Chairs as listed on the the UBL TC's 
[home page](https://www.oasis-open.org/committees/ubl/).
