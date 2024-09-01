import UIKit

class WeightReportViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupScrollView()
    }

    private func setupScrollView() {
        // Create a UIScrollView and add it to the view
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        
        // Constraints for the scrollView
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        // Create a contentView for the scrollView
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)
        
        // Constraints for the contentView
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        
        // Add content to the contentView
        setupContent(in: contentView)
    }

    private func setupContent(in contentView: UIView) {
        // Header Section
        let headerView = createHeaderView()
        contentView.addSubview(headerView)
        headerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            headerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            headerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20)
        ])
        
        // Analysis Section
        let analysisView = createAnalysisSection()
        contentView.addSubview(analysisView)
        analysisView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            analysisView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 20),
            analysisView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            analysisView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20)
        ])
        
        // Caution Section
        let cautionView = createCautionSection()
        contentView.addSubview(cautionView)
        cautionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cautionView.topAnchor.constraint(equalTo: analysisView.bottomAnchor, constant: 20),
            cautionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            cautionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20)
        ])
        
        // Speak To Vet Section
        let speakToVetView = createSpeakToVetSection()
        contentView.addSubview(speakToVetView)
        speakToVetView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            speakToVetView.topAnchor.constraint(equalTo: cautionView.bottomAnchor, constant: 20),
            speakToVetView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            speakToVetView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20)
        ])
        
        // Recommended Product Section
        let recommendedProductView = createRecommendedProductSection()
        contentView.addSubview(recommendedProductView)
        recommendedProductView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            recommendedProductView.topAnchor.constraint(equalTo: speakToVetView.bottomAnchor, constant: 20),
            recommendedProductView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            recommendedProductView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20)
        ])
        
        // Tags Section
        let tagsView = createTagsSection()
        contentView.addSubview(tagsView)
        tagsView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tagsView.topAnchor.constraint(equalTo: recommendedProductView.bottomAnchor, constant: 20),
            tagsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            tagsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            tagsView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
        ])
    }

    // MARK: - Content Creation Functions
    
    private func createHeaderView() -> UIView {
        let headerView = UIView()
        
        let imageView = UIImageView(image: UIImage(systemName: "person.circle.fill"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        headerView.addSubview(imageView)
        
        let nameLabel = UILabel()
        nameLabel.text = "Rocky"
        nameLabel.font = .systemFont(ofSize: 24, weight: .bold)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        headerView.addSubview(nameLabel)
        
        let detailsLabel = UILabel()
        detailsLabel.text = "Age: 2.8 Years  |  Breed: Golden Retriever  |  Weight: 45kg"
        detailsLabel.font = .systemFont(ofSize: 14)
        detailsLabel.textColor = .gray
        detailsLabel.translatesAutoresizingMaskIntoConstraints = false
        headerView.addSubview(detailsLabel)
        
        // Constraints for the headerView content
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: headerView.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: headerView.leadingAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 50),
            imageView.heightAnchor.constraint(equalToConstant: 50),
            
            nameLabel.topAnchor.constraint(equalTo: headerView.topAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 10),
            
            detailsLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            detailsLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            detailsLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor),
            detailsLabel.bottomAnchor.constraint(equalTo: headerView.bottomAnchor)
        ])
        
        return headerView
    }
    
    private func createAnalysisSection() -> UIView {
        let analysisView = UIView()
        
        let titleLabel = UILabel()
        titleLabel.text = "Analysis"
        titleLabel.font = .systemFont(ofSize: 18, weight: .bold)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        analysisView.addSubview(titleLabel)
        
        let descriptionLabel = UILabel()
        descriptionLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac..."
        descriptionLabel.font = .systemFont(ofSize: 14)
        descriptionLabel.textColor = .gray
        descriptionLabel.numberOfLines = 0
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        analysisView.addSubview(descriptionLabel)
        
        // Constraints for analysis section
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: analysisView.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: analysisView.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: analysisView.trailingAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            descriptionLabel.leadingAnchor.constraint(equalTo: analysisView.leadingAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: analysisView.trailingAnchor),
            descriptionLabel.bottomAnchor.constraint(equalTo: analysisView.bottomAnchor)
        ])
        
        return analysisView
    }
    
    private func createCautionSection() -> UIView {
        let cautionView = UIView()
        
        let titleLabel = UILabel()
        titleLabel.text = "Caution"
        titleLabel.font = .systemFont(ofSize: 18, weight: .bold)
        titleLabel.textColor = .red
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        cautionView.addSubview(titleLabel)
        
        let descriptionLabel = UILabel()
        descriptionLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac..."
        descriptionLabel.font = .systemFont(ofSize: 14)
        descriptionLabel.textColor = .gray
        descriptionLabel.numberOfLines = 0
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        cautionView.addSubview(descriptionLabel)
        
        // Constraints for caution section
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: cautionView.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: cautionView.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: cautionView.trailingAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            descriptionLabel.leadingAnchor.constraint(equalTo: cautionView.leadingAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: cautionView.trailingAnchor),
            descriptionLabel.bottomAnchor.constraint(equalTo: cautionView.bottomAnchor)
        ])
        
        return cautionView
    }
    
    private func createSpeakToVetSection() -> UIView {
        let speakToVetView = UIView()
        speakToVetView.backgroundColor = UIColor.green.withAlphaComponent(0.2)
        speakToVetView.layer.cornerRadius = 10
        
        let imageView = UIImageView(image: UIImage(systemName: "phone.circle.fill"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = .green
        imageView.contentMode = .scaleAspectFit
        speakToVetView.addSubview(imageView)
        
        let titleLabel = UILabel()
        titleLabel.text = "Speak To Vet"
        titleLabel.font = .systemFont(ofSize: 18, weight: .bold)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        speakToVetView.addSubview(titleLabel)
        
        let descriptionLabel = UILabel()
        descriptionLabel.text = "Check out all of our special pet care packages"
        descriptionLabel.font = .systemFont(ofSize: 14)
        descriptionLabel.textColor = .gray
        descriptionLabel.numberOfLines = 0
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        speakToVetView.addSubview(descriptionLabel)
        
        // Constraints for speak to vet section
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: speakToVetView.topAnchor, constant: 10),
            imageView.leadingAnchor.constraint(equalTo: speakToVetView.leadingAnchor, constant: 10),
            imageView.widthAnchor.constraint(equalToConstant: 40),
            imageView.heightAnchor.constraint(equalToConstant: 40),
            
            titleLabel.topAnchor.constraint(equalTo: speakToVetView.topAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 10),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            descriptionLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: speakToVetView.trailingAnchor, constant: -10),
            descriptionLabel.bottomAnchor.constraint(equalTo: speakToVetView.bottomAnchor, constant: -10)
        ])
        
        return speakToVetView
    }
    
    private func createRecommendedProductSection() -> UIView {
        let recommendedProductView = UIView()
        
        let titleLabel = UILabel()
        titleLabel.text = "Recommended product"
        titleLabel.font = .systemFont(ofSize: 18, weight: .bold)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        recommendedProductView.addSubview(titleLabel)
        
        let seeAllLabel = UILabel()
        seeAllLabel.text = "See All"
        seeAllLabel.font = .systemFont(ofSize: 14)
        seeAllLabel.textColor = .blue
        seeAllLabel.translatesAutoresizingMaskIntoConstraints = false
        recommendedProductView.addSubview(seeAllLabel)
        
        let productImageView = UIImageView(image: UIImage(systemName: "cart.fill"))
        productImageView.translatesAutoresizingMaskIntoConstraints = false
        productImageView.contentMode = .scaleAspectFit
        recommendedProductView.addSubview(productImageView)
        
        let productTitleLabel = UILabel()
        productTitleLabel.text = "Pro-Sense Itch Allergy solutions"
        productTitleLabel.font = .systemFont(ofSize: 16, weight: .bold)
        productTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        recommendedProductView.addSubview(productTitleLabel)
        
        let productDescriptionLabel = UILabel()
        productDescriptionLabel.text = "Sensitive Stomach Probiotics"
        productDescriptionLabel.font = .systemFont(ofSize: 14)
        productDescriptionLabel.textColor = .gray
        productDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        recommendedProductView.addSubview(productDescriptionLabel)
        
        let priceLabel = UILabel()
        priceLabel.text = "$14.36"
        priceLabel.font = .systemFont(ofSize: 16, weight: .bold)
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        recommendedProductView.addSubview(priceLabel)
        
        let ratingLabel = UILabel()
        ratingLabel.text = "4.5⭐️"
        ratingLabel.font = .systemFont(ofSize: 14)
        ratingLabel.textColor = .orange
        ratingLabel.translatesAutoresizingMaskIntoConstraints = false
        recommendedProductView.addSubview(ratingLabel)
        
        // Constraints for recommended product section
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: recommendedProductView.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: recommendedProductView.leadingAnchor),
            
            seeAllLabel.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            seeAllLabel.trailingAnchor.constraint(equalTo: recommendedProductView.trailingAnchor),
            
            productImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            productImageView.leadingAnchor.constraint(equalTo: recommendedProductView.leadingAnchor),
            productImageView.widthAnchor.constraint(equalToConstant: 60),
            productImageView.heightAnchor.constraint(equalToConstant: 60),
            
            productTitleLabel.topAnchor.constraint(equalTo: productImageView.topAnchor),
            productTitleLabel.leadingAnchor.constraint(equalTo: productImageView.trailingAnchor, constant: 10),
            productTitleLabel.trailingAnchor.constraint(equalTo: recommendedProductView.trailingAnchor),
            
            productDescriptionLabel.topAnchor.constraint(equalTo: productTitleLabel.bottomAnchor, constant: 5),
            productDescriptionLabel.leadingAnchor.constraint(equalTo: productTitleLabel.leadingAnchor),
            productDescriptionLabel.trailingAnchor.constraint(equalTo: productTitleLabel.trailingAnchor),
            
            priceLabel.topAnchor.constraint(equalTo: productDescriptionLabel.bottomAnchor, constant: 10),
            priceLabel.leadingAnchor.constraint(equalTo: productDescriptionLabel.leadingAnchor),
            
            ratingLabel.centerYAnchor.constraint(equalTo: priceLabel.centerYAnchor),
            ratingLabel.trailingAnchor.constraint(equalTo: recommendedProductView.trailingAnchor)
        ])
        
        return recommendedProductView
    }
    
    private func createTagsSection() -> UIView {
        let tagsView = UIView()
        
        let titleLabel = UILabel()
        titleLabel.text = "Tags"
        titleLabel.font = .systemFont(ofSize: 18, weight: .bold)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        tagsView.addSubview(titleLabel)
        
        let tag1Label = createTagLabel(text: "good for large breeds")
        let tag2Label = createTagLabel(text: "Sensitive Stomach")
        let tag3Label = createTagLabel(text: "Good for your dog")
        
        tagsView.addSubview(tag1Label)
        tagsView.addSubview(tag2Label)
        tagsView.addSubview(tag3Label)
        
        // Constraints for tags section
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: tagsView.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: tagsView.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: tagsView.trailingAnchor),
            
            tag1Label.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            tag1Label.leadingAnchor.constraint(equalTo: tagsView.leadingAnchor),
            
            tag2Label.centerYAnchor.constraint(equalTo: tag1Label.centerYAnchor),
            tag2Label.leadingAnchor.constraint(equalTo: tag1Label.trailingAnchor, constant: 10),
            
            tag3Label.centerYAnchor.constraint(equalTo: tag2Label.centerYAnchor),
            tag3Label.leadingAnchor.constraint(equalTo: tag2Label.trailingAnchor, constant: 10),
            tag3Label.trailingAnchor.constraint(equalTo: tagsView.trailingAnchor),
            tag3Label.bottomAnchor.constraint(equalTo: tagsView.bottomAnchor)
        ])
        
        return tagsView
    }
    
    private func createTagLabel(text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = .systemFont(ofSize: 14)
        label.backgroundColor = UIColor.orange.withAlphaComponent(0.2)
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}
