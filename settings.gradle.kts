rootProject.name = "CommunicatorInfrastructure"

// Composite builds — это важно!
includeBuild("component/AuthMicro")
includeBuild("component/NetworkingMicro")