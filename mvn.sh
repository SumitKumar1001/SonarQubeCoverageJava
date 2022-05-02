gitClone() {
	echo "Cloning Git Repo"
        read -p "Enter Clone URL: " url
        git clone $url
	ls
	read -p "Enter the repo name: " repo
	cd $repo
}
compile() {
	mvn compile
}
testCompile() {
	mvn test-compile
}
testExecute() {
	mvn test
}
package() {
	mvn package
}
installArti() {
	mvn install
}
mvnClean() {
	mvn clean
}
echo "Maven Build Automation Operations Menu"
select option in "Git Clone" "Compilation" "Test Compilation" "Test Execution" "Packaging" "Install Artifacts" "Maven Clean"
do
        case $option in
	"Git Clone")
		gitClone ;;
	"Compilation")
		compile
		break ;;
	"Test Compilation")
		testCompile
		break ;;
	"Test Execution")
                testExecute
                break ;;
        "Packaging")
                package
                break ;;
        "Install Artifacts")
                installArti
                break ;;
        "Maven Clean")
                mvnClean
                break ;;
        *)
                echo "Sorry,wrong selection"
                break ;;
        esac
done

