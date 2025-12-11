class Manager {
  // class implicitly interface
  sceneLoading() {}
  assetsLoading() {}
  screenLoading() {}
  screenRendering() {}
}

class GameStartUp implements Manager {
  @override
  assetsLoading() {
    print("This is Assets Loading Screen");
  }

  @override
  sceneLoading() {
    print("This is Scene Loading Screen");
  }

  @override
  screenLoading() {
    print("This is Screen Loading Screen");
  }

  @override
  screenRendering() {
    print("This screen is Rendering");
  }
}

void main() {
  GameStartUp developer = new GameStartUp();
  developer.assetsLoading();
  developer.sceneLoading();
  developer.screenLoading();
  developer.screenRendering();
}

/*
  If you are game developer in the community you must code like this steps

  1.Scene Loading
  2.Assets Loading  => static file loading
  3.Screen Rendering => Display Showing
  4.Character Animation Movement
  5.Enemy Spawning
  6.Collition Detection
  7.Score Update
  8.Success Screen
  9.Death Screen 

*/
