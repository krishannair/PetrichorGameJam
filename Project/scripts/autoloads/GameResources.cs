using Godot;

namespace Gamelogic
{
    public partial class GameResources : Node
    {
        public const string hudScenePath = "res://scenes/UI/hud.tscn";
        private readonly static PackedScene hudScene = ResourceLoader.Load<PackedScene>(hudScenePath);
        public static PackedScene HudScene => hudScene;

        public const string bulletScenePath = "res://scenes/actors/bullet.tscn";
        private readonly static PackedScene bulletScene = ResourceLoader.Load<PackedScene>(bulletScenePath);
        public static PackedScene BulletScene => bulletScene;

        private readonly static string[] levels = 
        {
            "res://scenes/levels/Tutorial.tscn",
            "res://scenes/levels/morph_tutorial.tscn",
            "res://scenes/levels/easy_level_1.tscn",
            "res://scenes/levels/level_1.tscn",
            "res://scenes/levels/shootorial.tscn",
            "res://scenes/UI/end_game_screen.tscn"
        };
        public static string[] Levels => levels;

        public const string mainMenuScene = "res://scenes/UI/MainMenu2.tscn";

         public const string optionsMenuScene = "res://scenes/UI/OptionsMenu.tscn";
        /// <summary>
        /// The z index layer in which an object at grid Y 0 will be placed
        /// </summary>
        public const int baseLayerOffset = 50;
    }
}