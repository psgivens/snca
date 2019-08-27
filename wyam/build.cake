#tool nuget:?package=Wyam&version=2.2.7
#addin nuget:?package=Cake.Wyam&version=2.2.7

Task("Build")
    .Does(() =>
    {
      Information ("Hello Phillip Scott Givens!!");
      Wyam ();
    });

Task("Preview")
    .Does(() =>
    {
      Wyam(new WyamSettings
      {
        Preview = true,
        Watch = true
      }); 
    });

var target = Argument("target", "Build");
RunTarget(target);

