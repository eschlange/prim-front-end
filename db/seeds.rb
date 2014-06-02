# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create(:id => 1, :name => "admin", :description => "Full access user.")
Role.create(:id => 2, :name => "content manager", :description => "Creates and edits pages and creates participants.")
Role.create(:id => 3, :name => "participant", :description => "Reads pages and can edit personal user information.")

Site.create(:id => 1, :name => "MACs", :content => "This is the content of the homes page for MACs.")

Intervention.create(:id => 1, :name => 'Purpose of Research', :description =>
  '<p>You are being asked to take part in a research study. This document has important information about the reason for the study, what you will do if you choose to be in this research study, and the way we (i.e., Northwestern University) would like to use information about you and your health.  To be eligible for the study we will need to confirm certain information about your HIV status and whether you are eligible to participate.</p>
  <div class="divider-2"></div>

  <h3>What is the reason for doing this study?</h3>
  <p>The purpose of this study is to understand more about recent HIV infection among men in the Multicenter AIDS Cohort Study (MACS).  Persons who have recent HIV may have differences in the HIV virus and the bodies immune response to HIV as compared to persons who have had HIV for more than one year.  They may also have different responses to HIV medications.  We hope to look at your HIV virus and see how similar or different the virus is to persons with long standing HIV and other persons with recent HIV.  We hope to look at your body\'s immune responses to HIV. You are being asked to see if you can participate in the study because your doctor feels you have contracted HIV within the past year.</p>
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
          :site_id => 1)

Home.create(:title => "MACs Home", :content => "Description goes here for the MACs homes page.", :site_id => 1)
About.create(:title => 'About MACs', :content =>
  ' <p>In the fall of 1983, a group of investigators met at the National Institutes of Health  (NIH ) to design a prospective epidemiologic study of the newly recognized immunodeficiency syndrome  in men who had sex with men (MSM) in Los Angeles, San Francisco and New York. Upon completion of designing the protocol, recruitment of MSM began in April of 1984 into the investigation which was named The Multicenter AIDS Cohort Study or MACS. The first wave of participant recruitment was completed by March 31, 1985. Since then three  more periods of enrollment have been opened; the first in 1987 to increase the participation of African-American (AA) MSM in the study and the second in 2001 to again increase participation by AA and Hispanic MSM.  Currently, recruitment of MSM, with recent HIV infection, to replace recent losses caused by death and dropouts has been initiated. As of October 2013, 7087 men have volunteered and participated in the MACS. The currently active participants number 2340; 35 % are non white and half of all participants are older than 55 years of age.  In Chicago 1387 men have enrolled into the study.</p>
    <p>The initial recruitment in 1984-85 was carried out before we had a laboratory test to determine who was a risk of developing AIDS.  HIV had been suggested as the cause of the immunodeficiency in 1983 by investigators at the Pasteur Institute in Paris but this was not  confirmed until the spring of 1984ot by investigators in San Francisco and the NIH in the spring of 1984. However, a blood test to determine who was infected did not become available until the spring of 1985. When the original group of MSM who had joined the MACS underwent  testing it was discovered that approximately 40 percent of the cohort was infected.</p>
    <p>This allowed the MACS to address two important issues. First, we could determine the behaviors, clinical findings and laboratory results which were associated with progression from HIV infection to AIDS. Secondly among the uninfected men, the behaviors that led to HIV infection and the early signs and symptoms of this viral infection could be elucidated. To date 712 uninfected men at entry into the MACS acquired HIV infection during the study, 333 developed AIDS and 82.9% of these men have died.</p>
    <p>Early in the course of the study it became apparent that dementia was a major problem for men who developed advanced HIV infection and AIDS. MACS investigators organized a working group of neurologists to investigate this problem. The most important early finding was that severe central nervous system (brain and spinal cord) problems were seen only in persons with AIDS and that there was no reason for HIV infected men without AIDS to be restricted in their work. This finding became the basis of World Health Organization recommendation which was widely accepted advising that persons with HIV infection need not be restricted in their activities.</p>
    <p>During the period of the 1980s the death rate among the infected MACS participants was very high. As of the fall of 2013, close to 90 percent of men who entered the MACS with HIV infection have died. The MACS investigators were among the first to demonstrated that the T-Helper cell count below 200/mm3 were associated with a high rate of  pneumocystis pneumonia (PCP) and helper cell counts below 100/mm3 put individuals at risk for cytomegalovirus  retinitis, atypical mycobacterial infections, and infection of the brain with the parasite Toxoplasma gondii. Giving antibiotics to prevent some of these opportunistic infections helped but the early agents available to treat the HIV infection did not prevent progression to AIDS or death.</p>
    <p>An early observation of MACS investigators was that the progression of newly acquired HIV infections to AIDS differed from individual to individual. Determinants of this heterogeneity included age at the time of infection and host genetics. The genetic makeup of an individual determines their immune response to HIV which in turn controls the rate of viral replication. Lower levels of replication result in slower progression of untreated HIV infection. Host genetics also determines susceptibility to HIV infection. The MACS contributed to the discovery of an uncommon mutation which protects people with this mutation from the usual form of HIV which is transmitted sexually.</p>
    <p>With the availability of effective antiretroviral therapy in late 1995 progression to AIDS and death decreased dramatically in men on therapy. Close to 80% of participants in the MACS taking drugs have suppressed HIV replication and the median T-helper cell count is near 600/mm3. Stopping drug treatment results in progression of HIV infection and disease. With this greatly improved survival of infected participants the MACS has focused upon the health status of men who were living longer. To accomplish this investigators have been recruited into working groups with interest in diseases of the heart, lungs, kidneys, liver and metabolic diseases such as diabetes. The behavioral working group has continued to study behaviors to determine why men fail to adhere to treatment. Recreational drugs and alcohol use have been shown to be associated with poor adherence. Drug use also is associated with a marked increase in the risk of acquiring HIV infection. The neurology working group continues to investigate brain function among aging HIV infected men and the Aging working group is attempting  to determine whether or not HIV infected men age more rapidly than in infected men.</p>',
          :site_id => 1)
ContactUs.create(:title => 'Contact Us', :content =>
  '<table class="table">
      <tbody>
      <tr>
        <th><p class="subtitle">PRINCIPAL INVESTIGATOR</p></th>
        <td><p class="subtitle">Steven Wolinsky, MD<br/>
          Division of Infectious Diseases, Feinberg School of Medicine<br/>
          645 N Michigan Ave, Suite 900<br/>
          Chicago, IL 60666<br/>
          312-695-2372 <br/>
          Fax 312-695-5088<br/>
          s-galvin@northwestern.edu<br/>
          </p>
        </td>
      </tr>
      <tr>
        <th><p class="subtitle">SUB-INVESTIGATORS</p></th>
        <td><p class="subtitle">Shannon Galvin, MD<br/>
          John Phair, MD<br/>
          Frank Palella, MD<br/>
          Sudhir Penugonda, MD<br/>
          Northwestern University<br/>
        </p></td>
      </tr>
      <tr>
        <th><p class="subtitle">PARTICIPATING SITES</p></th>
        <td><p class="subtitle">Northwestern University<br/>
          645 N Michigan Ave, Suite 900<br/>
          Chicago, IL 60666<br/>
          312-695-2372<br/>
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
Funding.create(:title => "MACs Funding", :content => "Description goes here for the MACs funding page.", :site_id => 1)
Resource.create(:title => "MACs Publications and Resources", :content => "Description goes here for the MACs resource page.", :site_id => 1)

Eligibility.create(:title => 'Eligibility Criteria', :content =>
'<p class="subtitle">In order to be eligible to take part in MACs, you must meet one of the following criteria:</p>
    <div class="row">
      <div class="col-sm-5">
        <p class="subtitle"> Persons eligible are males aged 18-70 with evidence of acute or recent HIV infection as defined by positive HIV ag/ab test and positive HIV viral load AND indeterminate or negative Western blot</p>
      </div>
      <div class="col-sm-2">
        <h3 class="title">OR</h3>
      </div>
      <div class="col-sm-5">
        <p class="subtitle">Documented negative HIV ab test in past year.</p>
      </div>
    </div>
    <p class="subtitle">As an observational study no medications are provided, you will receive laboratory and other medical evaluations as part of the study and will be compensated for your time.</p>',
                   :site_id => 1)
User.create(:first_name => "Eric", :last_name => "Schlange", :email => "eric.schlange@northwestern.edu", :role_id => 1, :encrypted_password => User.new.send(:password_digest, 'secrets!'))