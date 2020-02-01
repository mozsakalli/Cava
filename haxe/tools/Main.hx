package tools;

class Main {

    public static function main() {
        var project = new tools.Project("ios.xml", "iphone");
        project.getBuilder().build();
    }
}