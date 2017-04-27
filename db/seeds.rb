# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([{ name: "Robert B.", email: "robb@email.com", phone: "(416) 327-3682", title: "Assistant Deputy Minister Chief Administrative Officer", adm_office: true, adm: true, password: "816260" },
  { name: 'Judith P.', email: "jp@email.com", phone: "(416) 326-7039", title: "Executive Assistant", adm_office: true, staff: true, password: "598482" },
  { name: "Connie C.", email: "cc@email.com", phone: "(416) 325-6866", title: "Admin. Assistant", adm_office: true, staff: true, password: "621106" },
  { name: "Natasha R.", email: "natr@email.com", phone: "(416) 212-4215", title: "Events & Communications Coordinator", adm_office: true, staff: true, password: "826484" },
  { name: "Nadeem A.", email: "nad.a@email.com", phone: "(416) 906-5018", title: "Project Officer", adm_office: true, staff: true, password: "178041" },
  { name: "Catherine G.", email: "cg@email.com", phone: "(416) 325-6828", title: "French Language Coordinator", adm_office: true, staff: true, password: "416600" },
  { name: "Isolina K.", email: "isku@email.com", phone: "(416) 325-9366", title: "Exec. Lead, Transfer Payment Information", adm_office: true, staff: true, password: "808693" },
  # HR
  { name: "Christina C.", email: "chrc@email.com", phone: "(416) 325-6599", title: "Director", strategic_human_resources: true, director: true, password: "799127" },
  { name: "Michele J.", email: "michj@email.com", phone: "(416) 325-6608", title: "Admin. Assistant", strategic_human_resources: true, staff: true, password: "154113" },
  { name: "Annette A.", email: "anna@email.com", phone: "(416) 314-3823", title: "Manager (A)", strategic_human_resources: true, manager: true, password: "558731" },
  { name: "Nav N.", email: "nn@email.com", phone: "(416) 326-2990", title: "Manager (A)", strategic_human_resources: true, manager: true, password: "724656" },
  { name: "Vanja P.", email: "vp@email.com", phone: "(416) 325-9943", title: "HR Projects Advisor", strategic_human_resources: true, staff: true, password: "460729" },
  { name: "Rachel F.", email: "rf@email.com", phone: "(416) 325-7598", title: "HR Business Advisor", strategic_human_resources: true, staff: true, password: "360863" },
  { name: "Jill D.", email: "jd@email.com", phone: "(416) 325-3624", title: "HR Business Advisor", strategic_human_resources: true, staff: true, password: "499398" },
  { name: "Gabrielle C.", email: "gbc@email.com", phone: "(416) 212-4872", title: "HR Business Advisor", strategic_human_resources: true, staff: true, password: "871970" },
  { name: "Yvonne C.", email: "yc@email.com", phone: "(416) 325-6873", title: "HR Business Advisor", strategic_human_resources: true, staff: true, password: "680748" },
  { name: "Dianne B.", email: "db@email.com", phone: "(416) 212-3170", title: "Workforce Planner", strategic_human_resources: true, staff: true, password: "300229" },
  { name: "Sean D.", email: "sd@email.com", phone: "(416) 325-7362", title: "Project Coordinator", strategic_human_resources: true, staff: true, password: "280225" },
  { name: "Xander N.", email: "xn@email.com", phone: "(416) 326-7234", title: "HR Business Advisor", strategic_human_resources: true, staff: true, password: "143537" },
  #SMF
  { name: "Nelson J.", email: "nj@email.com", phone: "(416) 314-3309", title: "Director", service_management_and_facilities: true, director: true, password: "545357" },
  { name: "Sureka D.", email: "srd@email.com", phone: "(416) 326-8381", title: "Financial and Admin. Coordinator", service_management_and_facilities: true, staff: true, password: "877241" },
  { name: "Peter R.", email: "pre@email.com", phone: "(416) 326-5826", title: "Emergency Management Coordinator", service_management_and_facilities: true, staff: true, password: "596049" },
  { name: "Jose L.", email: "jol@email.com", phone: "(416) 212-6984", title: "Business Analyst", service_management_and_facilities: true, staff: true, password: "172922" },
  { name: "Gillian C.", email: "gico@email.com", phone: "(416) 327-4818", title: "Emergency Management Assistant", service_management_and_facilities: true, staff: true, password: "191526" },
  { name: "Alma B.", email: "alb@email.com", phone: "(416) 325-8776", title: "Manager, FOI, Privacy and Information Management", service_management_and_facilities: true, manager: true, password: "717259" },
  { name: "Patricia C.", email: "pc@email.com", phone: "(416) 326-1344", title: "Tougas FOI Coordinator", service_management_and_facilities: true, staff: true, password: "617573" },
  { name: "Dalia B.", email: "db@email.com", phone: "(416) 325-8899", title: "FOI Coordinator", service_management_and_facilities: true, staff: true, password: "798640" },
  { name: "Mimi N.", email: "min@email.com", phone: "(416) 325-6156", title: "FOI and Information Management Analyst", service_management_and_facilities: true, staff: true, password: "253630" },
  { name: "Pamela E.", email: "pe@email.com", phone: "(416) 212-0176", title: "Advisor, IM and Access Strategy (A)", service_management_and_facilities: true, staff: true, password: "400399" },
  { name: "Jason T.", email: "jt@email.com", phone: "(416) 327-4824", title: "Freedom of Information Program Assistant (A)", service_management_and_facilities: true, staff: true, password: "556976" },
  { name: "Christine P.", email: "cp@email.com", phone: "(416) 325-6423", title: "Manager, Facilities and Service Management", service_management_and_facilities: true, manager: true, password: "398073" },
  { name: "Mirjana Z.", email: "mz@email.com", phone: "(416) 325-6451", title: "Facilities Coordinator", service_management_and_facilities: true, staff: true, password: "600233" },
  { name: "Lidia L.", email: "ll@email.com", phone: "(416) 326-8384", title: "Facilities Coordinator/ Business Analyst", service_management_and_facilities: true, staff: true, password: "899317" },
  { name: "Maria A.", email: "ma@email.com", phone: "(416) 325-6467", title: "Security Coordinator", service_management_and_facilities: true, staff: true, password: "243097" },
  { name: "Robert C.", email: "rc@email.com", phone: "(416) 326-1762", title: "Security Coordinator", service_management_and_facilities: true, staff: true, password: "501548" },
  { name: "Haran T.", email: "ht@email.com", phone: "(416) 325-6570", title: "Business Analyst", service_management_and_facilities: true, staff: true, password: "349017" },
  { name: "Kathy T.", email: "kt@email.com", phone: "(416) 212-0468", title: "Manager, OITC", service_management_and_facilities: true, manager: true, password: "588308" },
  { name: "Beatriz V.", email: "bv@email.com", phone: "(416) 212-0465", title: "Client Relations Coordinator", service_management_and_facilities: true, staff: true, password: "550207" },
  { name: "Michael N.", email: "miken.@email.com", phone: "(416) 212-0456", title: "Information Services Officer", service_management_and_facilities: true, staff: true, password: "632316" },
  { name: "Casey C.", email: "caco@email.com", phone: "(416) 313-3400", title: "Client Relations Assistant", service_management_and_facilities: true, staff: true, password: "287741" },
  { name: "Amber B.", email: "amb@email.com", phone: "(416) 313-3400", title: "Client Relations Assistant", service_management_and_facilities: true, staff: true, password: "486237" },
  { name: "Rajaa R.", email: "rr@email.com", phone: "(416) 313-3400", title: "Client Relations Representative", service_management_and_facilities: true, staff: true, password: "300329" },
  #BPF
  { name: "Kathryn R.", email: "ktr@email.com", phone: "(416) 325-1137", title: "Director", business_planning_and_finance: true, director: true, password: "280063" },
  { name: "Kate J.", email: "kj@email.com", phone: "(416) 320-0832", title: "Associate Director", business_planning_and_finance: true, manager: true, password: "814511" },
  { name: "Sarah M.", email: "sMc@email.com", phone: "5-6421", title: "Executive Assistant (A)", business_planning_and_finance: true, staff: true, password: "792680" },
  { name: "Tim M.", email: "timMc@email.com", phone: "(416) 325-6616", title: "Financial and Branch Coordinator (A)", business_planning_and_finance: true, staff: true, password: "307188" },
  { name: "Alex S.", email: "als@email.com", phone: "2-3961", title: "Sr. Business Analyst", business_planning_and_finance: true, staff: true, password: "550247" },
  { name: "Kyle C.", email: "kc@email.com", phone: "(647) 973-9598", title: "Sr. Business Planning Consultant", business_planning_and_finance: true, staff: true, password: "837092" },
  { name: "Martin C.", email: "mc@email.com", phone: "5-7602", title: "Sr. Business Planning Consultant", business_planning_and_finance: true, staff: true, password: "709369" },
  { name: "Muneeb C.", email: "mch@email.com", phone: "5-6642", title: "Sr. Business Analyst", business_planning_and_finance: true, staff: true, password: "421553" },
  { name: "Nisarg B.", email: "nb@email.com", phone: "5-6646", title: "Jr. Business Planning Consultant", business_planning_and_finance: true, staff: true, password: "246019" },
  { name: "Raman K.", email: "rk@email.com", phone: "(416) 325-8914", title: "Jr. Business Planning Analyst", business_planning_and_finance: true, staff: true, password: "559088" },
  { name: "Yasmin A.", email: "yad@email.com", phone: "(416) 325-6573", title: "Sr. Business Planning Consultant", business_planning_and_finance: true, staff: true, password: "694824" },
  { name: "Amanda L.", email: "aml@email.com", phone: "5-6643", title: "Manager (A)", business_planning_and_finance: true, manager: true, password: "168882" },
  { name: "Jose Y.", email: "joy12@email.com", phone: "2-3418", title: "Sr. Business Planning Consultant", business_planning_and_finance: true, staff: true, password: "851857" },
  { name: "Bill C.", email: "bc@email.com", phone: "5-6783", title: "Sr. Business Planning Consultant", business_planning_and_finance: true, staff: true, password: "402483" },
  { name: "Katarina S.", email: "ks@email.com", phone: "(437) 992-5272", title: "Sr. Business Analyst", business_planning_and_finance: true, staff: true, password: "286402" },
  { name: "Tai A.", email: "tai@email.com", phone: "5-4285", title: "Manager (A)", business_planning_and_finance: true, manager: true, password: "493678" },
  { name: "Janet L.", email: "jl@email.com", phone: "2-3299", title: "Sr. Business Analyst", business_planning_and_finance: true, staff: true, password: "736686" },
  { name: "Pratima G.", email: "pgo@email.com", phone: "416-212-9207", title: "Sr. Business Analyst", business_planning_and_finance: true, staff: true, password: "125317" },
  { name: "Sean Z.", email: "sez@email.com", phone: "(416) 212-3299", title: "Jr. Financial Analyst", business_planning_and_finance: true, staff: true, password: "352953" },
  { name: "Shalini D.", email: "shd@email.com", phone: "5-6573", title: "Financial Analyst (A)", business_planning_and_finance: true, staff: true, password: "115648" },
  { name: "Asokan S.", email: "as@email.com", phone: "5-6425", title: "Controller", business_planning_and_finance: true, staff: true, password: "758474" },
  { name: "Sudheendran C.", email: "sche@email.com", phone: "(416) 212-1473", title: "Team Lead, Controllership", business_planning_and_finance: true, staff: true, password: "455191" },
  { name: "David C.", email: "davc@email.com", phone: "4-4122", title: "Financial Analyst ad Accounting Lead", business_planning_and_finance: true, staff: true, password: "580235" },
  { name: "Dorothy C.", email: "chd@email.com", phone: "5-4767", title: "Sr. Financial Analyst", business_planning_and_finance: true, staff: true, password: "378240" },
  { name: "Grace C.", email: "gc@email.com", phone: "5-6465", title: "Sr. Accountant", business_planning_and_finance: true, staff: true, password: "818451" },
  { name: "Kamala S.", email: "ksi@email.com", phone: "5-9881", title: "Sr. Accountant", business_planning_and_finance: true, staff: true, password: "471520" },
  { name: "Oxana V.", email: "ox.v@email.com", phone: "5-6821", title: "Financial Analyst", business_planning_and_finance: true, staff: true, password: "879994" },
  { name: "Renuga N.", email: "rn@email.com", phone: "5-6426", title: "Junior Financial Analyst (A)", business_planning_and_finance: true, staff: true, password: "607193" },
  { name: "Joseph K.", email: "jk@email.com", phone: "(416) 327-3866", title: "Manager", business_planning_and_finance: true, manager: true, password: "935045" },
  { name: "Jennifer H.", email: "jh@email.com", phone: "(416) 325-6952", title: "Sr. Project Lead", business_planning_and_finance: true, staff: true, password: "151457" },
  { name: "Nelson P.", email: "np@email.com", phone: "(416) 212-3551", title: "Sr. Project Lead", business_planning_and_finance: true, staff: true, password: "183178" },
  { name: "Luxman P.", email: "lup@email.com", phone: "6-7360", title: "Business Analyst", business_planning_and_finance: true, staff: true, password: "286670" },
  { name: "Camille M.", email: "ca.m@email.com", phone: "(416) 327-0823", title: "Sr. Project Lead", business_planning_and_finance: true, staff: true, password: "818505" },
  { name: "Ginna G.", email: "gg@email.com", phone: "(416) 212-8761", title: "Corporate Coordinator", business_planning_and_finance: true, staff: true, password: "307951" },
  { name: "Jeevithan J.", email: "jj@email.com", phone: "(416) 327-0572", title: "Corporate Coordinator", business_planning_and_finance: true, staff: true, password: "484325" },
  { name: "Sherma L.", email: "slo@email.com", phone: "(416) 325-6991", title: "Corporate Coordinator", business_planning_and_finance: true, staff: true, password: "637613" },
  { name: "Sarah N.", email: "sbn@email.com", phone: "(416) 325-2987", title: "Corporate Coordinator", business_planning_and_finance: true, staff: true, password: "514484" },
  { name: "Tahmina N.", email: "ta.n@email.com", phone: "(416) 212-0727", title: "Jr. Advisor", business_planning_and_finance: true, staff: true, password: "964487" }])

  Opportunity.create([{ name: "Diversity Career Champions Program (DCCP)", description: "Personal development program" },
    { name: 'Emerging Leaders Management Program (ELMP)', description: "The ELMP provides a framework for understanding leadership essentials and developing capability in the six areas of the OPS Leader-Manager Model." },
    { name: 'Advancing into Management (AIM)', description: "Personal development program" },
    { name: 'Senior Leadership Potential Assessment (SLPA)', description: "Personal development program" },
    { name: 'Leadership Development Program (LDP)', description: "Personal development program" },
    { name: 'Leadership 2.0', description: "Personal development program" },
    { name: 'Co-op Student Onboarding Lunch', description: "May 12th, a chance to network with other Co-op students over lunch." },
    { name: 'CSD Community Outreach', description: "May 31st @ Eva's Place (tentative)" },
    { name: 'Lunch & Learn: Nuclear Emergency Management', description: "May 9th" },
    { name: 'Lunch & Learn: Emergency & Personal Preparedness', description: "May 12th" },
    { name: 'Lunch & Learn: Research, Science & Strategy Division', description: "May 23rd" },
    { name: 'Lunch & Learn: Commercialization & Scale-Ups Division', description: "May 25th" },
    { name: 'Lunch & Learn: Behavioral Insights', description: "June 6th" },
    { name: 'Lunch & Learn: Business Climate & Funding Administration Division', description: "June 8th" },
    { name: 'Lunch & Learn: Strategic Programs Development & Delivery Office', description: "June 23rd" },
    { name: 'Lunch & Learn: Ontario Investment Office', description: "June 28th" }])
