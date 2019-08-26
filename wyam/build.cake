#tool nuget:?package=Wyam&version=2.2.7
#addin nuget:?package=Cake.Wyam&version=2.2.7





Task("Build")
    .Does(() =>
    {
      Information ("Hello Phillip Scott Givens!!");
      Wyam ();
    });

var target = Argument("target", "Build");
RunTarget(target);

