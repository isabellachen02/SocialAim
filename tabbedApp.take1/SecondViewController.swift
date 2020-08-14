//
//  SecondViewController.swift
//  tabbedApp.take1
//
//  Created by Bella on 8/12/20.
//  Copyright © 2020 Isabella Chen. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var searchController: UISearchController!
    
    var originalDataSource: [String] = []
    var currentDataSource: [String] = []
    var organizationInfo: [String] = []
    
    @IBOutlet weak var searchContainerView: UIView!
    
    @IBOutlet weak var tableView: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchContainerView.addSubview(searchController.searchBar)
        searchController.searchBar.delegate = self
        
        //List of Charities/Organizations
        
       
        addProductToDataSource(productCount: 1, product: "Leadership Conference on Civil and Human Rights", blurb:"A coalition of more than 200 diverse national organizations working to promote and protect the civil and human rights of all persons in the United States.")
        addProductToDataSource(productCount: 1, product:"National Fair Housing Alliance (NFHA)", blurb: "Works to eliminate housing discrimination and to ensure equal housing opportunity for all people through leadership, education and outreach, membership services, public policy initiatives, advocacy, and enforcement.")
        addProductToDataSource(productCount: 1, product:"Color of Change", blurb:"The nation’s largest online civil rights organization building grassroots political power for African-Americans and working for social change for all people.")
        addProductToDataSource(productCount: 1, product: "Race Forward", blurb:"A public policy institute advancing racial justice through research, advocacy and journalism (it publishes Colorlines")
        addProductToDataSource(productCount: 1, product:"Political Research Associates (PRA)", blurb: "A research center that works to facilitate public understanding of the threat posed to human rights by oppressive and authoritarian right-wing movements in the United States.")
        addProductToDataSource(productCount: 1, product: "American Association for Affirmative Action (AAAA)", blurb: "The association of professionals managing affirmative action, equal opportunity, diversity and other human resource programs.")
        addProductToDataSource(productCount: 1, product: "Action Center on Race and the Economy (ACRE)", blurb: "Provides research and communications infrastructure and strategic support for local organizations working on campaigns to win structural change by directly taking on the financial elite that are responsible for pillaging communities of color, devastating working class communities, and harming our environment.")
        addProductToDataSource(productCount: 1, product:"Center for Media Justice (CMJ)", blurb:"Develops and teaches creative, effective, and participatory communications and media activism strategies that support the fight for racial justice, economic equity, and human rights.")
        addProductToDataSource(productCount: 1, product: "National Urban League", blurb: "Works for racial equality for African-Americans, fights institutional racism, and provides direct service to minorities in the areas of employment, housing, education, social welfare, health, law, consumer rights, and community and minority business development.")
        addProductToDataSource(productCount: 1, product: "National Association for the Advancement of Colored People (NAACP)", blurb:"A civil rights organization working to ensure the political, educational, social, and economic equality of minority group citizens of the United States.")
        addProductToDataSource(productCount: 1, product: "National Council of Negro Women (NCNW)", blurb:"A council of national African American women’s organizations that lead, develop, and advocate for women of African descent as they support their families and communities.")
        addProductToDataSource(productCount: 1, product:"Black Radical Congress (BRC)", blurb:"Works to promote dialogue among African American activists and scholars on the left; to discuss critical issues on the national and international scene that pertain to the Black community; to explore new strategies and directions for progressive political, social and cultural movements; and to renew the Black radical movement through increased unified action.")
        addProductToDataSource(productCount: 1, product: "RainbowPUSH Coalition", blurb: "A progressive organization of workers, women, and people of color founded by Jesse Jackson that fights for social change.")
        addProductToDataSource(productCount: 1, product:"A. Philip Randolph Institute", blurb: "Works with black trade unionists to fight for racial equality and economic justice.")
        addProductToDataSource(productCount: 1, product:"National Congress of American Indians (NCAI)", blurb:"Works to secure the rights and benefits of Indians under treaties with the United States, to give the public a better understanding of the Indian people, and to promote the common welfare of American Indians and Alaska Natives.")
        addProductToDataSource(productCount: 1, product:"Unidos", blurb:"Works for civil rights and economic opportunities for Hispanic Americans and as a national umbrella organization for more than 300 formal affiliates in 41 states. Formerly: National Council of La Raza (NCLR).")
        addProductToDataSource(productCount: 1, product:"League of United Latin American Citizens (LULAC)", blurb:"Works to advance the economic condition, educational attainment, political influence, health, and civil rights of Hispanic Americans through community-based programs operating at more than 700 LULAC councils nationwide.")
        addProductToDataSource(productCount: 1, product:"Japanese American Citizens League (JACL)", blurb:"Works to protect the rights of all segments of the Asian Pacific American community")
        addProductToDataSource(productCount: 1, product:"OCA (formerly known as Organization of Chinese Americans)", blurb:"Works to advance the social, political, and economic well-being of Asian Pacific Americans in the United States.")
        addProductToDataSource(productCount: 1, product:"Showing Up For Racial Justice (SURJ)", blurb:"Through community organizing, mobilizing, and education, seeks to move white people to act as part of a multi-racial majority for racial justice.")
        addProductToDataSource(productCount: 1, product:"NAACP Legal Defense Fund", blurb:"Uses advocacy and litigation to achieve racial justice, focusing specifically on issues of education, voter protection, economic justice, and criminal justice.")
        addProductToDataSource(productCount: 1, product:"Mexican American Legal Defense and Educational Fund (MALDEF)", blurb:"Works to foster sound public policies, laws, and programs to safeguard the civil rights of the 40 million Latinos living in the United States and to empower the Latino community to fully participate in our society.")
        addProductToDataSource(productCount: 1, product:"Asian Americans Advancing Justice (AAJC)", blurb:"Works to advance the human and civil rights of Asian Americans through advocacy, public policy, public education, and litigation.")
        addProductToDataSource(productCount: 1, product:"Lawyers’ Committee for Civil Rights Under Law", blurb:"Marshals the pro bono resources of the bar for litigation, public policy advocacy, and other forms of service by lawyers to the cause of racial justice and economic opportunity.")
        addProductToDataSource(productCount: 1, product:"Southern Poverty Law Center (SPLC)", blurb:"Combats hate, intolerance, and discrimination through education and litigation.")
        addProductToDataSource(productCount: 1, product:"Appleseed", blurb:"A network of independent public interest law centers that use pro bono help to develop practical and lasting solutions to chronic injustices in public education, health care, child welfare, justice, and immigration.")
        addProductToDataSource(productCount: 1, product:"Brennan Center for Justice", blurb:"Uses scholarship, public education, and legal action to find innovative and practical solutions to intractable problems in the areas of democracy (voting), poverty, and criminal justice.")
        addProductToDataSource(productCount: 1, product:"Fisher, Sheehan & Colton", blurb:"A small research and consulting firm that provides technical assistance to public and private organizations involved with the quest for social justice.")
        addProductToDataSource(productCount: 1, product:"National Immigration Project", blurb:"A network of lawyers, law students, legal workers, and community advocates working to defend and expand the rights of all immigrants in the United States, regardless of legal status.")
        addProductToDataSource(productCount: 1, product:"America’s Voice", blurb:"Works to guarantee full labor, civil, and political rights for immigrants and their families.")
        addProductToDataSource(productCount: 1, product:"United We Dream", blurb:"An immigrant-youth-led network of 100,000 immigrant youth and allies and 55 affiliate organizations in 26 states that advocates for the dignity and fair treatment of immigrant youth and families, regardless of immigration status.")
        addProductToDataSource(productCount: 1, product:"National Immigration Law Center (NILC)", blurb:"Dedicated to protecting and promoting the rights of low income immigrants and their family members.")
        addProductToDataSource(productCount: 1, product:"Innocence Project", blurb:"Works to achieve the exoneration and release of factually innocent inmates through post-conviction DNA testing and works to create a network of schools, organizations, and citizens that can effectively challenge wrongful convictions.")
        addProductToDataSource(productCount: 1, product:"Sentencing Project", blurb:"An independent source of criminal justice policy analysis, data, and program information for the public and policy makers.")
        addProductToDataSource(productCount: 1, product:"Prison Policy Initiative (PPI)", blurb:"Documents the impact of mass incarceration on individuals, communities, and the national welfare, and produces accessible and innovative research to empower the public to participate in creating better criminal justice policy.")
        addProductToDataSource(productCount: 1, product:"Justice Policy Institute (JPI)", blurb:"Works to enhance the public dialog on incarceration through accessible research, public education, and communications advocacy with the goal of ending society’s reliance on incarceration.")
        addProductToDataSource(productCount: 1, product:"Critical Resistance", blurb:"Seeks to build an international movement to end the Prison Industrial Complex by challenging the belief that caging and controlling people makes us safe.")
        addProductToDataSource(productCount: 1, product:"Grassroots Leadership", blurb:"Seeks to put an end to abuses of justice and the public trust by working to abolish for-profit private prisons.")
        addProductToDataSource(productCount: 1, product:"Justice Strategies", blurb:"Promotes humane, effective approaches to criminal justice and immigration reform through rigorous analysis, high-quality research, and practical policy solutions.")
        addProductToDataSource(productCount: 1, product:"Disability Rights Education and Defense Fund (DREDF)", blurb:"Works to advance the civil and human rights of people with disabilities through legal advocacy, training, education, and public policy and legislative development.")
        addProductToDataSource(productCount: 1, product:"National Disability Rights Network (NDRN)", blurb:"Works to create a society in which people with disabilities are afforded equality of opportunity and are able to fully participate by exercising choice and self-determination.")
        addProductToDataSource(productCount: 1, product:"American Association of People with Disabilities (AAPD)", blurb:"A cross-disability member organization dedicated to ensuring economic self-sufficiency and political empowerment for the more than 56 million Americans with disabilities.")
        addProductToDataSource(productCount: 1, product:"Disability Rights Advocates (DRA)", blurb:"Non-profit law firm dedicated to securing the civil rights of people with disabilities.")
        addProductToDataSource(productCount: 1, product:"Bazelon Center for Mental Health Law", blurb:"A national legal advocate for people with mental disabilities.")
        addProductToDataSource(productCount: 1, product:"The Arc", blurb:"Promotes and protects the human rights of people with intellectual and developmental disabilities and actively supports their full inclusion and participation in the community throughout their lifetimes.")
        addProductToDataSource(productCount: 1, product:"American Council of the Blind (ACB)", blurb:"Strives to improve the well-being of all blind and visually impaired people by elevating the social, economic, and cultural levels of blind people, improving educational and rehabilitation facilities and opportunities, and promoting greater understanding of blindness and the capabilities of blind people.")
        addProductToDataSource(productCount: 1, product:"Alliance for Retired Americans", blurb:"A nationwide organization allied with the AFL-CIO and other partners working to ensure social and economic justice and full civil rights for all citizens, particularly focusing on retiree legislative and political issues.")
        addProductToDataSource(productCount: 1, product:"AARP Public Policy Institute", blurb:"Researches and advocates on a wide variety of issues related to aging especially health and long-term care, economic security, independent living, and consumer issues.")
        addProductToDataSource(productCount: 1, product:"National Academy on an Aging Society", blurb:"A policy institute that fosters critical thinking about the implications of an aging society.")
        addProductToDataSource(productCount: 1, product:"Futures Without Violence", blurb:"Develops innovative strategies to prevent domestic, dating, and sexual violence, stalking, and child abuse.")
        addProductToDataSource(productCount: 1, product:"National Organization for Women (NOW)", blurb:"An organization of feminist activists in the United States working to eliminate discrimination and harassment in the workplace, schools, the justice system, and all other sectors of society; secure abortion, birth control, and reproductive rights for all women; end all forms of violence against women; eradicate racism, sexism, and homophobia; and promote equality and justice in our society.")
        addProductToDataSource(productCount: 1, product:"Feminist Majority", blurb:"Works to promote women’s equality, reproductive health, and non-violence.")
        addProductToDataSource(productCount: 1, product:"Equal Rights Advocates (ERA)", blurb:"A national civil rights organization dedicated to protecting and expanding economic and educational access and opportunities for women and girls, specializing in advocating for the rights of women in minimum wage jobs, women of color, and immigrant women.")
        addProductToDataSource(productCount: 1, product:"Legal Momentum", blurb:"Advances the rights of women and girls by using the power of the law and creating innovative public policy. Formerly, the NOW Legal Defense and Education Fund.")
        addProductToDataSource(productCount: 1, product:"National Women’s Law Center (NWLC)", blurb:"Fights for gender justice, taking on issues that are central to the lives of women and girls.")
        addProductToDataSource(productCount: 1, product:"Equality Now", blurb:"Works to end violence and discrimination against women and girls around the world through the mobilization of public pressure, particularly on issues of rape, domestic violence, reproductive rights, trafficking, female genital mutilation, political participation, and gender discrimination.")
        addProductToDataSource(productCount: 1, product:"National LGBTQ Task Force", blurb:"Advances full freedom, justice and equality for LGBTQ people. The first national lesbian, gay, bisexual, and transgender civil rights and advocacy organization and a leading voice for freedom, justice, and equality.")
        addProductToDataSource(productCount: 1, product:"Human Rights Campaign (HRC)", blurb:"The largest national lesbian and gay political organization working to ensure the basic equal rights of lesbian, gay, bisexual, and transgender people.")
        addProductToDataSource(productCount: 1, product:"Lambda Legal Defense and Education Fund", blurb:"Works to achieve full recognition of the civil rights of lesbians, gay men, bisexuals, transgender people, and those with HIV through impact litigation, education, and public policy work.")
        addProductToDataSource(productCount: 1, product:"Planned Parenthood", blurb:"Operates health centers nationwide that provide high quality, affordable reproductive health care and sexual health information to nearly five million women, men, and teens.")
        addProductToDataSource(productCount: 1, product:"NARAL Pro-Choice America", blurb:"Fights to protect the right to choose — meaning having access to safe and legal abortion, effective contraceptive options, and quality reproductive health care. Formerly, the National Abortion Rights Action League (NARAL).")
        addProductToDataSource(productCount: 1, product:"URGE: Unite for Reproductive & Gender Equity", blurb:"Engages young people in creating and leading the way to sexual and reproductive justice for all by providing training, field mobilization, and national leadership for a youth-driven agenda.")
        addProductToDataSource(productCount: 1, product:"National Center for Lesbian Rights (NCLR)", blurb:"Works to advance the civil and human rights of lesbian, gay, bisexual, and transgender people and their families through litigation, public policy advocacy, and public education.")
        addProductToDataSource(productCount: 1, product:"Children’s Defense Fund (CDF)", blurb:"Provides research, advocacy, public education, monitoring of federal agencies, assistance to state and local groups, and community organizing on a wide range of issues that affect children and youth, especially poor and minority children and those with disabilities.")
        addProductToDataSource(productCount: 1, product:"Black Lives Matter", blurb:"#BlackLivesMatter was founded in 2013 in response to the acquittal of Trayvon Martin’s murderer. Black Lives Matter Foundation, Inc is a global organization in the US, UK, and Canada, whose mission is to eradicate white supremacy and build local power to intervene in violence inflicted on Black communities by the state and vigilantes. By combating and countering acts of violence, creating space for Black imagination and innovation, and centering Black joy, we are winning immediate improvements in our lives.")

         //addProductToDataSource(productCount: 1, product:"", blurb:"")


        
        tableView.delegate = self
        tableView.dataSource = self
        
        currentDataSource = originalDataSource
        
        // Do any additional setup after loading the view.
    }
    
    func addProductToDataSource(productCount: Int, product: String, blurb: String)
    {
        for index in 1...productCount{
            originalDataSource.append("\(product)")
            organizationInfo.append("\(blurb)")
        }
    }
    func filterCurrentDataSource(searchTerm: String){
        if searchTerm.count > 0 {
            currentDataSource = originalDataSource
            
            let filteredResults = currentDataSource.filter{ $0.replacingOccurrences(of:" ", with: "").lowercased().contains(searchTerm.replacingOccurrences(of:" ", with: "").lowercased())
                
            }
            
            currentDataSource = filteredResults
            tableView.reloadData()
        }
    }
    
    func restoreCurrentDataSource(){
        currentDataSource = originalDataSource
        tableView.reloadData()
    }

    
    @IBAction func restoreData(_ sender: Any) {
        restoreCurrentDataSource()
    }
}

extension SecondViewController: UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController) {
        if let searchText = searchController.searchBar.text
        {
            filterCurrentDataSource(searchTerm: searchText)
        }
    }
}

extension SecondViewController: UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar){
        
        searchController.isActive = false
        
        if let searchText = searchBar.text{
            filterCurrentDataSource(searchTerm: searchText)
        }
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar){
        searchController.isActive = false
        if let searchText = searchBar.text, !searchText.isEmpty {
            restoreCurrentDataSource()
        }
    }
}

extension SecondViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        let alertController = UIAlertController(title: "\(currentDataSource[indexPath.row])", message:  "\(organizationInfo[indexPath.row])", preferredStyle: .alert)
        
        searchController.isActive = false
        
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return currentDataSource.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = currentDataSource[indexPath.row]
            return cell
        }
    }
