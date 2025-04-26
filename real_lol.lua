--[[
Booting the Library
Loading the Rayfield Library
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

Enabling Configuration Saving
tip
Enable ConfigurationSaving in the CreateWindow function
Choose an appropiate FileName in the CreateWindow function
Choose an unique flag identifier for each supported element you create
Place Rayfield:LoadConfiguration() at the bottom of all your code
Rayfield will now automatically save and load your configuration
Windows in Rayfield
Creating a Window
local Window = Rayfield:CreateWindow({
   Name = "Rayfield Example Window",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})


Creating a Tab
local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image

Lucide Icon Support
You can now also use Lucide Icons with Rayfield. To do so, replace the Image Id above 4483362458 with a string value of an icon name in Lucide Icons.

local Tab = Window:CreateTab("Tab Example", "rewind")

This will set the Tab icon to a rewind symbol from Lucide Icons.

All Lucide Icons Supported Lucide Icons

Credit to Lucide and Latte Softworks

Creating a Section
local Section = Tab:CreateSection("Section Example")

Updating a Section
Section:Set("Section Example")

Creating a Divider
local Divider = Tab:CreateDivider()

Updating a Divider
Divider:Set(false) -- Whether the divider's visibility is to be set to true or false.

Destroying the Interface
Rayfield:Destroy()
Themes
All themes are beautifully designed to both display Rayfield in its' best form and allow more personality within each script, while retaining an easy experience for the developer

Using Themes
To make use of Themes, either run Window.ModifyTheme('ThemeIdentifier'), or add an argument to the CreateWindow function named Theme and set the value (string) to whichever Theme Identifier you'd like to use.

Themes Available
Theme Name - ThemeIdentifier

Default - Default
Amber Glow - AmberGlow
Amethyst - Amethyst
Bloom - Bloom
Dark Blue - DarkBlue
Green - Green
Light - Light
Ocean - Ocean
Serenity - Serenity

Custom Themes
You can also use your own custom theme as of Rayfield 1.53.

To do so, replace the ThemeIdentifier above (in either ModifyTheme or CreateWindow) with a table value of a theme table. An example of a theme table is below.

{
    TextColor = Color3.fromRGB(240, 240, 240),

    Background = Color3.fromRGB(25, 25, 25),
    Topbar = Color3.fromRGB(34, 34, 34),
    Shadow = Color3.fromRGB(20, 20, 20),

    NotificationBackground = Color3.fromRGB(20, 20, 20),
    NotificationActionsBackground = Color3.fromRGB(230, 230, 230),

    TabBackground = Color3.fromRGB(80, 80, 80),
    TabStroke = Color3.fromRGB(85, 85, 85),
    TabBackgroundSelected = Color3.fromRGB(210, 210, 210),
    TabTextColor = Color3.fromRGB(240, 240, 240),
    SelectedTabTextColor = Color3.fromRGB(50, 50, 50),

    ElementBackground = Color3.fromRGB(35, 35, 35),
    ElementBackgroundHover = Color3.fromRGB(40, 40, 40),
    SecondaryElementBackground = Color3.fromRGB(25, 25, 25),
    ElementStroke = Color3.fromRGB(50, 50, 50),
    SecondaryElementStroke = Color3.fromRGB(40, 40, 40),
            
    SliderBackground = Color3.fromRGB(50, 138, 220),
    SliderProgress = Color3.fromRGB(50, 138, 220),
    SliderStroke = Color3.fromRGB(58, 163, 255),

    ToggleBackground = Color3.fromRGB(30, 30, 30),
    ToggleEnabled = Color3.fromRGB(0, 146, 214),
    ToggleDisabled = Color3.fromRGB(100, 100, 100),
    ToggleEnabledStroke = Color3.fromRGB(0, 170, 255),
    ToggleDisabledStroke = Color3.fromRGB(125, 125, 125),
    ToggleEnabledOuterStroke = Color3.fromRGB(100, 100, 100),
    ToggleDisabledOuterStroke = Color3.fromRGB(65, 65, 65),

    DropdownSelected = Color3.fromRGB(40, 40, 40),
    DropdownUnselected = Color3.fromRGB(30, 30, 30),

    InputBackground = Color3.fromRGB(30, 30, 30),
    InputStroke = Color3.fromRGB(65, 65, 65),
    PlaceholderColor = Color3.fromRGB(178, 178, 178)
}
    Adding interactive elements
Notifying the user
Rayfield:Notify({
   Title = "Notification Title",
   Content = "Notification Content",
   Duration = 6.5,
   Image = 4483362458,
})

Lucide Icon Support
You can now also use Lucide Icons with Rayfield. To do so, replace the Image Id above 4483362458 with a string value of an icon name in Lucide Icons.

Rayfield:Notify({
   Title = "Notification Title",
   Content = "Notification Content",
   Duration = 6.5,
   Image = "rewind",
})

This will set the icon to a rewind symbol from Lucide Icons.

All Lucide Icons Supported Lucide Icons

Credit to Lucide and Latte Softworks

Creating a Button
local Button = Tab:CreateButton({
   Name = "Button Example",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

Updating a Button
Button:Set("Button Example")

Creating a Toggle
local Toggle = Tab:CreateToggle({
   Name = "Toggle Example",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})


Updating a Toggle
Toggle:Set(false)

Creating a Color Picker
local ColorPicker = Tab:CreateColorPicker({
    Name = "Color Picker",
    Color = Color3.fromRGB(255,255,255),
    Flag = "ColorPicker1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        -- The function that takes place every time the color picker is moved/changed
        -- The variable (Value) is a Color3fromRGB value based on which color is selected
    end
})


Updating a Color Picker
ColorPicker:Set(Color3.fromRGB(255,255,255)

Creating a Slider
local Slider = Tab:CreateSlider({
   Name = "Slider Example",
   Range = {0, 100},
   Increment = 10,
   Suffix = "Bananas",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the slider changes
   -- The variable (Value) is a number which correlates to the value the slider is currently at
   end,
})


Updating a Slider
Slider:Set(10) -- The new slider integer value

Creating an Adaptive Input (TextBox)
local Input = Tab:CreateInput({
   Name = "Input Example",
   CurrentValue = "",
   PlaceholderText = "Input Placeholder",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
   end,
})

Updating a an Adaptive Input (TextBox)
Input:Set("New Text") -- The new input text value

Creating a Dropdown menu
local Dropdown = Tab:CreateDropdown({
   Name = "Dropdown Example",
   Options = {"Option 1","Option 2"},
   CurrentOption = {"Option 1"},
   MultipleOptions = false,
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Options)
   -- The function that takes place when the selected option is changed
   -- The variable (Options) is a table of strings for the current selected options
   end,
})


Updating a Dropdown
Dropdown:Set({"Option 2"}) -- The new selected options

Resetting a dropdown
Dropdown:Refresh({"Option 1", "Option 2", "Option 3"}) -- The new list of options available.

Check the value of an existing element
To check the current value of an existing element, using the variable, you can do ElementName.CurrentValue, if it's a keybind or dropdown, you will need to use KeybindName.CurrentKeybind or DropdownName.CurrentOption You can also check it via the flags from Rayfield.Flags
    Binding keys in Rayfield
Creating a Keybind
local Keybind = Tab:CreateKeybind({
   Name = "Keybind Example",
   CurrentKeybind = "Q",
   HoldToInteract = false,
   Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Keybind)
   -- The function that takes place when the keybind is pressed
   -- The variable (Keybind) is a boolean for whether the keybind is being held or not (HoldToInteract needs to be true)
   end,
})


Updating a Keybind
Keybind:Set("RightCtrl") -- Keybind (string)
Textual elements in Rayfield
Creating a Label
local Label = Tab:CreateLabel("Label Example", 4483362458, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme


Lucide Icon Support
You can now also use Lucide Icons with Rayfield. To do so, replace the Image Id above 4483362458 with a string value of an icon name in Lucide Icons.

local Label = Tab:CreateLabel("Label Example", "rewind")

This will set the icon to a rewind symbol from Lucide Icons.

All Lucide Icons Supported Lucide Icons

Credit to Lucide and Latte Softworks

Updating a Label
Label:Set("Label Example", 4483362458, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme


Creating a Paragraph
local Paragraph = Tab:CreateParagraph({Title = "Paragraph Example", Content = "Paragraph Example"})

Updating a Paragraph
Paragraph:Set({Title = "Paragraph Example", Content = "Paragraph Example"})
now all existing icons for tabs are: a-arrow-down a-arrow-up a-large-small accessibility activity-square activity air-vent airplay alarm-check alarm-clock-check alarm-clock-minus alarm-clock-off alarm-clock-plus alarm-clock alarm-minus alarm-plus alarm-smoke album alert-circle alert-octagon alert-triangle align-center-horizontal align-center-vertical align-center align-end-horizontal align-end-vertical align-horizontal-distribute-center align-horizontal-distribute-end align-horizontal-distribute-start align-horizontal-justify-center align-horizontal-justify-end align-horizontal-justify-start align-horizontal-space-around align-horizontal-space-between align-justify align-left align-right align-start-horizontal align-start-vertical align-vertical-distribute-center align-vertical-distribute-end align-vertical-distribute-start align-vertical-justify-center align-vertical-justify-end align-vertical-justify-start align-vertical-space-around align-vertical-space-between ambulance ampersand ampersands anchor angry annoyed antenna anvil aperture app-window-mac app-window apple archive-restore archive-x archive area-chart armchair arrow-big-down-dash arrow-big-down arrow-big-left-dash arrow-big-left arrow-big-right-dash arrow-big-right arrow-big-up-dash arrow-big-up arrow-down-0-1 arrow-down-1-0 arrow-down-a-z arrow-down-circle arrow-down-from-line arrow-down-left-from-circle arrow-down-left-square arrow-down-left arrow-down-narrow-wide arrow-down-right-from-circle arrow-down-right-square arrow-down-right arrow-down-square arrow-down-to-dot arrow-down-to-line arrow-down-up arrow-down-wide-narrow arrow-down-z-a arrow-down arrow-left-circle arrow-left-from-line arrow-left-right arrow-left-square arrow-left-to-line arrow-left arrow-right-circle arrow-right-from-line arrow-right-left arrow-right-square arrow-right-to-line arrow-right arrow-up-0-1 arrow-up-1-0 arrow-up-a-z arrow-up-circle arrow-up-down arrow-up-from-dot arrow-up-from-line arrow-up-left-from-circle arrow-up-left-square arrow-up-left arrow-up-narrow-wide arrow-up-right-from-circle arrow-up-right-square arrow-up-right arrow-up-square arrow-up-to-line arrow-up-wide-narrow arrow-up-z-a arrow-up arrows-up-from-line asterisk at-sign atom audio-lines audio-waveform award axe axis-3d baby backpack badge-alert badge-cent badge-check badge-dollar-sign badge-euro badge-help badge-indian-rupee badge-info badge-japanese-yen badge-minus badge-percent badge-plus badge-pound-sterling badge-russian-ruble badge-swiss-franc badge-x badge baggage-claim ban banana banknote bar-chart-2 bar-chart-3 bar-chart-4 bar-chart-big bar-chart-horizontal-big bar-chart-horizontal bar-chart barcode baseline bath battery-charging battery-full battery-low battery-medium battery-warning battery beaker bean-off bean bed-double bed-single bed beef beer-off beer bell-dot bell-electric bell-minus bell-off bell-plus bell-ring bell between-horizontal-end between-horizontal-start between-vertical-end between-vertical-start bike binary biohazard bird bitcoin blend blinds blocks bluetooth-connected bluetooth-off bluetooth-searching bluetooth bold bolt bomb bone book-a book-audio book-check book-copy book-dashed book-down book-headphones book-heart book-image book-key book-lock book-marked book-minus book-open-check book-open-text book-open book-plus book-text book-type book-up-2 book-up book-user book-x book bookmark-check bookmark-minus bookmark-plus bookmark-x bookmark boom-box bot-message-square bot box-select box boxes braces brackets brain-circuit brain-cog brain brick-wall briefcase-business briefcase-medical briefcase bring-to-front brush bug-off bug-play bug building-2 building bus-front bus cable-car cable cake-slice cake calculator calendar-check-2 calendar-check calendar-clock calendar-days calendar-fold calendar-heart calendar-minus-2 calendar-minus calendar-off calendar-plus-2 calendar-plus calendar-range calendar-search calendar-x-2 calendar-x calendar camera-off camera candlestick-chart candy-cane candy-off candy cannabis captions-off captions car-front car-taxi-front car caravan carrot case-lower case-sensitive case-upper cassette-tape cast castle cat cctv check-check check-circle-2 check-circle check-square-2 check-square check chef-hat cherry chevron-down-circle chevron-down-square chevron-down chevron-first chevron-last chevron-left-circle chevron-left-square chevron-left chevron-right-circle chevron-right-square chevron-right chevron-up-circle chevron-up-square chevron-up chevrons-down-up chevrons-down chevrons-left-right chevrons-left chevrons-right-left chevrons-right chevrons-up-down chevrons-up chrome church cigarette-off cigarette circle-alert circle-arrow-down circle-arrow-left circle-arrow-out-down-left circle-arrow-out-down-right circle-arrow-out-up-left circle-arrow-out-up-right circle-arrow-right circle-arrow-up circle-check-big circle-check circle-chevron-down circle-chevron-left circle-chevron-right circle-chevron-up circle-dashed circle-divide circle-dollar-sign circle-dot-dashed circle-dot circle-ellipsis circle-equal circle-fading-plus circle-gauge circle-help circle-minus circle-off circle-parking-off circle-parking circle-pause circle-percent circle-play circle-plus circle-power circle-slash-2 circle-slash circle-stop circle-user-round circle-user circle-x circle circuit-board citrus clapperboard clipboard-check clipboard-copy clipboard-edit clipboard-list clipboard-minus clipboard-paste clipboard-pen-line clipboard-pen clipboard-plus clipboard-signature clipboard-type clipboard-x clipboard clock-1 clock-10 clock-11 clock-12 clock-2 clock-3 clock-4 clock-5 clock-6 clock-7 clock-8 clock-9 clock cloud-cog cloud-download cloud-drizzle cloud-fog cloud-hail cloud-lightning cloud-moon-rain cloud-moon cloud-off cloud-rain-wind cloud-rain cloud-snow cloud-sun-rain cloud-sun cloud-upload cloud cloudy clover club code-2 code-xml code codepen codesandbox coffee cog coins columns-2 columns-3 columns-4 columns combine command compass component computer concierge-bell cone construction contact-2 contact-round contact container contrast cookie cooking-pot copy-check copy-minus copy-plus copy-slash copy-x copy copyleft copyright corner-down-left corner-down-right corner-left-down corner-left-up corner-right-down corner-right-up corner-up-left corner-up-right cpu creative-commons credit-card croissant crop cross crosshair crown cuboid cup-soda currency cylinder database-backup database-zap database delete dessert diameter diamond-percent diamond dice-1 dice-2 dice-3 dice-4 dice-5 dice-6 dices diff disc-2 disc-3 disc-album disc divide-circle divide-square divide dna-off dna dock dog dollar-sign donut door-closed door-open dot download-cloud download drafting-compass drama dribbble drill droplet droplets drum drumstick dumbbell ear-off ear earth-lock earth eclipse egg-fried egg-off egg ellipsis-vertical ellipsis equal-not equal eraser euro expand external-link eye-off eye facebook factory fan fast-forward feather fence ferris-wheel figma file-archive file-audio-2 file-audio file-axis-3d file-badge-2 file-badge file-bar-chart-2 file-bar-chart file-box file-check-2 file-check file-clock file-code-2 file-code file-cog file-diff file-digit file-down file-edit file-heart file-image file-input file-json-2 file-json file-key-2 file-key file-line-chart file-lock-2 file-lock file-minus-2 file-minus file-music file-output file-pen-line file-pen file-pie-chart file-plus-2 file-plus file-question file-scan file-search-2 file-search file-signature file-sliders file-spreadsheet file-stack file-symlink file-terminal file-text file-type-2 file-type file-up file-video-2 file-video file-volume-2 file-volume file-warning file-x-2 file-x file files film filter-x filter fingerprint fire-extinguisher fish-off fish-symbol fish flag-off flag-triangle-left flag-triangle-right flag flame-kindling flame flashlight-off flashlight flask-conical-off flask-conical flask-round flip-horizontal-2 flip-horizontal flip-vertical-2 flip-vertical flower-2 flower focus fold-horizontal fold-vertical folder-archive folder-check folder-clock folder-closed folder-cog folder-dot folder-down folder-edit folder-git-2 folder-git folder-heart folder-input folder-kanban folder-key folder-lock folder-minus folder-open-dot folder-open folder-output folder-pen folder-plus folder-root folder-search-2 folder-search folder-symlink folder-sync folder-tree folder-up folder-x folder folders footprints forklift form-input forward frame framer frown fuel fullscreen function-square gallery-horizontal-end gallery-horizontal gallery-thumbnails gallery-vertical-end gallery-vertical gamepad-2 gamepad gantt-chart-square gantt-chart gauge-circle gauge gavel gem ghost gift git-branch-plus git-branch git-commit-horizontal git-commit-vertical git-compare-arrows git-compare git-fork git-graph git-merge git-pull-request-arrow git-pull-request-closed git-pull-request-create-arrow git-pull-request-create git-pull-request-draft git-pull-request github gitlab glass-water glasses globe-2 globe-lock globe goal grab graduation-cap grape grid-2x2 grid-3x3 grip-horizontal grip-vertical grip group guitar ham hammer hand-coins hand-heart hand-helping hand-metal hand-platter hand handshake hard-drive-download hard-drive-upload hard-drive hard-hat hash haze hdmi-port heading-1 heading-2 heading-3 heading-4 heading-5 heading-6 heading headphones headset heart-crack heart-handshake heart-off heart-pulse heart heater help-circle helping-hand hexagon highlighter history home hop-off hop hospital hotel hourglass ice-cream-2 ice-cream-bowl ice-cream-cone ice-cream image-down image-minus image-off image-plus image-up image images import inbox indent-decrease indent-increase indent indian-rupee infinity info inspection-panel instagram italic iteration-ccw iteration-cw japanese-yen joystick kanban-square-dashed kanban-square kanban key-round key-square key keyboard-music keyboard lamp-ceiling lamp-desk lamp-floor lamp-wall-down lamp-wall-up lamp land-plot landmark languages laptop-2 laptop-minimal laptop lasso-select lasso laugh layers-2 layers-3 layers layout-dashboard layout-grid layout-list layout-panel-left layout-panel-top layout-template layout leaf leafy-green library-big library-square library life-buoy ligature lightbulb-off lightbulb line-chart link-2-off link-2 link linkedin list-checks list-collapse list-end list-filter list-minus list-music list-ordered list-plus list-restart list-start list-todo list-tree list-video list-x list loader-2 loader-circle loader locate-fixed locate-off locate lock-keyhole-open lock-keyhole lock-open lock log-in log-out lollipop luggage m-square magnet mail-check mail-minus mail-open mail-plus mail-question mail-search mail-warning mail-x mail mailbox mails map-pin-off map-pin map-pinned map martini maximize-2 maximize medal megaphone-off megaphone meh memory-stick menu-square menu merge message-circle-code message-circle-dashed message-circle-heart message-circle-more message-circle-off message-circle-plus message-circle-question message-circle-reply message-circle-warning message-circle-x message-circle message-square-code message-square-dashed message-square-diff message-square-dot message-square-heart message-square-more message-square-off message-square-plus message-square-quote message-square-reply message-square-share message-square-text message-square-warning message-square-x message-square messages-square mic-2 mic-off mic-vocal mic microscope microwave milestone milk-off milk minimize-2 minimize minus-circle minus-square minus monitor-check monitor-dot monitor-down monitor-off monitor-pause monitor-play monitor-smartphone monitor-speaker monitor-stop monitor-up monitor-x monitor moon-star moon more-horizontal more-vertical mountain-snow mountain mouse-pointer-2 mouse-pointer-click mouse-pointer-square-dashed mouse-pointer-square mouse-pointer mouse move-3d move-diagonal-2 move-diagonal move-down-left move-down-right move-down move-horizontal move-left move-right move-up-left move-up-right move-up move-vertical move music-2 music-3 music-4 music navigation-2-off navigation-2 navigation-off navigation network newspaper nfc notebook-pen notebook-tabs notebook-text notebook notepad-text-dashed notepad-text nut-off nut octagon-alert octagon-pause octagon-x octagon option orbit outdent package-2 package-check package-minus package-open package-plus package-search package-x package paint-bucket paint-roller paintbrush-2 paintbrush palette palmtree panel-bottom-close panel-bottom-dashed panel-bottom-inactive panel-bottom-open panel-bottom panel-left-close panel-left-dashed panel-left-inactive panel-left-open panel-left panel-right-close panel-right-dashed panel-right-inactive panel-right-open panel-right panel-top-close panel-top-dashed panel-top-inactive panel-top-open panel-top panels-left-bottom panels-right-bottom panels-top-left paperclip parentheses parking-circle-off parking-circle parking-meter parking-square-off parking-square party-popper pause-circle pause-octagon pause paw-print pc-case pen-line pen-square pen-tool pen pencil-line pencil-ruler pencil pentagon percent-circle percent-diamond percent-square percent person-standing phone-call phone-forwarded phone-incoming phone-missed phone-off phone-outgoing phone pi-square pi piano pickaxe picture-in-picture-2 picture-in-picture pie-chart piggy-bank pilcrow-square pilcrow pill pin-off pin pipette pizza plane-landing plane-takeoff plane play-circle play-square play plug-2 plug-zap-2 plug-zap plug plus-circle plus-square plus pocket-knife pocket podcast pointer-off pointer popcorn popsicle pound-sterling power-circle power-off power-square power presentation printer projector proportions puzzle pyramid qr-code quote rabbit radar radiation radical radio-receiver radio-tower radio radius rail-symbol rainbow rat ratio receipt-cent receipt-euro receipt-indian-rupee receipt-japanese-yen receipt-pound-sterling receipt-russian-ruble receipt-swiss-franc receipt-text receipt rectangle-ellipsis rectangle-horizontal rectangle-vertical recycle redo-2 redo-dot redo refresh-ccw-dot refresh-ccw refresh-cw-off refresh-cw refrigerator regex remove-formatting repeat-1 repeat-2 repeat replace-all replace reply-all reply rewind ribbon rocket rocking-chair roller-coaster rotate-3d rotate-ccw-square rotate-ccw rotate-cw-square rotate-cw route-off route router rows-2 rows-3 rows-4 rows rss ruler russian-ruble sailboat salad sandwich satellite-dish satellite save-all save scale-3d scale scaling scan-barcode scan-eye scan-face scan-line scan-search scan-text scan scatter-chart school-2 school scissors-line-dashed scissors-square-dashed-bottom scissors-square scissors screen-share-off screen-share scroll-text scroll search-check search-code search-slash search-x search send-horizontal send-to-back send separator-horizontal separator-vertical server-cog server-crash server-off server settings-2 settings shapes share-2 share sheet shell shield-alert shield-ban shield-check shield-ellipsis shield-half shield-minus shield-off shield-plus shield-question shield-x shield ship-wheel ship shirt shopping-bag shopping-basket shopping-cart shovel shower-head shrink shrub shuffle sigma-square sigma signal-high signal-low signal-medium signal-zero signal signpost-big signpost siren skip-back skip-forward skull slack slash slice sliders-horizontal sliders-vertical sliders smartphone-charging smartphone-nfc smartphone smile-plus smile snail snowflake sofa soup space spade sparkle sparkles speaker speech spell-check-2 spell-check spline split-square-horizontal split-square-vertical split spray-can sprout square-activity square-arrow-down-left square-arrow-down-right square-arrow-down square-arrow-left square-arrow-out-down-left square-arrow-out-down-right square-arrow-out-up-left square-arrow-out-up-right square-arrow-right square-arrow-up-left square-arrow-up-right square-arrow-up square-asterisk square-bottom-dashed-scissors square-check-big square-check square-chevron-down square-chevron-left square-chevron-right square-chevron-up square-code square-dashed-bottom-code square-dashed-bottom square-dashed-kanban square-dashed-mouse-pointer square-divide square-dot square-equal square-function square-gantt-chart square-kanban square-library square-m square-menu square-minus square-mouse-pointer square-parking-off square-parking square-pen square-percent square-pi square-pilcrow square-play square-plus square-power square-radical square-scissors square-sigma square-slash square-split-horizontal square-split-vertical square-stack square-terminal square-user-round square-user square-x square squircle squirrel stamp star-half star-off star step-back step-forward stethoscope sticker sticky-note stop-circle store stretch-horizontal stretch-vertical strikethrough subscript subtitles sun-dim sun-medium sun-moon sun-snow sun sunrise sunset superscript swatch-book swiss-franc switch-camera sword swords syringe table-2 table-cells-merge table-cells-split table-columns-split table-properties table-rows-split table tablet-smartphone tablet tablets tag tags tally-1 tally-2 tally-3 tally-4 tally-5 tangent target telescope tent-tree tent terminal-square terminal test-tube-2 test-tube-diagonal test-tube test-tubes text-cursor-input text-cursor text-quote text-search text-select text theater thermometer-snowflake thermometer-sun thermometer thumbs-down thumbs-up ticket-check ticket-minus ticket-percent ticket-plus ticket-slash ticket-x ticket timer-off timer-reset timer toggle-left toggle-right tornado torus touchpad-off touchpad tower-control toy-brick tractor traffic-cone train-front-tunnel train-front train-track tram-front trash-2 trash tree-deciduous tree-palm tree-pine trees trello trending-down trending-up triangle-alert triangle-right triangle trophy truck turtle tv-2 tv twitch twitter type umbrella-off umbrella underline undo-2 undo-dot undo unfold-horizontal unfold-vertical ungroup university unlink-2 unlink unlock-keyhole unlock unplug upload-cloud upload usb user-2 user-check-2 user-check user-circle-2 user-circle user-cog-2 user-cog user-minus-2 user-minus user-plus-2 user-plus user-round-check user-round-cog user-round-minus user-round-plus user-round-search user-round-x user-round user-search user-square-2 user-square user-x-2 user-x user users-2 users-round users utensils-crossed utensils utility-pole variable vault vegan venetian-mask vibrate-off vibrate video-off video videotape view voicemail volume-1 volume-2 volume-x volume vote wallet-2 wallet-cards wallet-minimal wallet wallpaper wand-2 wand-sparkles wand warehouse washing-machine watch waves waypoints webcam webhook-off webhook weight wheat-off wheat whole-word wifi-off wifi wind wine-off wine workflow worm wrap-text wrench x-circle x-octagon x-square x youtube zap-off zap zoom-in zoom-out
]]
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "CattoWare V1.1.0 | catt0q_kz",
   Icon = 0,
   LoadingTitle = "Catto-Ware V1",
   LoadingSubtitle = "by catt0q",
   Theme = "Amethyst",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "CattoWare"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },
   KeySystem = false,
   KeySettings = {
      Title = "CattoWare Key System",
      Subtitle = "Введите ключ",
      Note = "https://discord.gg/mfM99eM5xy",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"meow_meow"}
   }
})
local function _(args)
    local player = game.Players.LocalPlayer
    local char = player.Character
    local tool
    for i,v in player:GetDescendants() do
        if v.Name == "SyncAPI" then
            tool = v.Parent
        end
    end
    for i,v in game.ReplicatedStorage:GetDescendants() do
        if v.Name == "SyncAPI" then
            tool = v.Parent
        end
    end
    --craaa
    local remote = tool.SyncAPI.ServerEndpoint
    remote:InvokeServer(unpack(args))
end
local function findPlayer(name)
   for _, player in ipairs(game.Players:GetPlayers()) do
      if string.find(player.Name:lower(), name:lower()) or string.find(player.DisplayName:lower(), name:lower()) then
         return player
      end
   end
   return nil
end
local function SetCollision(part,boolean)
    local args = {
        [1] = "SyncCollision",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["CanCollide"] = boolean
            }
        }
    }
    _(args)
end
local function SetAnchor(boolean,part)
    local args = {
        [1] = "SyncAnchor",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["Anchored"] = boolean
            }
        }
    }
    _(args)
end
local function CreatePart(cf,parent)
    local args = {
        [1] = "CreatePart",
        [2] = "Normal",
        [3] = cf,
        [4] = parent
    }
    _(args)
end
local function DestroyPart(part)
    local args = {
        [1] = "Remove",
        [2] = {
            [1] = part
        }
    }
    _(args)
end
local function MovePart(part,cf)
    local args = {
        [1] = "SyncMove",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["CFrame"] = cf
            }
        }
    }
    _(args)
end
local function Resize(part,size,cf)
    local args = {
        [1] = "SyncResize",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["CFrame"] = cf,
                ["Size"] = size
            }
        }
    }
    _(args)
end
local function AddMesh(part)
    local args = {
        [1] = "CreateMeshes",
        [2] = {
            [1] = {
                ["Part"] = part
            }
        }
    }
    _(args)
end

local function SetMesh(part,meshid)
    local args = {
        [1] = "SyncMesh",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["MeshId"] = "rbxassetid://"..meshid
            }
        }
    }
    _(args)
end
local function SetTexture(part, texid)
    local args = {
        [1] = "SyncMesh",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["TextureId"] = "rbxassetid://"..texid
            }
        }
    }
    _(args)
end
local function SetName(part, stringg)
    local args = {
        [1] = "SetName",
        [2] = {
            [1] = part
        },
        [3] = stringg
    }

    _(args)
end
local function MeshResize(part,size)
    local args = {
        [1] = "SyncMesh",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["Scale"] = size
            }
        }
    }
    _(args)
end
local function Weld(part1, part2,lead)
    local args = {
        [1] = "CreateWelds",
        [2] = {
            [1] = part1,
            [2] = part2
        },
        [3] = lead
    }
    _(args)

end
local function SetLocked(part,boolean)
    local args = {
        [1] = "SetLocked",
        [2] = {
            [1] = part
        },
        [3] = boolean
    }
    _(args)
end
local function SetTrans(part,int)
    local args = {
        [1] = "SyncMaterial",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["Transparency"] = int
            }
        }
    }
    _(args)
end
local function CreateSpotlight(part)
    local args = {
        [1] = "CreateLights",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["LightType"] = "SpotLight"
            }
        }
    }
    _(args)
end
local function SyncLighting(part,brightness)
    local args = {
        [1] = "SyncLighting",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["LightType"] = "SpotLight",
                ["Brightness"] = brightness
            }
        }
    }
    _(args)
end
local function Color(part,color)
    local args = {
        [1] = "SyncColor",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["Color"] = color --[[Color3]],
                ["UnionColoring"] = false
            }
        }
    }
    _(args)
end
local function SpawnDecal(part,side)
    local args = {
        [1] = "CreateTextures",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["Face"] = side,
                ["TextureType"] = "Decal"
            }
        }
    }

    _(args)
end
local function AddDecal(part,asset,side)
    local args = {
        [1] = "SyncTexture",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["Face"] = side,
                ["TextureType"] = "Decal",
                ["Texture"] = "rbxassetid://".. asset
            }
        }
    }
    _(args)
end

local function spam(id)
    for i,v in game.workspace:GetDescendants() do
        if v:IsA("BasePart") then
            spawn(function()
                SetLocked(v,false)
                SpawnDecal(v,Enum.NormalId.Front)
                AddDecal(v,id,Enum.NormalId.Front)

                SpawnDecal(v,Enum.NormalId.Back)
                AddDecal(v,id,Enum.NormalId.Back)

                SpawnDecal(v,Enum.NormalId.Right)
                AddDecal(v,id,Enum.NormalId.Right)

                SpawnDecal(v,Enum.NormalId.Left)
                AddDecal(v,id,Enum.NormalId.Left)

                SpawnDecal(v,Enum.NormalId.Bottom)
                AddDecal(v,id,Enum.NormalId.Bottom)

                SpawnDecal(v,Enum.NormalId.Top)
                AddDecal(v,id,Enum.NormalId.Top)
            end)
        end
    end 
end
local Tab = Window:CreateTab("Игроки", "person-standing")
local playernameinput = Tab:CreateInput({
   Name = "Имя игрока",
   CurrentValue = "",
   PlaceholderText = "Имя игрока",
   RemoveTextAfterFocusLost = false,
   Flag = "PlayerName",
   Callback = function(Text)
   end,
})
local viewplayerbutton = Tab:CreateButton({
   Name = "Наблюдать за игроком",
   Callback = function()
      local player = findPlayer(playernameinput.CurrentValue)
      if player then
         game:GetService("Workspace").CurrentCamera.CameraSubject = player.Character.Humanoid
      end
   end,
})
local unviewplayerbutton = Tab:CreateButton({
   Name = "Перестать наблюдать за игроком",
   Callback = function()
      game:GetService("Workspace").CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
   end,
})
local flingplayerbutton = Tab:CreateButton({
   Name = "Кинуть игрока в космос",
   Callback = function()
-- Made by AnthonyIsntHere (got leaked and skids are claiming it as their own LOL)
-- Now supports r15 originalsize rescale!

local Targets = {playernameinput.CurrentValue} -- "All", "Target Name", "arian_was_here"

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local AllBool = false

local GetPlayer = function(Name)
    Name = Name:lower()
    if Name == "all" or Name == "others" then
        AllBool = true
        return
    elseif Name == "random" then
        local GetPlayers = Players:GetPlayers()
        if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
        return GetPlayers[math.random(#GetPlayers)]
    elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
        for _,x in next, Players:GetPlayers() do
            if x ~= Player then
                if x.Name:lower():match("^"..Name) then
                    return x;
                elseif x.DisplayName:lower():match("^"..Name) then
                    return x;
                end
            end
        end
    else
        return
    end
end

local Message = function(_Title, _Text, Time)
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = _Title, Text = _Text, Duration = Time})
end

local SkidFling = function(TargetPlayer)
    local Character = Player.Character
    local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
    local RootPart = Humanoid and Humanoid.RootPart

    local TCharacter = TargetPlayer.Character
    local THumanoid
    local TRootPart
    local THead
    local Accessory
    local Handle

    if TCharacter:FindFirstChildOfClass("Humanoid") then
        THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
    end
    if THumanoid and THumanoid.RootPart then
        TRootPart = THumanoid.RootPart
    end
    if TCharacter:FindFirstChild("Head") then
        THead = TCharacter.Head
    end
    if TCharacter:FindFirstChildOfClass("Accessory") then
        Accessory = TCharacter:FindFirstChildOfClass("Accessory")
    end
    if Accessory and Accessory:FindFirstChild("Handle") then
        Handle = Accessory.Handle
    end

    if Character and Humanoid and RootPart then
        if RootPart.Velocity.Magnitude < 50 then
            getgenv().OldPos = RootPart.CFrame
        end
        if THead then
            workspace.CurrentCamera.CameraSubject = THead
        elseif not THead and Handle then
            workspace.CurrentCamera.CameraSubject = Handle
        elseif THumanoid and TRootPart then
            workspace.CurrentCamera.CameraSubject = THumanoid
        end
        if not TCharacter:FindFirstChildWhichIsA("BasePart") then
            return
        end
        
        local FPos = function(BasePart, Pos, Ang)
            RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
            Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
            RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
            RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
        end
        
        local SFBasePart = function(BasePart)
            local TimeToWait = 2
            local Time = tick()
            local Angle = 0

            repeat
                if RootPart and THumanoid then
                    if BasePart.Velocity.Magnitude < 50 then
                        Angle = Angle + 100

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()
                    else
                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()
                        
                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()
                    end
                else
                    break
                end
            until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or Humanoid.Health <= 0 or tick() > Time + TimeToWait
            Rayfield:Notify({
               Title = "Успешно!",
               Content = "Цель ууууулетела на гаити!",
               Duration = 3,
               Image = "check-circle",
            })
        end
        workspace.FallenPartsDestroyHeight = 0/0
        
        local BV = Instance.new("BodyVelocity")
        BV.Name = "EpixVel"
        BV.Parent = RootPart
        BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
        BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)
        
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        
        if TRootPart and THead then
            if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
                SFBasePart(THead)
            else
                SFBasePart(TRootPart)
            end
        elseif TRootPart and not THead then
            SFBasePart(TRootPart)
        elseif not TRootPart and THead then
            SFBasePart(THead)
        elseif not TRootPart and not THead and Accessory and Handle then
            SFBasePart(Handle)
        else
            return Rayfield:Notify({
               Title = "Ошибка",
               Content = "У цели нету персонажа!",
               Duration = 3,
               Image = "alert-circle",
            })
        end
        
        BV:Destroy()
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        workspace.CurrentCamera.CameraSubject = Humanoid
        
        repeat
            RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
            Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
            Humanoid:ChangeState("GettingUp")
            table.foreach(Character:GetChildren(), function(_, x)
                if x:IsA("BasePart") then
                    x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
                end
            end)
            task.wait()
        until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
        workspace.FallenPartsDestroyHeight = getgenv().FPDH
    else
        return Message("Error Occurred", "Random error", 5)
    end
end

if not Welcome then print() end
getgenv().Welcome = true
if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end

if AllBool then
    for _,x in next, Players:GetPlayers() do
        SkidFling(x)
    end
end

for _,x in next, Targets do
    if GetPlayer(x) and GetPlayer(x) ~= Player then
        if GetPlayer(x).UserId ~= 1 then
            local TPlayer = GetPlayer(x)
            if TPlayer then
                SkidFling(TPlayer)
            end
        else
         Rayfield:Notify({
            Title = "Ошибка",
            Content = "Нельзя кинуть игрока! (Вайтлист)",
            Duration = 3,
            Image = "alert-circle",
         })
        end
    elseif not GetPlayer(x) and not AllBool then
      Rayfield:Notify({
         Title = "Ошибка",
         Content = "Цель не найдена!",
         Duration = 3,
         Image = "alert-circle",
      })
    end
   end
end,
})
local gotoplayerbutton = Tab:CreateButton({
   Name = "Телепортироваться к игроку",
   Callback = function()
      local player = findPlayer(playernameinput.CurrentValue)
      if player then
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
      end
   end,
})
local spookplayerbutton = Tab:CreateButton({
   Name = "Испугнуть игрока",
   Callback = function()
      local player = findPlayer(playernameinput.CurrentValue)
      if player then
         local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5)
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5) * CFrame.Angles(0, math.rad(180), 0)
         task.wait(0.25)
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
      end
   end,
})
local targetInfoParagraph = Tab:CreateParagraph({Title = "Информация о цели", Content = "Нет информации или нет цели"})

local knowTargetInfoButton = Tab:CreateButton({
    Name = "Узнать информацию о цели",
    Callback = function()
        local player = findPlayer(playernameinput.CurrentValue)
        if player then
            local info = string.format("Имя пользователя: %s\nОтображаемое имя: %s\nВозраст: %d\nID пользователя: %d\nКоманда: %s",
                player.Name, player.DisplayName, player.AccountAge, player.UserId, player.Team and player.Team.Name or "Нет команды")
            targetInfoParagraph:Set({Title = "Информация о цели", Content = info})
        else
            targetInfoParagraph:Set({Title = "Информация о цели", Content = "Нет информации или нет цели"})
        end
    end,
})
local SPVKTab = Window:CreateTab("СПВК", "star")
local MiscSection = SPVKTab:CreateSection("Разное")
local deletetreesbutton = SPVKTab:CreateButton
{
    Name = "Удалить деревья",
    Callback = function()
    workspace.Trees:Destroy()
    end,
}
local deletesdangerouspartsbutton = SPVKTab:CreateButton
{
    Name = "Удалить опасные части",
    Callback = function()
    workspace.RagdollParts:Destroy()
    workspace.FireParts:Destroy()
    workspace.KillParts:Destroy()
    workspace.WaterParts:Destroy()
    end,
}
local characterSection = SPVKTab:CreateSection("Персонаж")
local ponosbutton = SPVKTab:CreateButton
{
    Name = "Понос",
    Callback = function()
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        local rootPart = character:FindFirstChild("HumanoidRootPart")
        
        local poisonPart = workspace.PoisonParts.Union
        local oldcf = poisonPart.CFrame
        local oldsz = poisonPart.Size
        
        task.wait(0.5)
        
        -- Function to restore the poison part
        local function restorePoisonPart()
            poisonPart.CFrame = oldcf
            poisonPart.Size = oldsz
        end
        
        -- Stop condition flag
        local stopLoop = false
        
        -- Event listener for ancestry change
        local ancestryConn
        ancestryConn = character.AncestryChanged:Connect(function()
            if not character:IsDescendantOf(game) then
                stopLoop = true
                restorePoisonPart()
                ancestryConn:Disconnect() -- Stop listening to the event
            end
        end)
        
        -- Main loop
        while humanoid and humanoid.Health > 0 and not stopLoop do
            if rootPart then
                poisonPart.Size = Vector3.new(1,1,1)
                poisonPart.CFrame = rootPart.CFrame
                task.wait()
                poisonPart.CFrame = oldcf
            end
        end
        
        -- Restore poison part when exiting loop
        restorePoisonPart()
    end,        
}
local inapproriateponostargetinput = SPVKTab:CreateInput
{
    Name = "Цель",
    PlaceholderText = "Имя игрока",
    Flag = "InappropriatePonosTarget",
    Callback = function()
    end,
}
local inapproriateponostargetstartbutton = SPVKTab:CreateButton
{
    Name = "Насрать в ебало",
    Callback = function()
        local target = findPlayer(inapproriateponostargetinput.CurrentValue)
        if target then
            local Players = game:GetService("Players")
            local player = Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            local rootPart = character:FindFirstChild("HumanoidRootPart")
        
            local poisonPart = workspace.PoisonParts.Union
            local oldcf = poisonPart.CFrame
            local oldsz = poisonPart.Size
        
            task.wait(0.25)
        
            -- Function to restore the part
            local function restorePoisonPart()
                poisonPart.CFrame = oldcf
                poisonPart.Size = oldsz
            end
        
            -- Listen for ancestry changes
            local conn
            conn = character.AncestryChanged:Connect(function()
                if not character:IsDescendantOf(game) then
                    restorePoisonPart()
                    conn:Disconnect() -- Stop the event listener
                    workspace.Gravity = 196.2
                end
            end)
        
            while character and character:IsDescendantOf(game) do
                if rootPart and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
                    rootPart.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0, 2.5, -1.25)
                    poisonPart.Size = Vector3.new(1, 1, 1)
                    poisonPart.CFrame = rootPart.CFrame
                    workspace.Gravity = 0
                end
                task.wait()
            end
        
            -- Restore poison part when loop exits
            restorePoisonPart()
        end
    end        
}
local animstorage = game:GetService("ReplicatedStorage"):FindFirstChild("Anims")
local animations = {}

if animstorage then
    for _, animation in ipairs(animstorage:GetChildren()) do
        table.insert(animations, animation.Name)
    end
end

-- fallback
if #animations == 0 then
    table.insert(animations, "No Animations Found")
end
local selectedAnimation
local AnimationDropdown = SPVKTab:CreateDropdown({
    Name = "Выберите анимацию",
    Options = animations,
    CurrentOption = animations[1],
    MultipleOptions = false,
    Flag = "AnimationDropdown",
    Callback = function(Option)
        if animstorage then
        selectedAnimation = animstorage:FindFirstChild(Option[1])
        end
    end
})

local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
local activeAnimation

local PlayAnimButton = SPVKTab:CreateButton({
    Name = "Воспроизводить",
    Callback = function()
        local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if selectedAnimation and humanoid then
            local animation = Instance.new("Animation")
            animation.AnimationId = selectedAnimation.AnimationId
            activeAnimation = humanoid:LoadAnimation(animation)
            activeAnimation:Play()
        end
    end
})
local StopAnimationsButton = SPVKTab:CreateButton({
    Name = "Остановить анимации",
    Callback = function()
        if activeAnimation then
            activeAnimation:Stop()
        end
    end
})
local tpSection = SPVKTab:CreateSection("Предметы")
local tpEnabled = false
local teleportTimes = {} -- Dictionary to track teleport times

local tppredmetitoggle = SPVKTab:CreateToggle{
    Name = "ТП-Предметы",
    CurrentValue = false,
    Flag = "TPItemsEnabled",
    Callback = function(CurrentValue)
        tpEnabled = CurrentValue

        if tpEnabled then
            local Players = game:GetService("Players")
            local player = Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local rootPart = character:FindFirstChild("HumanoidRootPart")

            task.spawn(function()
                while tpEnabled do
                    for _, folder in ipairs(workspace:GetChildren()) do
                        if folder:IsA("Folder") and folder.Name == "Folder" then
                            for _, part in ipairs(folder:GetChildren()) do
                                if part:IsA("BasePart") and part:FindFirstChild("ItemGlow") then
                                    local partId = part:GetDebugId() -- Unique identifier for the part
                                    
                                    -- Check if it's the first time teleporting
                                    if not teleportTimes[partId] then
                                        teleportTimes[partId] = tick() -- Store start time
                                    end
                                    
                                    -- Stop teleporting if it's been 5 seconds
                                    if tick() - teleportTimes[partId] > 5 then
                                        teleportTimes[partId] = nil -- Remove tracking
                                    else
                                        part.CFrame = rootPart.CFrame
                                        part.CanCollide = false
                                        part.Anchored = true
                                    end
                                end
                            end
                        end
                    end
                    task.wait()
                end
            end)
        else
            teleportTimes = {} -- Reset tracking when disabled
        end
    end
}

local autofarmSection = SPVKTab:CreateSection("Автофарм")
local launchautofarmbutton = SPVKTab:CreateButton
{
    Name = "Запустить автофарм",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/UraJq0tt"))()
    end
}
local characterTAB = Window:CreateTab("Персонаж", "apple")
local propertiesSection = characterTAB:CreateSection("Настройки")
local walkspeedslider = characterTAB:CreateSlider({
    Name = "Скорость ходьбы",
    Range = {16, 500},
    Increment = 1,
    Suffix = "",
    CurrentValue = 16,
    Flag = "WalkSpeed",
    Callback = function(value)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end,
})

local jumppowerslider = characterTAB:CreateSlider({
    Name = "Сила прыжка",
    Range = {50, 500},
    Increment = 1,
    Suffix = "",
    CurrentValue = 50,
    Flag = "JumpPower",
    Callback = function(value)
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
    end,
})

local hipheightslider = characterTAB:CreateSlider({
    Name = "Высота бедра",
    Range = {0, 100},
    Increment = 1,
    Suffix = "",
    CurrentValue = 0,
    Flag = "HipHeight",
    Callback = function(value)
       game.Players.LocalPlayer.Character.Humanoid.HipHeight = value
    end,
})

local gravityslider = characterTAB:CreateSlider({
    Name = "Гравитация",
    Range = {0, 196.2},
    Increment = 0.1,
    Suffix = "",
    CurrentValue = 196.2,
    Flag = "Gravity",
    Callback = function(value)
       game.Workspace.Gravity = value
    end,
})

local fovslider = characterTAB:CreateSlider({
    Name = "Поле зрения (FOV)",
    Range = {30, 120},
    Increment = 1,
    Suffix = "°",
    CurrentValue = 70,
    Flag = "FOV",
    Callback = function(value)
       game.Workspace.CurrentCamera.FieldOfView = value
    end,
})

local zoomslider = characterTAB:CreateSlider({
    Name = "Макс. дистанция камеры",
    Range = {24, 500},
    Increment = 1,
    Suffix = "",
    CurrentValue = 24,
    Flag = "ZoomDistance",
    Callback = function(value)
       game.Players.LocalPlayer.CameraMaxZoomDistance = value
    end,
})

local resettodefaultpropertiesbutton = characterTAB:CreateButton({
    Name = "Сбросить настройки",
    Callback = function()
       walkspeedslider:Set(16)
       jumppowerslider:Set(50)
       hipheightslider:Set(0)
       gravityslider:Set(196.2)
       fovslider:Set(70)
       zoomslider:Set(24)
    end,
})
local Decals = {
    ["qcat"] = "99115476274688",
    ["qcat2"] = "83335684363297",
    ["habibi cat"] = "8193774997",
    ["gatito"] = "8073107221",
    ["cursed box"] = "1847902738",
    ["banana"] = "9605261852",
    ["mclovin"] = "11495513579",
    ["creepy face"] = "9657742673",
    ["pal face"] = "9657748450",
    ["troll"] = "7120897383",
    ["shocked"] = "11818627057",
    ["cool cat"] = "15172898181",
    ["niko"] = "89695643575389",
    ["niko2"] = "76940159133006",
    ["niko3"] = "95321725546046",
    ["niko4"] = "97218663906569",
}
local fextab = Window:CreateTab("F3X", "building")
local fexsection = fextab:CreateSection("Replication")

local selectedDecal = "habibi cat"
local customid = "rbxassetid://0"
local selected

-- Build Options automatically
local options = {}
for name, _ in pairs(Decals) do
    table.insert(options, name)
end
local function Unanchorall()
    for i,v in game.Workspace:GetDescendants() do
        spawn(function()
            SetLocked(v,false)
            SetAnchor(false,v)
        end)
    end
end
local function Thomas(vt)
    local char = vt.Character
    SetAnchor(true,char.HumanoidRootPart)
    CreatePart(char.HumanoidRootPart.CFrame,char)
    SetCollision(char.Part,false)
    SetLocked(char.Part,false)
    CreateSpotlight(char.Part)
    SyncLighting(char.Part,100)
    SetLocked(char.HumanoidRootPart,false)
    Weld(char.Part,char.HumanoidRootPart,char.Part)
    SetAnchor(false,char.Part)
    AddMesh(char.Part)
    MeshResize(char.Part,Vector3.new(3,3,3))
    SetMesh(char.Part,"4340968808")
    SetTexture(char.Part,"4340968918")
    SetAnchor(false,char.HumanoidRootPart)
    char.Humanoid.WalkSpeed = 100
    char.HumanoidRootPart.Touched:connect(function(obj)
        if obj.Parent:FindFirstChild("Humanoid") then
            SetLocked(obj.Parent.Head,false)
            DestroyPart(obj.Parent.Head)
        end
    end)
    game:GetService("RunService").RenderStepped:Connect(function()
        for i,v in char:GetDescendants() do
            if v:IsA("BasePart") then
                char.Humanoid.WalkSpeed = 100
                v.CanCollide = false
            end
        end
    end)
end
local function Thomasyourself(player)
    local plr = game.Players.LocalPlayer
    local char = plr.Character
    SetAnchor(true,char.HumanoidRootPart)
    CreatePart(char.HumanoidRootPart.CFrame,char)
    SetCollision(char.Part,false)
    SetLocked(char.Part,false)
    CreateSpotlight(char.Part)
    SyncLighting(char.Part,100)
    SetLocked(char.HumanoidRootPart,false)
    Weld(char.Part,char.HumanoidRootPart,char.Part)
    SetAnchor(false,char.Part)
    AddMesh(char.Part)
    MeshResize(char.Part,Vector3.new(3,3,3))
    SetMesh(char.Part,"4340968808")
    SetTexture(char.Part,"4340968918")
    SetAnchor(false,char.HumanoidRootPart)
    char.Humanoid.WalkSpeed = 100
    char.HumanoidRootPart.Touched:connect(function(obj)
        if obj.Parent:FindFirstChild("Humanoid") then
            SetLocked(obj.Parent.Head,false)
            DestroyPart(obj.Parent.Head)
        end
    end)
    game:GetService("RunService").RenderStepped:Connect(function()
        for i,v in char:GetDescendants() do
            if v:IsA("BasePart") then
                char.Humanoid.WalkSpeed = 100
                v.CanCollide = false
            end
        end
    end)
end
local function Sky(char, id)
    local e = char.HumanoidRootPart.CFrame.x
    local f = char.HumanoidRootPart.CFrame.y
    local g = char.HumanoidRootPart.CFrame.z
    CreatePart(CFrame.new(math.floor(e),math.floor(f),math.floor(g)) + Vector3.new(0,6,0),workspace)
    for i,v in game.Workspace:GetDescendants() do
        if v:IsA("BasePart") and v.CFrame.x == math.floor(e) and v.CFrame.z == math.floor(g) then
            --spawn(function()
            SetName(v,"Sky")
            AddMesh(v)
            --end)
            --spawn(function()
            SetMesh(v,"8006679977")
            SetTexture(v,id)
            --end)
            MeshResize(v,Vector3.new(50,50,50))
            SetLocked(v,true)
        end
    end
end
local function AddFire(part)
    local args = {
        [1] = "CreateDecorations",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["DecorationType"] = "Fire"
            }
        }
    }
    _(args)
end
local function Fire(player)
    for i,v in player.Character:GetDescendants() do
        if v:IsA("BasePart") then
            AddFire(v)
        end
    end
    DestroyPart(player.Character.Head)
end
local function fireall()
for i,v in game.Players:GetPlayers() do
    spawn(function()
        pcall(function()
            Fire(v)
        end)
    end)
end
end
local function SpawnBasePlate()
local char = game.Players.LocalPlayer.Character
local hrpx = math.floor(char.HumanoidRootPart.CFrame.x)
local hrpz = math.floor(char.HumanoidRootPart.CFrame.z)
local hrpy = math.floor(char.HumanoidRootPart.CFrame.y)
    CreatePart(CFrame.new(hrpx,hrpy-20,hrpz),workspace,"Spawn")
    for i,v in game.Workspace:GetChildren() do
        if v:IsA("BasePart") and v.CFrame.y == hrpy - 20 and v.CFrame.x == hrpx then
            spawn(function()
                Resize(v,Vector3.new(1000,2,1000),CFrame.new(hrpx,hrpy-20,hrpz))
                Material(v,Enum.Material.Grass)
            Color(v,Color3.fromRGB(25,100,25))
                while wait(1) do
                    pcall(function()SetLocked(v,true)end)
                end
            end)
        end
    end
end
local function KillAll()
    for i,v in game.Players:GetPlayers() do
        spawn(function()
            SetLocked(v.Character.Head,false)
            DestroyPart(v.Character.Head)
        end)
    end
end
local function killtarget(player)
    local target = findPlayer(player)
    if target then
        local char = target.Character
        SetLocked(char.Head,false)
        DestroyPart(char.Head)
    end
end
local fextarget = nil
local decalselectiondropdown = fextab:CreateDropdown({
    Name = "Image",
    Options = options,
    CurrentOption = {"habibi cat"},
    MultipleOptions = false,
    Flag = "DecalSelection",
    Callback = function(Option)
        local chosen = typeof(Option) == "table" and Option[1] or Option -- fix for both
        if Decals[chosen] then
            selected = Decals[chosen]
            print(selected)
        else
            selected = nil
            warn("Selected option not found in Decals table!")
        end
    end,
})    
local decalselectioninput = fextab:CreateInput({
    Name = "Custom ID",
    PlaceholderText = "custom decal",
    RemoveTextAfterFocusLost = false,
    Flag = "DecalInput",
    Callback = function(Text)
        customid = Text
    end,
})
local decalspam = fextab:CreateButton({
    Name = "Decal Spam",
    Callback = function()
		--rgrg
		local player = game.Players.LocalPlayer
		local char = player.Character
		local tool
		for i,v in player:GetDescendants() do
			if v.Name == "SyncAPI" then
				tool = v.Parent
			end
		end
		for i,v in game.ReplicatedStorage:GetDescendants() do
			if v.Name == "SyncAPI" then
				tool = v.Parent
			end
		end
		--craaa
		local remote = tool.SyncAPI.ServerEndpoint
        local function _(args)
			remote:InvokeServer(unpack(args))
		end
		spam(selected)
    end,
})
local cdecalspam = fextab:CreateButton({
    Name = "Custom Decal Spam",
    Callback = function()
		--rgrg
		local player = game.Players.LocalPlayer
		local char = player.Character
		local tool
		for i,v in player:GetDescendants() do
			if v.Name == "SyncAPI" then
				tool = v.Parent
			end
		end
		for i,v in game.ReplicatedStorage:GetDescendants() do
			if v.Name == "SyncAPI" then
				tool = v.Parent
			end
		end
		--craaa
		local remote = tool.SyncAPI.ServerEndpoint
		local function _(args)
			remote:InvokeServer(unpack(args))
		end
		spam(customid)
    end,
})
local skybutton = fextab:CreateButton({
    Name = "Sky",
    Callback = function()
        local player = game.Players.LocalPlayer
        local char = player.Character
        local tool
        for i,v in player:GetDescendants() do
            if v.Name == "SyncAPI" then
                tool = v.Parent
            end
        end
        for i,v in game.ReplicatedStorage:GetDescendants() do
            if v.Name == "SyncAPI" then
                tool = v.Parent
            end
        end
        --craaa
        local remote = tool.SyncAPI.ServerEndpoint
        local function _(args)
            remote:InvokeServer(unpack(args))
        end
        Sky(char, selected)
    end,
})
local cskybutton = fextab:CreateButton({
    Name = "Custom Sky",
    Callback = function()
        local player = game.Players.LocalPlayer
        local char = player.Character
        local tool
        for i,v in player:GetDescendants() do
            if v.Name == "SyncAPI" then
                tool = v.Parent
            end
        end
        for i,v in game.ReplicatedStorage:GetDescendants() do
            if v.Name == "SyncAPI" then
                tool = v.Parent
            end
        end
        --craaa
        local remote = tool.SyncAPI.ServerEndpoint
        local function _(args)
            remote:InvokeServer(unpack(args))
        end
        Sky(char,customid)
    end,
})
local baseplate = fextab:CreateButton({
    Name = "Baseplate",
    Callback = function()
        local player = game.Players.LocalPlayer
        local char = player.Character
        local tool
        for i,v in player:GetDescendants() do
            if v.Name == "SyncAPI" then
                tool = v.Parent
            end
        end
        for i,v in game.ReplicatedStorage:GetDescendants() do
            if v.Name == "SyncAPI" then
                tool = v.Parent
            end
        end
        --craaa
        local remote = tool.SyncAPI.ServerEndpoint
        local function _(args)
            remote:InvokeServer(unpack(args))
        end
        SpawnBasePlate()
    end,
})
local fireall = fextab:CreateButton({
    Name = "Fire All",
    Callback = function()
        local player = game.Players.LocalPlayer
        local char = player.Character
        local tool
        for i,v in player:GetDescendants() do
            if v.Name == "SyncAPI" then
                tool = v.Parent
            end
        end
        for i,v in game.ReplicatedStorage:GetDescendants() do
            if v.Name == "SyncAPI" then
                tool = v.Parent
            end
        end
        --craaa
        local remote = tool.SyncAPI.ServerEndpoint
        local function _(args)
            remote:InvokeServer(unpack(args))
        end
fireall()
    end,
})
local killallbutton = fextab:CreateButton({
    Name = "Kill All",
    Callback = function()
        local player = game.Players.LocalPlayer
        local char = player.Character
        local tool
        for i,v in player:GetDescendants() do
            if v.Name == "SyncAPI" then
                tool = v.Parent
            end
        end
        for i,v in game.ReplicatedStorage:GetDescendants() do
            if v.Name == "SyncAPI" then
                tool = v.Parent
            end
        end
        --craaa
        local remote = tool.SyncAPI.ServerEndpoint
        local function _(args)
            remote:InvokeServer(unpack(args))
        end
        KillAll()
    end,
})
local unanchorworkspace = fextab:CreateButton({
    Name = "Unanchor Workspace",
    Callback = function()
        local player = game.Players.LocalPlayer
        local char = player.Character
        local tool
        for i,v in player:GetDescendants() do
            if v.Name == "SyncAPI" then
                tool = v.Parent
            end
        end
        for i,v in game.ReplicatedStorage:GetDescendants() do
            if v.Name == "SyncAPI" then
                tool = v.Parent
            end
        end
        --craaa
        local remote = tool.SyncAPI.ServerEndpoint
        local function _(args)
            remote:InvokeServer(unpack(args))
        end
        Unanchorall()
    end,
})
local targetinput = fextab:CreateInput({
    Name = "Target",
    PlaceholderText = "Имя игрока",
    RemoveTextAfterFocusLost = false,
    Flag = "TargetInput",
    Callback = function(Text)
        fextarget = Text
    end,
})
local thomastargetbutton = fextab:CreateButton({
    Name = "Thomas target",
    Callback = function()
        local player = game.Players.LocalPlayer
        local char = player.Character
        local tool
        for i,v in player:GetDescendants() do
            if v.Name == "SyncAPI" then
                tool = v.Parent
            end
        end
        for i,v in game.ReplicatedStorage:GetDescendants() do
            if v.Name == "SyncAPI" then
                tool = v.Parent
            end
        end
        --craaa
        local remote = tool.SyncAPI.ServerEndpoint
        local function _(args)
            remote:InvokeServer(unpack(args))
        end
        local tplayer = findPlayer(fextarget)
        if tplayer then
            Thomas(tplayer)
        end
    end,
})
local firetargetbutton = fextab:CreateButton({
    Name = "Fire target",
    Callback = function()
        local player = game.Players.LocalPlayer
        local char = player.Character
        local tool
        for i,v in player:GetDescendants() do
            if v.Name == "SyncAPI" then
                tool = v.Parent
            end
        end
        for i,v in game.ReplicatedStorage:GetDescendants() do
            if v.Name == "SyncAPI" then
                tool = v.Parent
            end
        end
        --craaa
        local remote = tool.SyncAPI.ServerEndpoint
        local function _(args)
            remote:InvokeServer(unpack(args))
        end
        local tplayer = findPlayer(fextarget)
        if tplayer then
            Fire(tplayer)
        end
    end,
})
local thomasyourselfbutton = fextab:CreateButton({
    Name = "Thomas Me",
    Callback = function()
        Thomasyourself()
    end,
})
local killtargetbutton = fextab:CreateButton({
    Name = "Kill target",
    Callback = function()
        local player = game.Players.LocalPlayer
        local char = player.Character
        local tool
        for i,v in player:GetDescendants() do
            if v.Name == "SyncAPI" then
                tool = v.Parent
            end
        end
        for i,v in game.ReplicatedStorage:GetDescendants() do
            if v.Name == "SyncAPI" then
                tool = v.Parent
            end
        end
        --craaa
        local remote = tool.SyncAPI.ServerEndpoint
        local function _(args)
            remote:InvokeServer(unpack(args))
        end
        local tplayer = findPlayer(fextarget)
        if tplayer then
            killtarget(tplayer)
        end
    end,
})
local misctab = Window:CreateTab("Другое", "settings")
local miscsection = misctab:CreateSection("Другие скрипты")
local infiniteyieldbutton = misctab:CreateButton({
    Name = "FE Infinite Yield",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end,
})
local namelessadminbutton = misctab:CreateButton({
    Name = "FE Nameless Admin",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/refs/heads/main/Source"))()
    end,
})
local fejasonspybutton = misctab:CreateButton({
    Name = "FE Jason Spy",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/q6kUz9vv"))()("T.me/AvtorScripts")
    end,
})
