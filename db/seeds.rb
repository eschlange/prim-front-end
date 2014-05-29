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

Site.create(:id => 1, :name => "MACs", :description => "This is the content of the homes page for MACs.")

Intervention.create(:id => 1, :name => "MACs Intervention", :description => "Description goes here for the MACs intervention.")

Home.create(:title => "MACs Home", :content => "Description goes here for the MACs homes page.", :site_id => 1)
About.create(:title => "MACs About", :content =>
  ' <p>In the fall of 1983, a group of investigators met at the National Institutes of Health  (NIH ) to design a prospective epidemiologic study of the newly recognized immunodeficiency syndrome  in men who had sex with men (MSM) in Los Angeles, San Francisco and New York. Upon completion of designing the protocol, recruitment of MSM began in April of 1984 into the investigation which was named The Multicenter AIDS Cohort Study or MACS. The first wave of participant recruitment was completed by March 31, 1985. Since then three  more periods of enrollment have been opened; the first in 1987 to increase the participation of African-American (AA) MSM in the study and the second in 2001 to again increase participation by AA and Hispanic MSM.  Currently, recruitment of MSM, with recent HIV infection, to replace recent losses caused by death and dropouts has been initiated. As of October 2013, 7087 men have volunteered and participated in the MACS. The currently active participants number 2340; 35 % are non white and half of all participants are older than 55 years of age.  In Chicago 1387 men have enrolled into the study.</p>
    <p>The initial recruitment in 1984-85 was carried out before we had a laboratory test to determine who was a risk of developing AIDS.  HIV had been suggested as the cause of the immunodeficiency in 1983 by investigators at the Pasteur Institute in Paris but this was not  confirmed until the spring of 1984ot by investigators in San Francisco and the NIH in the spring of 1984. However, a blood test to determine who was infected did not become available until the spring of 1985. When the original group of MSM who had joined the MACS underwent  testing it was discovered that approximately 40 percent of the cohort was infected.</p>
    <p>This allowed the MACS to address two important issues. First, we could determine the behaviors, clinical findings and laboratory results which were associated with progression from HIV infection to AIDS. Secondly among the uninfected men, the behaviors that led to HIV infection and the early signs and symptoms of this viral infection could be elucidated. To date 712 uninfected men at entry into the MACS acquired HIV infection during the study, 333 developed AIDS and 82.9% of these men have died.</p>
    <p>Early in the course of the study it became apparent that dementia was a major problem for men who developed advanced HIV infection and AIDS. MACS investigators organized a working group of neurologists to investigate this problem. The most important early finding was that severe central nervous system (brain and spinal cord) problems were seen only in persons with AIDS and that there was no reason for HIV infected men without AIDS to be restricted in their work. This finding became the basis of World Health Organization recommendation which was widely accepted advising that persons with HIV infection need not be restricted in their activities.</p>
    <p>During the period of the 1980s the death rate among the infected MACS participants was very high. As of the fall of 2013, close to 90 percent of men who entered the MACS with HIV infection have died. The MACS investigators were among the first to demonstrated that the T-Helper cell count below 200/mm3 were associated with a high rate of  pneumocystis pneumonia (PCP) and helper cell counts below 100/mm3 put individuals at risk for cytomegalovirus  retinitis, atypical mycobacterial infections, and infection of the brain with the parasite Toxoplasma gondii. Giving antibiotics to prevent some of these opportunistic infections helped but the early agents available to treat the HIV infection did not prevent progression to AIDS or death.</p>
    <p>An early observation of MACS investigators was that the progression of newly acquired HIV infections to AIDS differed from individual to individual. Determinants of this heterogeneity included age at the time of infection and host genetics. The genetic makeup of an individual determines their immune response to HIV which in turn controls the rate of viral replication. Lower levels of replication result in slower progression of untreated HIV infection. Host genetics also determines susceptibility to HIV infection. The MACS contributed to the discovery of an uncommon mutation which protects people with this mutation from the usual form of HIV which is transmitted sexually.</p>
    <p>With the availability of effective antiretroviral therapy in late 1995 progression to AIDS and death decreased dramatically in men on therapy. Close to 80% of participants in the MACS taking drugs have suppressed HIV replication and the median T-helper cell count is near 600/mm3. Stopping drug treatment results in progression of HIV infection and disease. With this greatly improved survival of infected participants the MACS has focused upon the health status of men who were living longer. To accomplish this investigators have been recruited into working groups with interest in diseases of the heart, lungs, kidneys, liver and metabolic diseases such as diabetes. The behavioral working group has continued to study behaviors to determine why men fail to adhere to treatment. Recreational drugs and alcohol use have been shown to be associated with poor adherence. Drug use also is associated with a marked increase in the risk of acquiring HIV infection. The neurology working group continues to investigate brain function among aging HIV infected men and the Aging working group is attempting  to determine whether or not HIV infected men age more rapidly than in infected men.</p>',
          :site_id => 1)
ContactUs.create(:title => "MACs Contact Us", :content =>
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
Eligibility.create(:title => "MACs Eligibility", :content => "Description goes here for the MACs eligibility page.", :site_id => 1)
User.create(:first_name => "Eric", :last_name => "Schlange", :email => "eric.schlange@northwestern.edu", :role_id => 1, :encrypted_password => User.new.send(:password_digest, 'secrets!'))