# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Site.create(id: 1, name: 'MACs', content: 'MACs : Multicenter AIDS Cohort Study Program<br />
  the first and largest study specifically created to examine the natural history of AIDS.', template_name: 'sitemap')

User.create!(
  first_name: 'Eric',
  last_name: 'Schlange',
  email: 'eric.schlange@northwestern.edu',
  role_identifier: 1)

=begin
Intervention.create(
:id => 1,
:name => 'Purpose of Research',
:description =>
  '<p>You are being asked to take part in a research study. This document has important information about the reason for the study, what you will
      do if you choose to be in this research study, and the way we (i.e., Northwestern University) would like to use information about you and
      your health.  To be eligible for the study we will need to confirm certain information about your HIV status and whether you are eligible to
      participate.</p>
  <div class="divider-2"></div>

  <h3>What is the reason for doing this study?</h3>
  <p>The purpose of this study is to understand more about recent HIV infection among men in the Multicenter AIDS Cohort Study (MACS).  Persons who
     have recent HIV may have differences in the HIV virus and the bodies immune response to HIV as compared to persons who have had HIV for more
     than one year.  They may also have different responses to HIV medications.  We hope to look at your HIV virus and see how similar or different
     the virus is to persons with long standing HIV and other persons with recent HIV.  We hope to look at your body\'s immune responses to HIV. You
     are being asked to see if you can participate in the study because your doctor feels you have contracted HIV within the past year.</p>
  <div class="divider-2"></div>

  <h3>What you will do if you choose to be in this study?</h3>
  <p>In order to determine whether you are eligible for the study, we will initially ask you to complete a brief series of questions about your
     health and HIV status. These will include questions about when you think you might have contracted HIV. The questions will take about five
     minutes.</p>
  <p>As part of the eligibility process, we ask your permission for a study personnel to contact you to arrange a time to meet at our clinic at
     Northwestern Hospital. If you are determined to be eligible, a study personnel will contact you via the method that selected.  They will
     arrange for you to come to our clinic.  There you will learn more about the MACS study and recent HIV substudy and can decide then whether
     you want to participate.</p>
  <div class="divider-2"></div>

  <h3>What are some of the risks and discomforts that may happen to people who are in this study?</h3>
  <p>The risks from completing the self-report measures and interviews are minimal, but it is possible that you may experience emotional discomfort
     or increased anxiety as a result of answering questions about your HIV infection, especially if this is a new diagnosis for you.  You have the
     option of stopping at any time</p>
  <div class="divider-2"></div>

  <h3>What are some of the benefits that are likely to come from my being in this study?</h3>
  <p>The possible benefits to you from the MACS and recent HIV study if you are determined to be eligible include:</p>
  <ul>
<li>You will have laboratory tests that measure the effect of HIV on your body.  Some of these tests may be useful to help you and your doctor decide
    upon and monitor your HIV medications.</li>
<li>Otherwise there are no other direct benefits to you from the study as the study will not provide HIV medications.</li>
<li>By being in this study, you may help people at risk for or who contract HIV infection in the future.</li>
  </ul>
  <div class="divider-2"></div>

  <h3>Are there any financial costs to being in this study?</h3>
  <p>There will be no costs to you for being in this study. If you are selected to participate in the full MACS study , you will receive $40 plus $10
     transportation costs for each study visit, plus you may receive up to $100.00 if you additional study procedures such as removal of lymph nodes for
     study.  Payment will be at the completion of the study visits. You will not receive any compensation for filling out these screening questions or if
    you are found NOT to be eligible for the study.</p>
  <div class="divider-2"></div>

  <h3>If I have questions or concerns about this research study, whom can I call?</h3>
  <p>Dr. Wolinksy is the person in charge of this research study. You can call him at 312-926-8358 at any time during the day or weekend.</p>
  <div class="divider-2"></div>

  <h3>What are my rights as a research subject?</h3>
  <p>If you choose to be in this study, you have the right to be treated with respect, including respect for your decision whether or not you wish to
     continue or stop being in the study.  You are free to choose to stop being in the study at any time.</p>
  <p>Choosing not to be in this study or to stop being in this study will not result in any penalty to you or loss of benefit to which you are entitled.
     Specifically, your choice not to be in this study will not negatively affect your right to any present or future medical treatment.</p>
  <p>If you want to speak with someone who is not directly involved in this research, or have questions about your rights as a research subject, please
     contact the Northwestern University Institutional Review Board (IRB) Office. You can call them at 312-503-9338.</p>
  <div class="divider-2"></div>

  <h3>What about my confidentiality and privacy rights?</h3>
  <p>We are committed to respect your privacy and to keep your personal information confidential.</p>
  <p>When choosing to take part in this study, you may be asked to give permission for MACS investigators to obtain your personal health information from
     your medical records. Such records include your name, address, phone number or social security number. Your health information we may collect and use
     for this research includes:</p>
  <ul>
<li>all information in a medical record</li>
<li>results of physical examinations</li>
<li>medical history</li>
<li>lab tests, or certain health information indicating or relating to a particular condition as well diaries and questionnaires</li>
<li>HIV results</li>
<li>records about study medication or drugs</li>
<li>records about study devices</li>
  </ul>
  <p>In a separate consent, you will also be asked to give permission let MACS investigators contact your primary care providers to provide information
    about you.</p>
  <p>Please note that any research information shared with people outside of Northwestern University will not contain your name, address, telephone or
     social security number or any other direct personal identifier unless disclosure of the direct identifier is required by law [except that such
     information may be viewed by the Study sponsor at the Principal Investigators office]</p>
  <p>Authorized members of Northwestern University workforce, however, may need to see your information, such as administrative staff members from the
     Office of Research, and members of the Institutional review Board (a committee which is responsible for the ethical oversight of the study)</p>

  <div class="divider"></div>',
:site_id => 1)

Home.create(
:title => 'Welcome',
:content => '<p>Macs is an ongoing prospective study of the natural and treated histories of HIV-1 infection in homosexual and bisexual men conducted by sites located in:<br/> Baltimore, Chicago, Pittsburgh and Los Angeles.</p>',
:site_id => 1)

About.create(
:title => 'About MACs',
:content => '
  <p>In the fall of 1983, a group of investigators met at the National Institutes of Health  (NIH ) to design a prospective epidemiologic
     study of the newly recognized immunodeficiency syndrome  in men who had sex with men (MSM) in Los Angeles, San Francisco and New York.
     Upon completion of designing the protocol, recruitment of MSM began in April of 1984 into the investigation which was named The Multicenter
     AIDS Cohort Study or MACS. The first wave of participant recruitment was completed by March 31, 1985. Since then three  more periods of enrollment
     have been opened; the first in 1987 to increase the participation of African-American (AA) MSM in the study and the second in 2001 to again increase
     participation by AA and Hispanic MSM.  Currently, recruitment of MSM, with recent HIV infection, to replace recent losses caused by death and
     dropouts has been initiated. As of October 2013, 7087 men have volunteered and participated in the MACS. The currently active participants number
     2340; 35 % are non white and half of all participants are older than 55 years of age.  In Chicago 1387 men have enrolled into the study.</p>
  <p>The initial recruitment in 1984-85 was carried out before we had a laboratory test to determine who was a risk of developing AIDS.  HIV had been
     suggested as the cause of the immunodeficiency in 1983 by investigators at the Pasteur Institute in Paris but this was not  confirmed until the
     spring of 1984ot by investigators in San Francisco and the NIH in the spring of 1984. However, a blood test to determine who was infected did not
     become available until the spring of 1985. When the original group of MSM who had joined the MACS underwent  testing it was discovered that
     approximately 40 percent of the cohort was infected.</p>
  <p>This allowed the MACS to address two important issues. First, we could determine the behaviors, clinical findings and laboratory results which were
     associated with progression from HIV infection to AIDS. Secondly among the uninfected men, the behaviors that led to HIV infection and the early
     signs and symptoms of this viral infection could be elucidated. To date 712 uninfected men at entry into the MACS acquired HIV infection during
     the study, 333 developed AIDS and 82.9% of these men have died.</p>
  <p>Early in the course of the study it became apparent that dementia was a major problem for men who developed advanced HIV infection and AIDS.
     MACS investigators organized a working group of neurologists to investigate this problem. The most important early finding was that severe central
     nervous system (brain and spinal cord) problems were seen only in persons with AIDS and that there was no reason for HIV infected men without AIDS
     to be restricted in their work. This finding became the basis of World Health Organization recommendation which was widely accepted advising that
     persons with HIV infection need not be restricted in their activities.</p>
  <p>During the period of the 1980s the death rate among the infected MACS participants was very high. As of the fall of 2013, close to 90 percent of men
     who entered the MACS with HIV infection have died. The MACS investigators were among the first to demonstrated that the T-Helper cell count below
     200/mm3 were associated with a high rate of  pneumocystis pneumonia (PCP) and helper cell counts below 100/mm3 put individuals at risk for
     cytomegalovirus  retinitis, atypical mycobacterial infections, and infection of the brain with the parasite Toxoplasma gondii. Giving antibiotics
     to prevent some of these opportunistic infections helped but the early agents available to treat the HIV infection did not prevent progression to AIDS
     or death.</p>
  <p>An early observation of MACS investigators was that the progression of newly acquired HIV infections to AIDS differed from individual to individual.
     Determinants of this heterogeneity included age at the time of infection and host genetics. The genetic makeup of an individual determines their
     immune response to HIV which in turn controls the rate of viral replication. Lower levels of replication result in slower progression of untreated
     HIV infection. Host genetics also determines susceptibility to HIV infection. The MACS contributed to the discovery of an uncommon mutation which
     protects people with this mutation from the usual form of HIV which is transmitted sexually.</p>
  <p>With the availability of effective antiretroviral therapy in late 1995 progression to AIDS and death decreased dramatically in men on therapy. Close
     to 80% of participants in the MACS taking drugs have suppressed HIV replication and the median T-helper cell count is near 600/mm3. Stopping drug
     treatment results in progression of HIV infection and disease. With this greatly improved survival of infected participants the MACS has focused upon
     the health status of men who were living longer. To accomplish this investigators have been recruited into working groups with interest in diseases
     of the heart, lungs, kidneys, liver and metabolic diseases such as diabetes. The behavioral working group has continued to study behaviors to determine
     why men fail to adhere to treatment. Recreational drugs and alcohol use have been shown to be associated with poor adherence. Drug use also is
     associated with a marked increase in the risk of acquiring HIV infection. The neurology working group continues to investigate brain function among
     aging HIV infected men and the Aging working group is attempting  to determine whether or not HIV infected men age more rapidly than in infected men.</p>

<div class="divider"></div>

<section id="pricing" class="pricing">
  <div class="container text-left">
    <h3 class="title">What is MACS?</h3>
    <p>The Multicenter AIDS Cohort Study is the longest running study of HIV infection and disease among MSM with and without HIV infection.  We often
       are asked "but if this is a study of HIV, why do you want men without HIV to participate?"  It\'s a fair question.  If we want to study the virus
       and how the virus causes disease we should look at people who actually have the virus.  But that only works if we know exactly what we are looking
       for and how it relates to the virus.  And often we don\'t know that.</p>
    <p>The MACS is an incredibly unique study because of the HIV negative men who participate.  MSM are not the same as all other men; they may be more
       fit than other men, they may drink more, they  may have more stress or mental health issues related to stigma or they  may see  doctors more for
      preventative care.  While there are other studies that study MSM with HIV, there are no other studies that can compare HIV negative MSM with HIV
      infected MSM. By completing the same tests as the HIV positive men, HIV negative men allow us to make the right comparisons.   HIV negative MSM are
      not infected and changes to their health may be more gradual and due to age, diseases of aging or other infections. Any man\'s health can improve or
      worsen for all sorts of reasons.</p>
    <p>Following the uninfected men will enable the MACS investigators to know that a change we see in men with HIV is due to their infection.  If we can\'t
       compare the health of men with HIV to similar men without HIV we have no way of knowing.</p>
    <p>In the last decade we have come a
      long way in treating HIV. Now we have men aging with the virus and a whole host of diseases that we never thought we would have to face
      are being seen. For instance, MACS studies have shown that some changes in brain function are due to aging, NOT HIV.  If we hadn\'t been able
      to compare brain scans from
      HIV positive and HIV negative men - we would never have known it was aging and not HIV. MACS continue to study health outcomes of particular
      interest to the MSM community. Having the right comparison group is vital to our ability to correctly link health outcomes with a probable cause.
      Without the important contribution of the HIV negative men, we would never be able to conduct the life saving research we have done so far.</p>
    <p>So, Thank You! Your contribution to the MACS has advanced our knowledge of HIV and led to important advances in health care for infected men.</p>
  </div>
</section>',
:site_id => 1)

ContactUs.create(
:title => 'Contact Us',
:content => '<table class="table">
<tbody>
<tr>
  <th><p class="subtitle">PRINCIPAL INVESTIGATOR</p></th>
  <td>
    <p class="subtitle">Steven Wolinsky, MD<br/>
    Division of Infectious Diseases, Feinberg School of Medicine<br/>
    645 N Michigan Ave, Suite 900<br/>
    Chicago, IL 60666<br/>
    312-908-MACS <br/>
    Fax 312-695-5088<br/>
    macs@northwestern.edu<br/>
    </p>
  </td>
</tr>
<tr>
  <th><p class="subtitle">SUB-INVESTIGATORS</p></th>
  <td>
    <p class="subtitle">Shannon Galvin, MD<br/>
    John Phair, MD<br/>
    Frank Palella, MD<br/>
    Sudhir Penugonda, MD<br/>
    Northwestern University<br/>
  </p>
  </td>
</tr>
<tr>
  <th><p class="subtitle">PARTICIPATING SITES</p></th>
  <td>
    <p class="subtitle">Northwestern University<br/>
    645 N Michigan Ave, Suite 900<br/>
    Chicago, IL 60666<br/>
    312-908-MACS <br/>
    Fax 312-695-5088<br/></p>
  </td>
</tr>
<tr>
  <th><p class="subtitle">STATISTICIAN</p></th>
  <td><p class="subtitle">Susheel Reddy, MPH</p></td>
</tr>
</tbody>
</table>',
:site_id => 1)
Funding.create(
:title => 'Funding for MACs is provided by:',
:content =>
  '<table class="table">
      <tbody>
        <tr><th>FUNDING AGENCY</th><td>National Institutes of Health </td></tr>
        <tr><td></td><td>NIAID U01AI035039 (Wolinsky)</td></tr>
        <tr><td></td><td>Multicenter AIDS Cohort Study (MACS)</td></tr>
      </tbody>
  </table>',
:site_id => 1)

Resource.create(
:title => 'Resources',
:content =>  '
<div id="accordion">
<h2>Other Links</h2>
<ul>
  <li><a href="https://actgnetwork.org/trials_open_enrollment">AIDS Clinical Trials Group</a></li>
  <li><a href="http://www.cdc.gov/hiv/>CDC HIV Page</a></li>
  <li><a href="http://www.cityofchicago.org/city/en/depts/cdph/provdrs/sti_hiv_aids/svcs/get_yourself_evaluatedforstihivaids.html">CDPH Testing Sites</a></li>
  <li><a href="http://www.nmh.org/nm/infectious-disease-overview">NU ID Center Page</a></li>
  <li><a href="http://www.nmh.org/nm/infectious-disease--clinical-trials">ID Clinical Trials</a></li>
  <li><a href="http://www.impactprogram.org">Impact Program</a></li>
  <li><a href="https://actgnetwork.org/clinical-trials/about-trial-process">About Clinical Trials</a></li>
</ul>

<h2>
  <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Publications for 2009 <i class="fa fa-chevron-down"></i></a>
</h2>
<div id="collapseOne" class="panel-collapse collapse">
<ol>
  <li>An P, Johnson R, Phair J, Kirk GD, Yu XF, Donfield S, Buchbinder S, Goedert JJ, Winkler CA. APOBEC3B deletion and risk of HIV-1 acquisition. J Infect Dis. 2009; 200(7): 1054-8. PMCID: PMC3690486</li>
  <li>Becker JT, Kingsley L, Mullen J, Cohen B, Martin E, Miller EN, Ragin A, Sacktor N, Selnes OA, Visscher BR. Vascular risk factors, HIV serostatus, and cognitive dysfunction in gay and bisexual men. Neurology. 2009; 73(16): 1292-9. PMCID: PMC2764414</li>
  <li>Bhattacharya T, Stanton J, Kim EY, Kunstman KJ, Phair JP, Jacobson LP, Wolinsky SM. CCL3L1 and HIV/AIDS susceptibility. Nat Med. 2009; 15(10): 1112-5. PMC exempt.</li>
  <li>Brown TT, Xu X, John M, Singh J, Kingsley LA, Palella FJ, Witt MD, Margolick JB, Dobs AS. Fat distribution and longitudinal anthropometric changes in HIV-infected men with and without clinical evidence of lipodystrophy and HIV-uninfected controls: a substudy of the Multicenter AIDS Cohort Study. AIDS Res Ther. 2009; 6: 8. PMCID: PMC2686733</li>
  <li>Cain LE, Cole SR, Greenland S, Brown TT, Chmiel JS, Kingsley L, Detels R. Effect of highly active antiretroviral therapy on incident AIDS using calendar period as an instrumental variable. Am J Epidemiol. 2009; 169(9): 1124-32. PMCID: PMC2732979</li>
  <li>Chao C, Jacobson LP, Jenkins FJ, Tashkin D, Martinez-Maza O, Roth MD, Ng L, Margolick JB, Chmiel JS, Zhang ZF, Detels R. Recreational drug use and risk of Kaposi\'s sarcoma in HIV- and HHV-8-coinfected homosexual men. AIDS Res Hum Retroviruses. 2009; 25(2): 149-56. PMCID: PMC2981355</li>
  <li>Chao C, Jacobson LP, Tashkin D, Martinez-Maza O, Roth MD, Margolick JB, Chmiel JS, Holloway MN, Zhang ZF, Detels R. Recreational amphetamine use and risk of HIV-related non-Hodgkin lymphoma. Cancer Causes Control. 2009; 20(5): 509-16. PMCID: PMC2862618</li>
  <li>Desquilbet L, Margolick JB, Fried LP, Phair JP, Jamieson BD, Holloway M, Jacobson LP. Relationship between a frailty-related phenotype and progressive deterioration of the immune system in HIV-infected men. J Acquir Immune Defic Syndr. 2009; 50(3): 299-306. PMCID: PMC2699396</li>
  <li>Fellay J, Ge D, Shianna KV, Colombo S, Ledergerber B, Cirulli ET, Urban TJ, Zhang K, Gumbs CE, Smith JP, Castagna A, Cozzi-Lepri A, De Luca A, Easterbrook P, Gunthard HF, Mallal S, Mussini C, Dalmau J, Martinez-Picado J, Miro JM, Obel N, Wolinsky SM, Martinson JJ, Detels R, Margolick JB, Jacobson LP, Descombes P, Antonarakis SE, Beckmann JS, O\'Brien SJ, Letvin NL, McMichael AJ, Haynes BF, Carrington M, Feng S, Telenti A, Goldstein DB. Common genetic variation and the control of HIV-1 in humans. PLoS Genet. 2009; 5(12): e1000791. PMCID: PMC2791220</li>
  <li>Hendrickson SL, Kingsley LA, Ruiz-Pesini E, Poole JC, Jacobson LP, Palella FJ, Bream JH, Wallace DC, O\'Brien SJ. Mitochondrial DNA haplogroups influence lipoatrophy after highly active antiretroviral therapy. J Acquir Immune Defic Syndr. 2009; 51(2): 111-6. PMCID: PMC2742970</li>
  <li>Herbeck JT, Gottlieb GS, Wong K, Detels R, Phair JP, Rinaldo CR, Jacobson LP, Margolick JB, Mullins JI. Fidelity of SNP array genotyping using Epstein Barr virus-transformed B-lymphocyte cell lines: implications for genome-wide association studies. PLoS One. 2009; 4(9): e6915. PMCID: PMC2731852</li>
  <li>Hoffmann CJ, Seaberg EC, Young S, Witt MD, D\'Acunto K, Phair J, Thio CL. Hepatitis B and long-term HIV outcomes in coinfected HAART recipients. AIDS. 2009; 23(14): 1881-9. PMCID: PMC2861825</li>
  <li>Horne KC, Li X, Jacobson LP, Palella F, Jamieson BD, Margolick JB, Martinson J, Turkozu V, Visvanathan K, Woolley IJ. Duffy antigen polymorphisms do not alter progression of HIV in African Americans in the MACS cohort. Cell Host Microbe. 2009; 5(5): 415-7; author reply 8-9. PMC exempt.</li>
  <li>Koning FA, Newman EN, Kim EY, Kunstman KJ, Wolinsky SM, Malim MH. Defining APOBEC3 expression patterns in human tissues and hematopoietic cell subsets. J Virol. 2009; 83(18): 9474-85. PMCID: PMC2738220</li>
  <li>Oh DL, Sarafian F, Silvestre A, Brown T, Jacobson L, Badri S, Detels R. Evaluation of adherence and factors affecting adherence to combination antiretroviral therapy among White, Hispanic, and Black men in the MACS Cohort. J Acquir Immune Defic Syndr. 2009; 52(2): 290-3. PMCID: PMC2815178</li>
  <li>Oleksyk TK, Shrestha S, Truelove AL, Goedert JJ, Donfield SM, Phair J, Mehta S, O\'Brien SJ, Smith MW. Extended IL10 haplotypes and their association with HIV progression to AIDS. Genes Immun. 2009; 10(4): 309-22. PMCID: PMC3664918</li>
  <li>Ostrow DG, Plankey MW, Cox C, Li X, Shoptaw S, Jacobson LP, Stall RC. Specific sex drug combinations contribute to the majority of recent HIV seroconversions among MSM in the MACS. J Acquir Immune Defic Syndr. 2009; 51(3): 349-55. PMCID: PMC3074969</li>
  <li>Sezgin E, Lind JM, Shrestha S, Hendrickson S, Goedert JJ, Donfield S, Kirk GD, Phair JP, Troyer JL, O\'Brien SJ, Smith MW. Association of Y chromosome haplogroup I with HIV progression, and HAART outcome. Hum Genet. 2009; 125(3): 281-94. PMCID: PMC2885350</li>
  <li>Subramaniam K, Metzger B, Hanau LH, Guh A, Rucker L, Badri S, Pirofski LA. IgM(+) memory B cell expression predicts HIV-associated cryptococcosis status. J Infect Dis. 2009; 200(2): 244-51. PMCID: PMC2805277</li>
  <li>Taiwo BO, Li X, Palella F, Jacobson LP, Margolick JB, Detels R, Rinaldo CR, Phair JP. Higher risk of AIDS or death in patients with lower CD4 cell counts after virally suppressive HAART. HIV Med. 2009; 10(10): 657-60. PMCID: PMC2783359</li>
  <li>Trachtenberg E, Bhattacharya T, Ladner M, Phair J, Erlich H, Wolinsky S. The HLA-B/-C haplotype block contains major determinants for host control of HIV. Genes Immun. 2009; 10(8): 673-7. PMCID: PMC2873233</li>
  <li>Walzer PD, Djawe K, Levin L, Daly KR, Koch J, Kingsley L, Witt M, Golub ET, Bream JH, Taiwo B, Morris A. Long-term serologic responses to the Pneumocystis jirovecii major surface glycoprotein in HIV-positive individuals with and without P. jirovecii infection. J Infect Dis. 2009; 199(9): 1335-44. PMCID: PMC2714884</li>
</ol>
</div>

<h2>
  <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Publications for 2010 <i class="fa fa-chevron-down"></i></a>
</h2>
<div id="collapseTwo" class="panel-collapse collapse">
<ol>
  <li>Bachmann LH, Johnson RE, Cheng H, Markowitz L, Papp JR, Palella FJ, Jr., Hook EW, 3rd. Nucleic acid amplification tests for diagnosis of Neisseria gonorrhoeae and Chlamydia trachomatis rectal infections. J Clin Microbiol. 2010; 48(5): 1827-32. PMCID: PMC2863861</li>
  <li>Chinn LW, Tang M, Kessing BD, Lautenberger JA, Troyer JL, Malasky MJ, McIntosh C, Kirk GD, Wolinsky SM, Buchbinder SP, Gomperts ED, Goedert JJ, O\'Brien SJ. Genetic associations of variants in genes encoding HIV-dependency factors required for HIV-1 infection. J Infect Dis. 2010; 202(12): 1836-45. PMCID: PMC3107555</li>
  <li>Chu H, Gange SJ, Li X, Hoover DR, Liu C, Chmiel JS, Jacobson LP. The effect of HAART on HIV RNA trajectory among treatment-naive men and women: a segmental Bernoulli/lognormal random effects model with left censoring. Epidemiology. 2010; 21 Suppl 4: S25-34. NIHMSID: NIHMS325438</li>
  <li>Cole SR, Jacobson LP, Tien PC, Kingsley L, Chmiel JS, Anastos K. Using marginal structural measurement-error models to estimate the long-term effect of antiretroviral therapy on incident AIDS or death. Am J Epidemiol. 2010; 171(1): 113-22. PMCID: PMC2800300</li>
  <li>Cromer D, Wolinsky SM, McLean AR. How fast could HIV change gene frequencies in the human population? Proc Biol Sci. 2010; 277(1690): 1981-9. PMCID: PMC2880090</li>
  <li>Gao X, O\'Brien TR, Welzel TM, Marti D, Qi Y, Goedert JJ, Phair J, Pfeiffer R, Carrington M. HLA-B alleles associate consistently with HIV heterosexual transmission, viral load, and progression to AIDS, but not susceptibility to infection. AIDS. 2010; 24(12): 1835-40. PMCID: PMC2902625</li>
  <li>Herbeck JT, Gottlieb GS, Winkler CA, Nelson GW, An P, Maust BS, Wong KG, Troyer JL, Goedert JJ, Kessing BD, Detels R, Wolinsky SM, Martinson J, Buchbinder S, Kirk GD, Jacobson LP, Margolick JB, Kaslow RA, O\'Brien SJ, Mullins JI. Multistage genomewide association study identifies a locus at 1q41 associated with rate of HIV-1 disease progression to clinical AIDS. J Infect Dis. 2010; 201(4): 618-26. PMCID: PMC2928718</li>
  <li>Huhn GD, Badri S, Vibhakar S, Tverdek F, Crank C, Lubelchek R, Max B, Simon D, Sha B, Adeyemi O, Herrera P, Tenorio A, Kessler H, Barker D. Early development of non-hodgkin lymphoma following initiation of newer class antiretroviral therapy among HIV-infected patients - implications for immune reconstitution. AIDS Res Ther. 2010; 7: 44. PMCID: PMC3022662</li>
  <li>Hultin LE, Chow M, Jamieson BD, O\'Gorman MR, Menendez FA, Borowski L, Denny TN, Margolick JB. Comparison of interlaboratory variation in absolute T-cell counts by single-platform and optimized dual-platform methods. Cytometry B Clin Cytom. 2010; 78(3): 194-200. PMCID: PMC3086643</li>
  <li>Kim EY, Bhattacharya T, Kunstman K, Swantek P, Koning FA, Malim MH, Wolinsky SM. Human APOBEC3G-mediated editing can promote HIV-1 sequence diversification and accelerate adaptation to selective pressure. J Virol. 2010; 84(19): 10402-5. PMCID: PMC2937764</li>
  <li>Kunstman KJ, Bhattacharya T, Flaherty J, Phair JP, Wolinsky SM. Absence of xenotropic murine leukemia virus-related virus in blood cells of men at risk for and infected with HIV. AIDS. 2010; 24(11): 1784-5. PMC exempt.</li>
  <li>Limou S, Coulonges C, Herbeck JT, van Manen D, An P, Le Clerc S, Delaneau O, Diop G, Taing L, Montes M, van\'t Wout AB, Gottlieb GS, Therwath A, Rouzioux C, Delfraissy JF, Lelievre JD, Levy Y, Hercberg S, Dina C, Phair J, Donfield S, Goedert JJ, Buchbinder S, Estaquier J, Schachter F, Gut I, Froguel P, Mullins JI, Schuitemaker H, Winkler C, Zagury JF. Multiple-cohort genetic association study reveals CXCR6 as a new chemokine receptor involved in long-term nonprogression to AIDS. J Infect Dis. 2010; 202(6): 908-15. PMCID: PMC3601691</li>
  <li>Lyons T, Chandra G, Goldstein J, Ostrow DG. Breaking the bond between stimulant use and risky sex: a qualitative study. Subst Abus. 2010; 31(4): 224-30. PMCID: PMC2978069</li>
  <li>Margolick JB, Da Costa Castro JM, Sanchez A, Gemrot F, Phair JP, Jamieson BD, Rinaldo CR, Jacobson LP. The relationship between antibody to R7V and progression of HIV type 1 infection. AIDS Res Hum Retroviruses. 2010; 26(4): 389-94. PMCID: PMC2933163</li>
  <li>Palella FJ, Jr., Gange SJ, Benning L, Jacobson L, Kaplan RC, Landay AL, Tracy RP, Elion R. Inflammatory biomarkers and abacavir use in the Women\'s Interagency HIV Study and the Multicenter AIDS Cohort Study. AIDS. 2010; 24(11): 1657-65. PMCID: PMC3514460</li>
  <li>Sacktor N, Skolasky RL, Cox C, Selnes O, Becker JT, Cohen B, Martin E, Miller EN. Longitudinal psychomotor speed performance in human immunodeficiency virus-seropositive individuals: impact of age and serostatus. J Neurovirol. 2010; 16(5): 335-41. PMCID: PMC3068912</li>
  <li>Sander PM, Cole SR, Ostrow DG, Mehta SH, Kirk GD. Determinants of alcohol consumption in HIV-uninfected injection drug users. Drug Alcohol Depend. 2010; 111(1-2): 173-6. PMCID: PMC2930039</li>
  <li>Seaberg EC, Benning L, Sharrett AR, Lazar JM, Hodis HN, Mack WJ, Siedner MJ, Phair JP, Kingsley LA, Kaplan RC. Association between human immunodeficiency virus infection and stiffness of the common carotid artery. Stroke. 2010; 41(10): 2163-70. PMCID: PMC2972735</li>
  <li>Seaberg EC, Wiley D, Martinez-Maza O, Chmiel JS, Kingsley L, Tang Y, Margolick JB, Jacobson LP. Cancer incidence in the multicenter AIDS Cohort Study before and during the HAART era: 1984 to 2007. Cancer. 2010; 116(23): 5507-16. PMCID: PMC2991510</li>
  <li>Sezgin E, Drosdak A, McIntosh C, Kessing B, Lautenberger JA, Goedert JJ, Phair JP, Troyer JL, Smith MW, O\'Brien SJ. Examination of disease-based selection, demographic history and population structure in European Y-chromosome haplogroup I. J Hum Genet. 2010; 55(9): 613-20. PMCID: PMC2945452</li>
  <li>Shiels MS, Cole SR, Chmiel JS, Margolick J, Martinson J, Zhang ZF, Jacobson LP. A comparison of ad hoc methods to account for non-cancer AIDS and deaths as competing risks when estimating the effect of HAART on incident cancer AIDS among HIV-infected men. J Clin Epidemiol. 2010; 63(4): 459-67. PMCID: PMC2837111</li>
  <li>Westreich D, Cole SR, Tien PC, Chmiel JS, Kingsley L, Funk MJ, Anastos K, Jacobson LP. Time scale and adjusted survival curves for marginal structural cox models. Am J Epidemiol. 2010; 171(6): 691-700. PMCID: PMC2877453</li>
</ol>
</div>


<h2>
  <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Publications for 2011 <i class="fa fa-chevron-down"></i></a>
</h2>
<div id="collapseThree" class="panel-collapse collapse">
<ol>
  <li>An P, Li R, Wang JM, Yoshimura T, Takahashi M, Samudralal R, O\'Brien SJ, Phair J, Goedert JJ, Kirk GD, Troyer JL, Sezgin E, Buchbinder SP, Donfield S, Nelson GW, Winkler CA. Role of exonic variation in chemokine receptor genes on AIDS: CCRL2 F167Y association with pneumocystis pneumonia. PLoS Genet. 2011; 7(10): e1002328. PMCID: PMC3203199</li>
  <li>Becker JT, Sanders J, Madsen SK, Ragin A, Kingsley L, Maruca V, Cohen B, Goodkin K, Martin E, Miller EN, Sacktor N, Alger JR, Barker PB, Saharan P, Carmichael OT, Thompson PM. Subcortical brain atrophy persists even in HAART-regulated HIV disease. Brain Imaging Behav. 2011; 5(2): 77-85. PMCID: PMC3082694</li>
  <li>Desquilbet L, Jacobson LP, Fried LP, Phair JP, Jamieson BD, Holloway M, Margolick JB. A frailty-related phenotype before HAART initiation as an independent risk factor for AIDS or death after HAART among HIV-infected men. J Gerontol A Biol Sci Med Sci. 2011; 66(9): 1030-8. PMCID: PMC3156632</li>
  <li>Estrella MM, Parekh RS, Astor BC, Bolan R, Evans RW, Palella FJ, Jr., Jacobson LP. Chronic kidney disease and estimates of kidney function in HIV infection: a cross-sectional study in the multicenter AIDS cohort study. J Acquir Immune Defic Syndr. 2011; 57(5): 380-6. PMCID: PMC3159728</li>
  <li>Farrow MA, Kim EY, Wolinsky SM, Sheehy AM. NFAT and IRF proteins regulate transcription of the anti-HIV gene, APOBEC3G. J Biol Chem. 2011; 286(4): 2567-77. PMCID: PMC3024752</li>
  <li>Gingo MR, Lucht L, Daly KR, Djawe K, Palella FJ, Abraham AG, Bream JH, Witt MD, Kingsley LA, Norris KA, Walzer PD, Morris A. Serologic responses to pneumocystis proteins in HIV patients with and without Pneumocystis jirovecii pneumonia. J Acquir Immune Defic Syndr. 2011; 57(3): 190-6. PMCID: PMC3150634</li>
  <li>Greene JM, Wiseman RW, Lank SM, Bimber BN, Karl JA, Burwitz BJ, Lhost JJ, Hawkins OE, Kunstman KJ, Broman KW, Wolinsky SM, Hildebrand WH, O\'Connor DH. Differential MHC class I expression in distinct leukocyte subsets. BMC Immunol. 2011; 12: 39. PMCID: PMC3155488</li>
  <li>Howe CJ, Cole SR, Chmiel JS, Munoz A. Limitation of inversRole.create(:id => 1, :name => "admin", :description => "Full access user.")e probability-of-censoring weights in estimating survival in the presence of strong selection bias. Am J Epidemiol. 2011; 173(5): 569-77. PMCID: PMC3105434</li>
  <li>Howe CJ, Cole SR, Ostrow DG, Mehta SH, Kirk GD. A prospective study of alcohol consumption and HIV acquisition among injection drug users. AIDS. 2011; 25(2): 221-8. PMCID: PMC3006640</li>
  <li>Julg B, Moodley ES, Qi Y, Ramduth D, Reddy S, Mncube Z, Gao X, Goulder PJ, Detels R, Ndung\'u T, Walker BD, Carrington M. Possession of HLA class II DRB1*1303 associates with reduced viral loads in chronic HIV-1 clade C and B infection. J Infect Dis. 2011; 203(6): 803-9. PMCID: PMC3071131</li>
  <li>Kulkarni S, Savan R, Qi Y, Gao X, Yuki Y, Bass SE, Martin MP, Hunt P, Deeks SG, Telenti A, Pereyra F, Goldstein D, Wolinsky S, Walker B, Young HA, Carrington M. Differential microRNA regulation of HLA-C expression and its association with HIV control. Nature. 2011; 472(7344): 495-8. PMCID: PMC3084326</li>
  <li>Li X, Margolick JB, Jamieson BD, Rinaldo CR, Phair JP, Jacobson LP. CD4+ T-cell counts and plasma HIV-1 RNA levels beyond 5 years of highly active antiretroviral therapy. J Acquir Immune Defic Syndr. 2011; 57(5): 421-8. PMCID: PMC3293185</li>
  <li>Longenberger A, Lim JY, Brown TT, Abraham A, Palella FJ, Effros RB, Orchard T, Brooks MM, Kingsley LA. Low physical function as a risk factor for incident diabetes mellitus and insulin resistance. Future Virol. 2011; 6(4): 439-49. PMCID: PMC3690565</li>
  <li>Martin E, Gonzalez R, Vassileva J, Maki P. HIV+ men and women show different performance patterns on procedural learning tasks. J Clin Exp Neuropsychol. 2011; 33(1): 112-20. PMCID: PMC2990780</li>
  <li>Monroe AK, Dobs AS, Xu X, Palella FJ, Kingsley LA, Witt MD, Brown TT. Sex hormones, insulin resistance, and diabetes mellitus among men with or at risk for HIV infection. J Acquir Immune Defic Syndr. 2011; 58(2): 173-80. PMCID: PMC3175332</li>
  <li>Ng DK, Schwartz GJ, Jacobson LP, Palella FJ, Margolick JB, Warady BA, Furth SL, Munoz A. Universal GFR determination based on two time points during plasma iohexol disappearance. Kidney Int. 2011; 80(4): 423-30. PMCID: PMC3146568</li>
  <li>Palella FJ, Jr., Phair JP. Cardiovascular disease in HIV infection. Curr Opin HIV AIDS. 2011; 6(4): 266-71. PMCID: PMC3501268</li>
  <li>Pelak K, Need AC, Fellay J, Shianna KV, Feng S, Urban TJ, Ge D, De Luca A, Martinez-Picado J, Wolinsky SM, Martinson JJ, Jamieson BD, Bream JH, Martin MP, Borrow P, Letvin NL, McMichael AJ, Haynes BF, Telenti A, Carrington M, Goldstein DB, Alter G. Copy number variation of KIR genes influences HIV-1 control. PLoS Biol. 2011; 9(11): e1001208. PMCID: PMC3226550</li>
  <li>Phair J, Palella F. Renal disease in HIV-infected individuals. Curr Opin HIV AIDS. 2011; 6(4): 285-9. PMCID: PMC3266688</li>
  <li>Ragin AB, D\'Souza G, Reynolds S, Miller E, Sacktor N, Selnes OA, Martin E, Visscher BR, Becker JT. Platelet decline as a predictor of brain injury in HIV infection. J Neurovirol. 2011; 17(5): 487-95. PMCID: PMC3472427</li>
  <li>Regidor DL, Detels R, Breen EC, Widney DP, Jacobson LP, Palella F, Rinaldo CR, Bream JH, Martinez-Maza O. Effect of highly active antiretroviral therapy on biomarkers of B-lymphocyte activation and inflammation. AIDS. 2011; 25(3): 303-14. PMCID: PMC3322644</li>
  <li>Rickabaugh TM, Kilpatrick RD, Hultin LE, Hultin PM, Hausner MA, Sugar CA, Althoff KN, Margolick JB, Rinaldo CR, Detels R, Phair J, Effros RB, Jamieson BD. The dual impact of HIV-1 infection and aging on naive CD4 T-cells: additive and distinct patterns of impairment. PLoS One. 2011; 6(1): e16459. PMCID: PMC3027697</li>
  <li>Spindler J, Hackett J, Jr., Qiu X, Wiegand A, Boltz VF, Swanson P, Bream JH, Jacobson LP, Li X, Rinaldo CR, Wolinsky SM, Coffin JM, Kearney MF, Mellors JW. Prevalence of XMRV nucleic acid and antibody in HIV-1-Infected men and in men at risk for HIV-1 Infection. Adv Virol. 2011; 2011: 268214. PMCID: PMC3265298</li>
  <li>Tsao JC, Stein JA, Ostrow D, Stall RD, Plankey MW. The mediating role of pain in substance use and depressive symptoms among Multicenter AIDS Cohort Study (MACS) participants. Pain. 2011; 152(12): 2757-64. PMCID: PMC3215839</li>
  <li>Vassileva J, Georgiev S, Martin E, Gonzalez R, Segala L. Psychopathic heroin addicts are not uniformly impaired across neurocognitive domains of impulsivity. Drug Alcohol Depend. 2011; 114(2-3): 194-200. PMCID: PMC3062675</li>
</ol>
</div>

<h2>
  <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">Publications for 2012 <i class="fa fa-chevron-down"></i></a>
</h2>
<div id="collapseFour" class="panel-collapse collapse">
<ol>
  <li>Abraham AG, Palella FJ, Li X, Estrella MM, Kingsley LA, Witt MD, Jacobson LP. The impact of impaired kidney function and HIV infection on the risk of anemia. AIDS Res Hum Retroviruses. 2012; 28(12): 1666-71. PMCID: PMC3505063</li>
  <li>Beachler DC, Weber KM, Margolick JB, Strickler HD, Cranston RD, Burk RD, Wiley DJ, Minkoff H, Reddy S, Stammer EE, Gillison ML, D\'Souza G. Risk factors for oral HPV infection among a high prevalence population of HIV-positive and at-risk HIV-negative adults. Cancer Epidemiol Biomarkers Prev. 2012; 21(1): 122-33. PMCID: PMC3280125</li>
  <li>Becker JT, Maruca V, Kingsley LA, Sanders JM, Alger JR, Barker PB, Goodkin K, Martin E, Miller EN, Ragin A, Sacktor N, Selnes O. Factors affecting brain structure in men with HIV disease in the post-HAART era. Neuroradiology. 2012; 54(2): 113-21. PMCID: PMC3154580</li>
  <li>Brennan CA, Ibarrondo FJ, Sugar CA, Hausner MA, Shih R, Ng HL, Detels R, Margolick JB, Rinaldo CR, Phair J, Jacobson LP, Yang OO, Jamieson BD. Early HLA-B*57-restricted CD8+ T lymphocyte responses predict HIV-1 disease progression. J Virol. 2012; 86(19): 10505-16. PMCID: PMC3457253</li>
  <li>Cocohoba JM, Althoff KN, Godfrey R, Palella FJ, Greenblatt RM. Influence of gender on receipt of guideline-based antiretroviral therapy in the era of HAART. AIDS Care. 2012; 24(1): 20-9. PMCID: PMC3222784</li>
  <li>Cole SR, Hudgens MG, Tien PC, Anastos K, Kingsley L, Chmiel JS, Jacobson LP. Marginal structural models for case-cohort study designs to estimate the association of antiretroviral therapy initiation with incident AIDS or death. Am J Epidemiol. 2012; 175(5): 381-90. PMCID: PMC3282878</li>
  <li>Deng Z, Gao X, Kirk GD, Wolinsky S, Carrington M. Characterization of the HLA-C*07:01:01G allele group in European and African-American cohorts. Hum Immunol. 2012; 73(7): 715-9. PMCID: PMC3377779</li>
  <li>Detels R, Jacobson L, Margolick J, Martinez-Maza O, Munoz A, Phair J, Rinaldo C, Wolinsky S. The multicenter AIDS Cohort Study, 1983 to. Public Health. 2012; 126(3): 196-8. PMCID: PMC3324261</li>
  <li>Dyer TP, Shoptaw S, Guadamuz TE, Plankey M, Kao U, Ostrow D, Chmiel JS, Herrick A, Stall R. Application of syndemic theory to black men who have sex with men in the Multicenter AIDS Cohort Study. J Urban Health. 2012; 89(4): 697-708. PMCID: PMC3535137</li>
  <li>Falade-Nwulia O, Seaberg EC, Rinaldo CR, Badri S, Witt M, Thio CL. Comparative risk of liver-related mortality from chronic hepatitis B versus chronic hepatitis C virus infection. Clin Infect Dis. 2012; 55(4): 507-13. PMCID: PMC3520384</li>
  <li>Hart TA, Moskowitz D, Cox C, Li X, Ostrow DG, Stall RD, Gorbach PM, Plankey M. The cumulative effects of medication use, drug use, and smoking on erectile dysfunction among men who have sex with men. J Sex Med. 2012; 9(4): 1106-13. PMCID: PMC3319271</li>
  <li>Hechter RC, Budoff M, Hodis HN, Rinaldo CR, Jenkins FJ, Jacobson LP, Kingsley LA, Taiwo B, Post WS, Margolick JB, Detels R. Herpes simplex virus type 2 (HSV-2) as a coronary atherosclerosis risk factor in HIV-infected men: multicenter AIDS cohort study. Atherosclerosis. 2012; 223(2): 433-6. PMCID: PMC3392500</li>
  <li>Levine AJ, Service S, Miller EN, Reynolds SM, Singer EJ, Shapshak P, Martin EM, Sacktor N, Becker JT, Jacobson LP, Thompson P, Freimer N. Genome-wide association study of neurocognitive impairment and dementia in HIV-infected adults. Am J Med Genet B Neuropsychiatr Genet. 2012; 159B(6): 669-83. PMCID: PMC3418456</li>
  <li>Lim SH, Ostrow D, Stall R, Chmiel J, Herrick A, Shoptaw S, Kao U, Carrico A, Plankey M. Changes in stimulant drug use over time in the MACS: evidence for resilience against stimulant drug use among men who have sex with men. AIDS Behav. 2012; 16(1): 151-8. PMCID: PMC3133874</li>
  <li>Monroe AK, Dobs AS, Xu X, Palella FJ, Kingsley LA, Post WS, Witt MD, Brown TT. Low free testosterone in HIV-infected men is not associated with subclinical cardiovascular disease. HIV Med. 2012; 13(6): 358-66. PMCID: PMC3505881</li>
  <li>Price JC, Seaberg EC, Badri S, Witt MD, D\'Acunto K, Thio CL. HIV monoinfection is associated with increased aspartate aminotransferase-to-platelet ratio index, a surrogate marker for hepatic fibrosis. J Infect Dis. 2012; 205(6): 1005-13. PMCID: PMC3282573</li>
  <li>Rueda S, Raboud J, Plankey M, Ostrow D, Mustard C, Rourke SB, Jacobson LP, Bekele T, Bayoumi A, Lavis J, Detels R, Silvestre AJ. Labor force participation and health-related quality of life in HIV-positive men who have sex with men: the Multicenter AIDS Cohort Study. AIDS Behav. 2012; 16(8): 2350-60. PMCID: PMC3575137</li>
  <li>Schneider MF, Margolick JB, Jacobson LP, Reddy S, Martinez-Maza O, Munoz A. Improved estimation of the distribution of suppressed plasma HIV-1 RNA in men receiving effective antiretroviral therapy. J Acquir Immune Defic Syndr. 2012; 59(4): 389-92. PMCID: PMC3299865</li>
  <li>Shoptaw S, Stall R, Bordon J, Kao U, Cox C, Li X, Ostrow DG, Plankey MW. Cumulative exposure to stimulants and immune function outcomes among HIV-positive and HIV-negative men in the Multicenter AIDS Cohort Study. Int J STD AIDS. 2012; 23(8): 576-80. PMCID: PMC3576843</li>
  <li>Thapa DR, Bhatia K, Bream JH, D\'Souza G, Rinaldo CR, Wolinsky S, Detels R, Martinez-Maza O. B-cell activation induced microRNA-21 is elevated in circulating B cells preceding the diagnosis of AIDS-related non-Hodgkin lymphomas. AIDS. 2012; 26(9): 1177-80. PMCID: PMC3355225</li>
  <li>Thomas R, Thio CL, Apps R, Qi Y, Gao X, Marti D, Stein JL, Soderberg KA, Moody MA, Goedert JJ, Kirk GD, Hoots WK, Wolinsky S, Carrington M. A novel variant marking HLA-DP expression levels predicts recovery from hepatitis B virus infection. J Virol. 2012; 86(12): 6979-85. PMCID: PMC3393572</li>
  <li>Westreich D, Cole SR, Young JG, Palella F, Tien PC, Kingsley L, Gange SJ, Hernan MA. The parametric g-formula to estimate the effect of highly active antiretroviral therapy on incident AIDS or death. Stat Med. 2012; 31(18): 2000-9. PMCID: PMC3641816</li>
</ol>
</div>

<h2>
  <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive">Publications for 2013 <i class="fa fa-chevron-down"></i></a>
</h2>
<div id="collapseFive" class="panel-collapse collapse">
<ol>
  <li>Apps R, Qi Y, Carlson JM, Chen H, Gao X, Thomas R, Yuki Y, Del Prete GQ, Goulder P, Brumme ZL, Brumme CJ, John M, Mallal S, Nelson G, Bosch R, Heckerman D, Stein JL, Soderberg KA, Moody MA, Denny TN, Zeng X, Fang J, Moffett A, Lifson JD, Goedert JJ, Buchbinder S, Kirk GD, Fellay J, McLaren P, Deeks SG, Pereyra F, Walker B, Michael NL, Weintrob A, Wolinsky S, Liao W, Carrington M. Influence of HLA-C expression level on HIV control. Science. 2013; 340(6128): 87-91. NIHMSID: NIHMS484348</li>
  <li>Aziz N, Margolick JB, Detels R, Rinaldo CR, Phair J, Jamieson BD, Butch AW. Value of a quality assessment program in optimizing cryopreservation of peripheral blood mononuclear cells in a multicenter study. Clin Vaccine Immunol. 2013; 20(4): 590-5. PMCID: PMC3623420</li>
  <li>Gingo MR, Balasubramani GK, Kingsley L, Rinaldo CR, Jr., Alden CB, Detels R, Greenblatt RM, Hessol NA, Holman S, Huang L, Kleerup EC, Phair J, Sutton SH, Seaberg EC, Margolick JB, Wisniewski SR, Morris A. The impact of HAART on the respiratory complications of HIV infection: longitudinal trends in the MACS and WIHS cohorts. PLoS One. 2013; 8(3): e58812. PMCID: PMC3595204</li>
  <li>Hacioglu Y, Gupta M, Choi TY, George RT, Deible CR, Jacobson LP, Witt MD, Palella FJ, Post WS, Budoff MJ. Use of cardiac CT angiography imaging in an epidemiology study - the Methodology of the Multicenter AIDS Cohort Study cardiovascular disease substudy. Anadolu Kardiyol Derg. 2013; 13(3): 207-14. PMCID: PMC3673004</li>
  <li>Herrick AL, Lim SH, Plankey MW, Chmiel JS, Guadamuz TE, Kao U, Shoptaw S, Carrico A, Ostrow D, Stall R. Adversity and syndemic production among men participating in the multicenter AIDS cohort study: a life-course approach. Am J Public Health. 2013; 103(1): 79-85. NIHMSID: NIHMS483256</li>
  <li>Herrick AL, Stall R, Chmiel JS, Guadamuz TE, Penniman T, Shoptaw S, Ostrow D, Plankey MW. It gets better: resolution of internalized homophobia over time and associations with positive health outcomes among MSM. AIDS Behav. 2013; 17(4): 1423-30. NIHMSID: NIHMS432621</li>
  <li>Hussain SK, Zhu W, Chang SC, Breen EC, Vendrame E, Magpantay L, Widney D, Conn D, Sehl M, Jacobson LP, Bream JH, Wolinsky S, Rinaldo CR, Ambinder RF, Detels R, Zhang ZF, Martinez-Maza O. Serum levels of the chemokine CXCL13, genetic variation in CXCL13 and its receptor CXCR5, and HIV-associated non-hodgkin B-cell lymphoma risk. Cancer Epidemiol Biomarkers Prev. 2013; 22(2): 295-307. NIHMSID: NIHMS428477</li>
  <li>Lane J, McLaren PJ, Dorrell L, Shianna KV, Stemke A, Pelak K, Moore S, Oldenburg J, Alvarez-Roman MT, Angelillo-Scherrer A, Boehlen F, Bolton-Maggs PH, Brand B, Brown D, Chiang E, Cid-Haro AR, Clotet B, Collins P, Colombo S, Dalmau J, Fogarty P, Giangrande P, Gringeri A, Iyer R, Katsarou O, Kempton C, Kuriakose P, Lin J, Makris M, Manco-Johnson M, Tsakiris DA, Martinez-Picado J, Mauser-Bunschoten E, Neff A, Oka S, Oyesiku L, Parra R, Peter-Salonen K, Powell J, Recht M, Shapiro A, Stine K,
      Talks K, Telenti A, Wilde J, Yee TT, Wolinsky SM, Martinson J, Hussain SK, Bream JH, Jacobson LP, Carrington M, Goedert JJ, Haynes BF, McMichael AJ, Goldstein DB, Fellay J. A genome-wide association study of resistance to HIV infection in highly exposed uninfected individuals with hemophilia A. Hum Mol Genet. 2013; 22(9): 1903-10. PMCID: PMC3613165</li>
  <li>Nicholaou MJ, Martinson JJ, Abraham AG, Brown TT, Hussain SK, Wolinsky SM, Kingsley LA. HAART-associated dyslipidemia varies by biogeographical ancestry in the multicenter AIDS cohort study. AIDS Res Hum Retroviruses. 2013; 29(6): 871-9. PMCID: PMC3653392</li>
  <li>Vo QT, Cox C, Li X, Jacobson LP, McKaig R, Sacktor N, Selnes OA, Martin E, Becker JT, Miller EN. Neuropsychological test performance before and after HIV-1 seroconversion: the Multicenter AIDS Cohort Study. J Neurovirol. 2013; 19(1): 24-31. PMCID: PMC3568242</li>
  <li>Wada N, Jacobson LP, Cohen M, French A, Phair J, Munoz A. Cause-specific life expectancies after 35 years of age for human immunodeficiency syndrome-infected and human immunodeficiency syndrome-negative individuals followed simultaneously in long-term cohort studies, 1984-2008. Am J Epidemiol. 2013; 177(2): 116-25. PMCID: PMC3590031</li>
  <li>Witt MD, Seaberg EC, Darilay A, Young S, Badri S, Rinaldo CR, Jacobson LP, Detels R, Thio CL. Incident hepatitis C virus infection in men who have sex with men: a prospective cohort analysis, 1984-2011. Clin Infect Dis. 2013; 57(1): 77-84. PMCID: PMC3669529</li>
</ol>
</div>

<h2>
  <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix">In Press <i class="fa fa-chevron-down"></i></a>
</h2>
<div id="collapseSix" class="panel-collapse collapse">
<ol>
  <li>Abraham AG, Li X, Jacobson LP, Estrella MM, Evans RW, Witt MD, Phair J.  Antiretroviral therapy-induced changes in plasma lipids and the risk of kidney dysfunction in HIV-infected men.  AIDS Res Hum Retroviruses 2013 PMCID:  PMC Journal - In Process</li>
  <li>Althoff KN, Jacobson LP, Cranston RD, Detels R, Phair JP, Li X, Margolick JB for the Multicenter AIDS Cohort Study.  Age, comorbidities and AIDS predict the frailty phenotype in men who have sex with men.  J Gerontol A Biol Sci Med Sci 2013.  PMCID: PMC Journal - In Process</li>
  <li>Crawford KW, Li X, Xu X, Abraham AG, Dobs AS, Margolick JB, Palella FJ, Kingsley LA, Witt MD, Brown TT.  Lipodystrophy and inflammation predict later grip strength in HIV-infected men: The MACS Body Composition Sub-study.  AIDS Res Hum Retroviruses 2013  PMCID: PMC Journal - In Process</li>
  <li>D\'Souza G, Rajan S, Bhatia R, Cranston RD, Plankey MW, Silvestre A, Ostrow DG, Wiley D, Shah N, Brewer NT. Uptake and predictors of anal cancer screening in men who have sex with men.  Am J Public Health 2013  NIHMSID: NIHMS444134</li>
  <li>Martin EM, DeHaan S, Vassileva J, Gonzalez R, Weller J, Bechara A. Decision making among HIV+ drug using men who have sex with men: A preliminary report from the Chicago Multicenter AIDS Cohort Study. J Clin Exp Neuropsych  2013.  NIHMSID: NIHMS474974</li>
  <li>Mata MM, Iwema JR, Dell S, Neems LC, Jamieson BD, Phair JP, Cohen MH, Anastos K, Baum LL.  Comparison of antibodies that mediate HIV-1 gp120 ADCC in asymptomatic HIV-1 positive men and women.  AIDS Res Hum Retroviruses 2013 PMCID: PMC Journal - In Process</li>
  <li>Sander PM, Cole SR, Stall RD, Jacobson LP, Eron JJ, Napravnik S, Gaynes BN, Johnson-Hill LM, Bolan RK, Ostrow DG. Joint effects of alcohol consumption and high-risk sexual behavior on HIV seroconversion among men who have sex with men. AIDS. 2013; 27(5): 815-23. PMCID: PMC Journal - In Process.</li>
</ol>
</div>

<h2>
  <a data-toggle="collapse" data-parent="#accordion" href="#collapseSeven">Submitted for Publication <i class="fa fa-chevron-down"></i></a>
</h2>
<div id="collapseSeven" class="panel-collapse collapse">
<ol>
  <li>Althoff KN, Margolick JB, Reddy S, Mehta SH, Gange SJ, Kingsley L, Detels R, Jacobson LP.  Estimating the proportion of older men who have sex with men who have aged with HIV in the US.</li>
  <li>Brener MI, Ketlogetswe K, Budoff M, Jacobson LP, Li X, Rezaeuab O, Razipour A, Palella FJ, Kingsley L, Witt MD, George RT, Brown T, Post WS.  Epicardial fat is associated with duration of antiretroviral therapy and coronary atherosclerosis in the Multicenter AIDS Cohort Study (MACS).</li>
  <li>Burke JG, Lim SH, Marshal M, Silvestre A, Albert S, Ostrow D, Stall R.  Trajectories of frequent drug use among aging men who have sex with men in the Multicenter AIDS Cohort Study.</li>
  <li>Epstein MM, Breen EC, Magpantay L, Detels R, Lepone L, Penugonda S, Bream JH, Jacobson LP, Martinez-Maza O, Birmann BM.  Temporal stability of serum concentrations of cytokines and soluble receptors measured across two years in low-risk HIV seronegative men.</li>
  <li>Hines LJ, Miller EN, Hinkin CH, Alger JR, Barker P, Goodkin K, Martin EM, Maruca V, Ragin A, Sacktor N, Sanders J, Selnes O, Becker JT for the Multicenter AIDS Cohort Study. Cortical brain atrophy and intra-individual variability in neuropsychological test performance in HIV disease.</li>
  <li>Jacobson LP, Li X, Wolinsky SM, Detels R, Margolick JB, Mellors JW, Phair JP. HIV RNA failure following initiating highly active antiretroviral therapy regimens.</li>
  <li>Margolick JB, Jacobson LP, Schwartz GJ, Abraham AG, Darily AT, Kingsley LA, Witt MD, Palella FJ.  Factors affecting glomerular filtration rate, as measured by iohexol disappearance rate, in HIV-infected or -uninfected men.</li>
  <li>Mata MM, Iwema JR, Dell S, Neems LC, Jamieson BD, Phair JP, Cohen MH, Anastos K, Baum LL. Asymptomatic HIV-1 positive men and women have comparable HIV-1 gp120 ADCC mediating antibodies.</li>
  <li>Mateen F, Post W, Sacktor N, Abraham A, Becker J, Smith B, Detels R, Martin E, Phair J, Shinohara R.  Long term predictive value of the Framingham risk factor score for stroke in HIV+ vs. HIV- men: The Multicenter AIDS Cohort Study, 1996-2011.</li>
  <li>Monroe AK, Dobs AS, Palella FJ, Kingsley LA, Witt MD, Brown TT.  Free Testosterone levels should be used routinely to diagnose hypogonadism in HIV-infected men.</li>
  <li>Ng D, Jacobson LP, Brown TT, Palella FJ Jr, Martinson JJ, Bolan R, Miller ER, Schwartz GJ, Abraham AG, Estrella MM.  HIV antiretroviral therapy, metabolic and cardiovascular health are associated with glomerular hyperfiltration in the Multicenter AIDS Cohort Study.</li>
  <li>Ostrow DG, Schneider JA, Michaels S, Friedman SR, Cornwell B, Lindsay K, Berona J, Plankey MW, Jacobson L. Self-reported PEP/PrEP use among African-American MSM associated with Reduced levels of risk-taking among HIV-seropositive men: Why do HIV-positive Black MSM report high rates of post- and pre-exposure prophylaxis (PEP and PrEP) use?</li>
  <li>Seaberg EC, Witt MD, Jacobson LP, Detels R, Rinaldo CR, Young S, Phair JP, Thio CL.  Differential effects on hepatitis C virus (HCV) prevalence and spontaneous clearance by mode of transmission among men who have sex with men (MSM).</li>
  <li>Slama L, Li X, Brown T, Jacobson LP, Pialoux G, Macatangay B, Bolan R, Phair J, Palella FJ Jr. for the Multicenter AIDS Cohort Study.  Changes in the duration of first HAART during 1996-2009: Factors associated with regimen switching in the Multicenter AIDS Cohort Study.</li>
  <li>Surkan PJ, Shah N, Jacobson LP, Silvestre A, Gorbach P, Shoptaw S, Teplin L, Plankey M.  Unsafe sexual behavior among homosexual men in the era of highly active antiretroviral therapy.</li>
  <li>Thapa DR, Tran W-C,  D\'Souza D,  Bream JH,  Achenbach CJ, Ayyavoo V,  Detels R, Martinez-Maza O.  Serum microRNAs in HIV-infected individuals as pre-diagnosis biomarkers for AIDS-related non-Hodgkin lymphomas (AIDS-NHL).</li>
  <li>Wada N, Jacobson LP, Cohen M, French A, Phair J, Munoz A.  Cause-specific mortality among HIV-infected individuals, by CD4 cell count at HAART initiation, compared to HIV-uninfected individuals.</li>
  <li>Wright MJ, Miller EN, Reinhard MJ, Cottingham ME, Cox C, Reynolds S, Martin EM, Becker JT, Selnes OA, Manly J. The role of education level and quality in neuropsychological test performances of ethnic minorities.</li>
</ol>
</div>

</div>
',
:site_id => 1)

Eligibility.create(
:title => 'Eligibility Criteria',
:content => '
<p class="subtitle">In order to be eligible to take part in MACs, you must meet the following criteria:</p>
<div class="row text-left">
  <div class="col-sm-4"></div>
  <div class="col-sm-8">
    <p class="subtitle">
      Male<br /><br />
      Aged 18-70<br /><br />
      Evidence of recent HIV infection<br />
    </p>
  </div>
</div>
<div class="row text-left">
  <div class="col-sm-6"></div>
  <div class="col-sm-6">
    <p class="subtitle"><strong>evidence of HIV infection may include:</strong><br />
      + Ag/Ab test<br />
      + HIV viral load<br />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>or</strong><br />
      Indeterminate or negative Western blot<br /></p>
  </div>
</div>
<p class="subtitle">As an observational study no medications are provided, you will receive laboratory and other medical evaluations as part of the study and will be compensated for your time.</p>
',
:site_id => 1)

Consent.create!(
:site_id => 1,
:header =>
  '<table class="table table-short">
    <tr><td>Digital Consent Form and HIPAA Authorization for Research</td></tr>
    <tr><td>PROTOCOL TITLE</td><td>Evaluation of newly infected HIV subjects-Chicago, MACS substudy</td></tr>
    <tr><td>PRINCIPAL INVESTIGATOR</td><td>Steven Wolinksy, MD</td></tr>
    <tr><td>SUPPORTED BY</td><td>National Institutes of Health (NIH)</td></tr>
  </table>',
:body =>
  '<p>You are being asked to take part in a research study. This document has important information about the reason for the study, what you will do if you choose to be in this research study, and the way we (i.e., Northwestern University) would like to use information about you and your health.  To be eligible for the study we will need to confirm certain information about your HIV status and whether you are eligible to participate.</p>
  <div class="divider-2"></div>

  <h3>What is the reason for doing this study?</h3>
  <p>The purpose of this study is to understand more about recent HIV infection among men in the Multicenter AIDS Cohort Study (MACS).  Persons who have recent HIV may have differences in the HIV virus and the bodies immune response to HIV as compared to persons who have had HIV for more than one year.  They may also have different responses to HIV medications.  We hope to look at your HIV virus and see how similar or different the virus is to
    persons with long standing HIV and other persons with recent HIV.  We hope to look at your body\'s immune responses to HIV. You are being asked to see if you can participate in the study because your doctor feels you have contracted HIV within the past year.</p>
  <div class="divider-2"></div>

  <h3>What you will do if you choose to be in this study?</h3>
  <p>In order to determine whether you are eligible for the study, we will initially ask you to complete a brief series of questions about your health and HIV status. These will include questions about when you think you might have contracted HIV. The questions will take about five minutes.</p>
  <p>As part of the eligibility process, we ask your permission for a study personnel to contact you to arrange a time to meet at our clinic at Northwestern Hospital. If you are determined to be eligible, a study personnel will contact you via the method that selected.  They will arrange for you to come to our clinic.  There you will learn more about the MACS study and recent HIV substudy and can decide then whether you want to participate.</p>
  <div class="divider-2"></div>

  <h3>What are some of the risks and discomforts that may happen to people who are in this study?</h3>
  <p>The risks from completing the self-report measures and interviews are minimal, but it is possible that you may experience emotional discomfort or increased anxiety as a result of answering questions about your HIV infection, especially if this is a new diagnosis for you.  You have the option of stopping at any time</p>
  <div class="divider-2"></div>

  <h3>What are some of the benefits that are likely to come from my being in this study?</h3>
  <p>The possible benefits to you from the MACS and recent HIV study if you are determined to be eligible include:</p>
  <ul>
    <li>You will have laboratory tests that measure the effect of HIV on your body.  Some of these tests may be useful to help you and your doctor decide upon and monitor your HIV medications.</li>
    <li>Otherwise there are no other direct benefits to you from the study as the study will not provide HIV medications.</li>
    <li>By being in this study, you may help people at risk for or who contract HIV infection in the future.</li>
  </ul>
  <div class="divider-2"></div>

  <h3>Are there any financial costs to being in this study?</h3>
  <p>There will be no costs to you for being in this study. If you are selected to participate in the full MACS study , you will receive $40 plus $10 transportation costs for each study visit, plus you may receive up to $100.00 if you additional study procedures such as removal of lymph nodes for study.  Payment will be at the completion of the study visits. You will not receive any compensation for filling out these screening questions or if you are found NOT to be eligible for the study.</p>
  <div class="divider-2"></div>

  <h3>If I have questions or concerns about this research study, whom can I call?</h3>
  <p>Dr. Wolinksy is the person in charge of this research study. You can call him at 312-926-8358 at any time during the day or weekend.</p>
  <div class="divider-2"></div>

  <h3>What are my rights as a research subject?</h3>
  <p>If you choose to be in this study, you have the right to be treated with respect, including respect for your decision whether or not you wish to continue or stop being in the study.  You are free to choose to stop being in the study at any time.</p>
  <p>Choosing not to be in this study or to stop being in this study will not result in any penalty to you or loss of benefit to which you are entitled.  Specifically, your choice not to be in this study will not negatively affect your right to any present or future medical treatment.</p>
  <p>If you want to speak with someone who is not directly involved in this research, or have questions about your rights as a research subject, please contact the Northwestern University Institutional Review Board (IRB) Office. You can call them at 312-503-9338.</p>
  <div class="divider-2"></div>

  <h3>What about my confidentiality and privacy rights?</h3>
  <p>We are committed to respect your privacy and to keep your personal information confidential.</p>
  <p>When choosing to take part in this study, you may be asked to give permission for MACS investigators to obtain your personal health information from your medical records. Such records include your name, address, phone number or social security number. Your health information we may collect and use for this research includes:</p>
  <ul>
    <li>all information in a medical record</li>
    <li>results of physical examinations</li>
    <li>medical history</li>
    <li>lab tests, or certain health information indicating or relating to a particular condition as well diaries and questionnaires</li>
    <li>HIV results</li>
    <li>records about study medication or drugs</li>
    <li>records about study devices</li>
  </ul>
  <p>In a separate consent, you will also be asked to give permission let MACS investigators contact your primary care providers to provide information about you.</p>
  <p>Please note that any research information shared with people outside of Northwestern University will not contain your name, address, telephone or social security number or any other direct personal identifier unless disclosure of the direct identifier is required by law [except that such information may be viewed by the Study sponsor at the Principal Investigators office]</p>
  <p>Authorized members of Northwestern University workforce, however, may need to see your information, such as administrative staff members from the Office of Research, and members of the Institutional review Board (a committee which is responsible for the ethical oversight of the study)</p>
  <div class="divider"></div>',
:footer =>
  '
<h2 class="title">Eligibility Criteria</h2>
<p class="subtitle">In order to be eligible to take part in MACs, you must meet the following criteria:</p>
<div class="row text-left">
  <div class="col-sm-4"></div>
  <div class="col-sm-8">
    <p class="subtitle">
      <strong>Male</strong><br /><br />
      <strong>Aged 18-70</strong><br /><br />
      <strong>Evidence of recent HIV infection</strong><br />
    </p>
  </div>
</div>
<div class="row text-left">
  <div class="col-sm-6"></div>
  <div class="col-sm-6">
    <p class="subtitle"><strong>evidence of HIV infection may include:</strong><br />
      + Ag/Ab test<br />
      + HIV viral load<br />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>or</strong><br />
      Indeterminate or negative Western blot<br /></p>
  </div>
</div>
<p class="subtitle">As an observational study no medications are provided, you will receive laboratory and other medical evaluations as part of the study and will be compensated for your time.</p>
')

=end