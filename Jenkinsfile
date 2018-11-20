node {
	def mvnHome = tool 'M3'
	def mvnCmd="${mvnHome}/bin/mvn -s /var/jenkins_home/maven-global-settings-artifactory.xml"
	stage('Preparation') {
                deleteDir()
		checkout scm
	}
	try {
		stage('FoodCritic Analysis') {
			sh "chef exec foodcritic . -f any"
		}
	} finally {
		step([$class: 'WarningsPublisher', canComputeNew: true, canResolveRelativePaths: true, consoleParsers: [[parserName: 'FoodCritic']], defaultEncoding: '', excludePattern: '', healthy: '', includePattern: '', parserConfigurations: [], unHealthy: ''])
		}
	try {
		stage('RuboCop Analysis') {
			sh "chef exec rubocop -c .rubocop.yml -C false"
		}
	} finally {
		step([$class: 'WarningsPublisher', canComputeNew: true, canResolveRelativePaths: true, consoleParsers: [[parserName: 'RuboCop']], defaultEncoding: '', excludePattern: '', healthy: '', includePattern: '', parserConfigurations: [], unHealthy: ''])
	}
	stage('Unit tests') {
		sh "chef exec rspec"
	}
	stage('Integration tests') {
		sh "kitchen test"
	}
	stage('Package') {
		sh "${JENKINS_HOME}/chef/chef.sh"
		sh "${mvnCmd} clean deploy"
	}
	stage('Acceptance tests') {
					withEnv(["OS_PROJECT_NAME=ITSD", "STACK_NAME=chef", "NETWORK_ID=apm", "mvnCmd=${mvnCmd}"]) {
			sh "${JENKINS_HOME}/chef/openstack.sh ${OS_PROJECT_NAME} ${STACK_NAME} ${NETWORK_ID}"
		}
	}
	stage('Tag') {
		sh "${JENKINS_HOME}/chef/git.sh"
	}
}
